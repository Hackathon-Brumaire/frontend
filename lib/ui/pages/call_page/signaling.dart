import 'dart:convert';
import 'dart:async';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'random_string.dart';

import 'utils/device_info.dart'
    if (dart.library.js) 'utils/device_info_web.dart';
import 'utils/websocket.dart' if (dart.library.js) 'utils/websocket_web.dart';
import 'utils/turn.dart' if (dart.library.js) 'utils/turn_web.dart';

enum SignalingState {
  connectionOpen,
  connectionClosed,
  connectionError,
}

enum CallState {
  callStateNew,
  callStateRinging,
  callStateInvite,
  callStateConnected,
  callStateBye,
}

class Session {
  Session({required this.sid, required this.pid});
  String pid;
  String sid;
  RTCPeerConnection? pc;
  List<RTCIceCandidate> remoteCandidates = [];
}

class Signaling {
  Signaling(this._host);

  final JsonEncoder _encoder = const JsonEncoder();
  final JsonDecoder _decoder = const JsonDecoder();
  final String _selfId = randomNumeric(6);
  SimpleWebSocket? _socket;
  var _host;
  var _port = 8086;
  var _turnCredential;
  Map<String, Session> _sessions = {};
  MediaStream? _localStream;
  List<MediaStream> _remoteStreams = <MediaStream>[];

  Function(SignalingState state)? onSignalingStateChange;
  Function(Session session, CallState state)? onCallStateChange;
  Function(MediaStream stream)? onLocalStream;
  Function(Session session, MediaStream stream)? onAddRemoteStream;
  Function(Session session, MediaStream stream)? onRemoveRemoteStream;
  Function(dynamic event)? onPeersUpdate;
  Function(Session session, RTCDataChannel dc, RTCDataChannelMessage data)?
      onDataChannelMessage;
  Function(Session session, RTCDataChannel dc)? onDataChannel;

  Map<String, dynamic> _iceServers = {
    'iceServers': [
      // {'url': 'stun:stun.l.google.com:19302'},
      {
        'url': 'turn:rtc.nospy.fr:19302',
        // 'username': 'change_to_real_user',
        'credential': 'change_to_real_secret'
      },
      /*
       * turn server configuration example.
      {
        'url': 'turn:123.45.67.89:3478',
        'username': 'change_to_real_user',
        'credential': 'change_to_real_secret'
      },
      */
    ]
  };

  final Map<String, dynamic> _config = {
    'mandatory': {},
    'optional': [
      {'DtlsSrtpKeyAgreement': true},
    ]
  };

  close() async {
    await _cleanSessions();
    _socket?.close();
  }

  void switchCamera() {
    if (_localStream != null) {
      Helper.switchCamera(_localStream!.getVideoTracks()[0]);
    }
  }

  void muteMic() {
    if (_localStream != null) {
      bool enabled = _localStream!.getAudioTracks()[0].enabled;
      _localStream!.getAudioTracks()[0].enabled = !enabled;
    }
  }

  Future<void> invite(String peerId, String media) async {
    var sessionId = '$_selfId-$peerId';
    Session session = await _createSession(
      null,
      peerId: peerId,
      sessionId: sessionId,
      media: media,
    );
    _sessions[sessionId] = session;
    _createOffer(session, media);
    onCallStateChange?.call(session, CallState.callStateNew);
  }

  void bye(String sessionId) {
    _send('bye', {
      'session_id': sessionId,
      'from': _selfId,
    });
    var sess = _sessions[sessionId];
    if (sess != null) {
      _closeSession(sess);
    }
  }

  void onMessage(message) async {
    Map<String, dynamic> mapData = message;
    var data = mapData['data'];
    print('type: ${mapData['type']} data: $data');

    switch (mapData['type']) {
      case 'peers':
        {
          List<dynamic> peers = data;
          if (onPeersUpdate != null) {
            Map<String, dynamic> event = {};
            event['self'] = _selfId;
            event['peers'] = peers;
            onPeersUpdate?.call(event);
          }
        }
        break;
      case 'offer':
        var peerId = data['from'];
        var description = data['description'];
        var media = data['media'];
        var sessionId = data['session_id'];
        var session = _sessions[sessionId];
        var newSession = await _createSession(
          session,
          peerId: peerId,
          sessionId: sessionId,
          media: media,
        );
        _sessions[sessionId] = newSession;
        await newSession.pc?.setRemoteDescription(
            RTCSessionDescription(description['sdp'], description['type']));
        await _createAnswer(newSession, media);
        if (newSession.remoteCandidates.isNotEmpty) {
          newSession.remoteCandidates.forEach((candidate) async {
            await newSession.pc?.addCandidate(candidate);
          });
          newSession.remoteCandidates.clear();
        }
        onCallStateChange?.call(newSession, CallState.callStateNew);

        break;
      case 'answer':
        var description = data['description'];
        var sessionId = data['session_id'];
        var session = _sessions[sessionId];
        session?.pc?.setRemoteDescription(
          RTCSessionDescription(description['sdp'], description['type']),
        );
        onCallStateChange?.call(session!, CallState.callStateNew);
        break;
      case 'candidate':
        var peerId = data['from'];
        var candidateMap = data['candidate'];
        var sessionId = data['session_id'];
        var session = _sessions[sessionId];
        RTCIceCandidate candidate = RTCIceCandidate(
          candidateMap['candidate'],
          candidateMap['sdpMid'],
          candidateMap['sdpMLineIndex'],
        );

        if (session != null) {
          if (session.pc != null) {
            await session.pc?.addCandidate(candidate);
          } else {
            session.remoteCandidates.add(candidate);
          }
        } else {
          _sessions[sessionId] = Session(pid: peerId, sid: sessionId)
            ..remoteCandidates.add(candidate);
        }

        break;
      case 'leave':
        var peerId = data as String;
        _closeSessionByPeerId(peerId);

        break;
      case 'bye':
        var sessionId = data['session_id'];
        print('bye: ' + sessionId);
        var session = _sessions.remove(sessionId);
        if (session != null) {
          onCallStateChange?.call(session, CallState.callStateBye);
          _closeSession(session);
        }

        break;
      case 'keepalive':
        print('keepalive response!');
        break;
      default:
        print(mapData['type']);
        break;
    }
  }

  Future<void> connect() async {
    var url = 'https://$_host:$_port/ws';
    _socket = SimpleWebSocket(url);

    print('connect to $url');

    if (_turnCredential == null) {
      try {
        _turnCredential = await getTurnCredential(_host, _port);
        /*{
            "username": "1584195784:mbzrxpgjys",
            "password": "isyl6FF6nqMTB9/ig5MrMRUXqZg",
            "ttl": 86400,
            "uris": ["turn:127.0.0.1:19302?transport=udp"]
          }
        */
        _iceServers = {
          'iceServers': [
            {
              'urls': _turnCredential['uris'][0],
              'username': _turnCredential['username'],
              'credential': _turnCredential['password']
            },
          ]
        };
      } catch (e) {
        // Fail to connect with TURN sever
      }
    }

    _socket?.onOpen = () {
      print('onOpen');
      onSignalingStateChange?.call(SignalingState.connectionOpen);
      _send('new', {
        'name': DeviceInfo.label,
        'id': _selfId,
        'user_agent': DeviceInfo.userAgent
      });
    };

    _socket?.onMessage = (message) {
      print('Received data: ' + message);
      onMessage(_decoder.convert(message));
    };

    _socket?.onClose = (int code, String reason) {
      print('Closed by server [$code => $reason]!');
      onSignalingStateChange?.call(SignalingState.connectionClosed);
    };

    await _socket?.connect();
  }

  Future<MediaStream> createStream(String media) async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'mandatory': {
          'minWidth': '640',
          'minHeight': '480',
          'minFrameRate': '30',
        },
        'facingMode': 'user',
        'optional': [],
      }
    };

    MediaStream stream =
        await navigator.mediaDevices.getUserMedia(mediaConstraints);
    onLocalStream?.call(stream);
    return stream;
  }

  Future<Session> _createSession(
    Session? session, {
    required String peerId,
    required String sessionId,
    required String media,
  }) async {
    var newSession = session ?? Session(sid: sessionId, pid: peerId);

    _localStream = await createStream(media);
    RTCPeerConnection pc =
        await createPeerConnection({..._iceServers}, _config);
    pc.onTrack = (event) {
      if (event.track.kind == 'video') {
        onAddRemoteStream?.call(newSession, event.streams[0]);
      }
    };
    _localStream!.getTracks().forEach((track) {
      pc.addTrack(track, _localStream!);
    });
    pc.onIceCandidate = (candidate) async {
      await Future.delayed(
        const Duration(seconds: 1),
        () => _send(
          'candidate',
          {
            'to': peerId,
            'from': _selfId,
            'candidate': {
              'sdpMLineIndex': candidate.sdpMLineIndex,
              'sdpMid': candidate.sdpMid,
              'candidate': candidate.candidate,
            },
            'session_id': sessionId,
          },
        ),
      );
    };

    pc.onIceConnectionState = (state) {};

    pc.onRemoveStream = (stream) {
      onRemoveRemoteStream?.call(newSession, stream);
      _remoteStreams.removeWhere((it) {
        return (it.id == stream.id);
      });
    };

    newSession.pc = pc;
    return newSession;
  }

  Future<void> _createOffer(Session session, String media) async {
    try {
      RTCSessionDescription s = await session.pc!.createOffer({});
      await session.pc!.setLocalDescription(s);
      _send('offer', {
        'to': session.pid,
        'from': _selfId,
        'description': {'sdp': s.sdp, 'type': s.type},
        'session_id': session.sid,
        'media': media,
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _createAnswer(Session session, String media) async {
    try {
      RTCSessionDescription s = await session.pc!.createAnswer({});
      await session.pc!.setLocalDescription(s);
      _send('answer', {
        'to': session.pid,
        'from': _selfId,
        'description': {'sdp': s.sdp, 'type': s.type},
        'session_id': session.sid,
      });
    } catch (e) {
      print(e.toString());
    }
  }

  _send(event, data) {
    var request = {};
    request["type"] = event;
    request["data"] = data;
    _socket?.send(_encoder.convert(request));
  }

  Future<void> _cleanSessions() async {
    if (_localStream != null) {
      _localStream!.getTracks().forEach((element) async {
        await element.stop();
      });
      await _localStream!.dispose();
      _localStream = null;
    }
    _sessions.forEach((key, sess) async {
      await sess.pc?.close();
    });
    _sessions.clear();
  }

  void _closeSessionByPeerId(String peerId) {
    Session? session;
    _sessions.removeWhere((String key, Session sess) {
      var ids = key.split('-');
      session = sess;
      return peerId == ids[0] || peerId == ids[1];
    });
    if (session != null) {
      _closeSession(session!);
      onCallStateChange?.call(session!, CallState.callStateBye);
    }
  }

  Future<void> _closeSession(Session session) async {
    _localStream?.getTracks().forEach((element) async {
      await element.stop();
    });
    await _localStream?.dispose();
    _localStream = null;

    await session.pc?.close();
  }
}

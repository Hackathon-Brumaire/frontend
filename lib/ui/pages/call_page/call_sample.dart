import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'dart:core';
import 'signaling.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class CallSample extends StatefulWidget {
  static String tag = 'call_sample';
  final String host;
  final String suffix;
  const CallSample({Key? key, required this.host, required this.suffix})
      : super(key: key);

  @override
  _CallSampleState createState() => _CallSampleState();
}

class _CallSampleState extends State<CallSample> {
  Signaling? _signaling;
  List<dynamic> _peers = [];
  String? _selfId;
  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();
  bool _inCalling = false;
  bool _isMute = false;
  Session? _session;

  @override
  initState() {
    super.initState();
    initRenderers();
    _connect();
  }

  initRenderers() async {
    await _localRenderer.initialize();
    await _remoteRenderer.initialize();
  }

  @override
  deactivate() {
    super.deactivate();
    _signaling?.close();
    _localRenderer.dispose();
    _remoteRenderer.dispose();
  }

  void _connect() async {
    _signaling ??= Signaling(widget.host)..connect();
    var loggerNoStack = Logger(
      printer: PrettyPrinter(methodCount: 0),
    );
    loggerNoStack.w('call sample connect');
    _signaling?.onSignalingStateChange = (SignalingState state) {
      switch (state) {
        case SignalingState.connectionClosed:
          break;
        case SignalingState.connectionError:
          break;
        case SignalingState.connectionOpen:
          break;
      }
    };

    _signaling?.onCallStateChange = (Session session, CallState state) {
      var loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0),
      );
      loggerNoStack.w('onCallStateChange $state');
      switch (state) {
        case CallState.callStateNew:
          setState(() {
            _session = session;
            _inCalling = true;
          });
          break;
        case CallState.callStateBye:
          setState(() {
            _localRenderer.srcObject = null;
            _remoteRenderer.srcObject = null;
            _inCalling = false;
            _session = null;
          });
          break;
        case CallState.callStateInvite:
          loggerNoStack.w('callStateInvite');
          break;
        case CallState.callStateConnected:
          setState(() {
            _session = session;
            _inCalling = true;
          });
          break;
        case CallState.callStateRinging:
      }
    };

    _signaling?.onPeersUpdate = ((event) {
      var loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0),
      );
      loggerNoStack.w('EVENT $event');
      setState(() {
        _selfId = event['self'];
        _peers = event['peers'];
      });
    });

    _signaling?.onLocalStream = ((stream) {
      _localRenderer.srcObject = stream;
    });

    _signaling?.onAddRemoteStream = ((_, stream) {
      _remoteRenderer.srcObject = stream;
    });

    _signaling?.onRemoveRemoteStream = ((_, stream) {
      _remoteRenderer.srcObject = null;
    });
  }

  _invitePeer(BuildContext context, String peerId) async {
    if (_signaling != null && peerId != _selfId) {
      _signaling?.invite(peerId, 'video');
    }
  }

  _hangUp() {
    if (_session != null) {
      _signaling?.bye(_session!.sid);
    }
  }

  _switchCamera() {
    _signaling?.switchCamera();
  }

  _muteMic() {
    _signaling?.muteMic();
    _isMute = true;
  }

  _buildRow(context, peer) {
    var loggerNoStack = Logger(
      printer: PrettyPrinter(methodCount: 0),
    );
    loggerNoStack.w('SUFFIX ${widget.suffix}');
    var self = (peer['id'] == _selfId);
    return ListBody(children: <Widget>[
      if (!self)
        ListTile(
          title: Text('ID du ${widget.suffix}: ${peer['id']} '),
          onTap: null,
          trailing: SizedBox(
            width: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(self ? Icons.close : Icons.videocam,
                      color: self ? Colors.grey : Colors.black),
                  onPressed: () => _invitePeer(context, peer['id']),
                  tooltip: 'Video calling',
                ),
              ],
            ),
          ),
        ),
      const Divider()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((_selfId != null ? ' Mon Id : $_selfId' : '')),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
            tooltip: 'setup',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _inCalling
          ? SizedBox(
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    child: const Icon(
                      Icons.switch_camera,
                      color: Colors.black,
                    ),
                    onPressed: _switchCamera,
                  ),
                  FloatingActionButton(
                    onPressed: _hangUp,
                    tooltip: 'Hangup',
                    child: const Icon(Icons.call_end),
                    backgroundColor: Colors.redAccent,
                  ),
                  FloatingActionButton(
                    child: Icon(
                      _isMute ? Icons.mic_off : Icons.mic,
                      color: Colors.black,
                    ),
                    onPressed: _muteMic,
                  )
                ],
              ),
            )
          : null,
      body: _inCalling
          ? OrientationBuilder(
              builder: (context, orientation) {
                return Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0.0,
                      right: 0.0,
                      top: 0.0,
                      bottom: 0.0,
                      child: Container(
                        margin: const EdgeInsets.all(0.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: RTCVideoView(_remoteRenderer),
                        decoration: const BoxDecoration(color: Colors.black54),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 20.0,
                      child: Container(
                        width:
                            orientation == Orientation.portrait ? 90.0 : 120.0,
                        height:
                            orientation == Orientation.portrait ? 120.0 : 90.0,
                        child: RTCVideoView(_localRenderer, mirror: true),
                        decoration: const BoxDecoration(color: Colors.black54),
                      ),
                    ),
                  ],
                );
              },
            )
          : ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0.0),
              itemCount: _peers.length,
              itemBuilder: (context, i) {
                return _buildRow(context, _peers[i]);
              },
            ),
    );
  }
}

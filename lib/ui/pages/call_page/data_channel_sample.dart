import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'dart:core';
import 'dart:async';
import 'dart:typed_data';
import 'signaling.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class DataChannelSample extends StatefulWidget {
  static String tag = 'call_sample';
  final String host;
  const DataChannelSample({Key? key, required this.host}) : super(key: key);

  @override
  _DataChannelSampleState createState() => _DataChannelSampleState();
}

class _DataChannelSampleState extends State<DataChannelSample> {
  Signaling? _signaling;
  List<dynamic> _peers = [];
  String? _selfId;
  bool _inCalling = false;
  Session? _session;

  var _text = '';

  @override
  initState() {
    _connect();
    super.initState();
  }

  @override
  deactivate() {
    _signaling?.close();
    super.deactivate();
  }

  void _connect() async {
    _signaling ??= Signaling(widget.host);
    if (_signaling != null) {
      _signaling!.connect();
    }

    _signaling?.onSignalingStateChange = (SignalingState state) {
      switch (state) {
        case SignalingState.connectionClosed:
        case SignalingState.connectionError:
        case SignalingState.connectionOpen:
          break;
      }
      var loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0),
      );
      loggerNoStack.w('SignalingState $state');
    };

    _signaling?.onCallStateChange = (Session session, CallState state) {
      var loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0),
      );
      loggerNoStack.w('CallState $state');
      switch (state) {
        case CallState.callStateNew:
          {
            setState(() {
              _session = session;
              _inCalling = true;
            });
            break;
          }
        case CallState.callStateBye:
          setState(() {
            _inCalling = false;
          });
          _inCalling = false;
          _session = null;
          _text = '';
          break;
        case CallState.callStateInvite:
          break;
        case CallState.callStateConnected:
          var loggerNoStack = Logger(
            printer: PrettyPrinter(methodCount: 0),
          );
          loggerNoStack.w('CallState.callStateConnected');
          break;
        case CallState.callStateRinging:
          break;
      }
    };

    _signaling?.onPeersUpdate = ((event) {
      var loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0),
      );
      loggerNoStack.w('EVENT: $event');
      setState(() {
        _selfId = event['self'];
        _peers = event['peers'];
      });
    });
  }

  _invitePeer(context, peerId) async {
    if (peerId != _selfId) {
      _signaling?.invite(peerId, 'data');
    }
  }

  _hangUp() {
    _signaling?.bye(_session!.sid);
  }

  _buildRow(context, peer) {
    var self = (peer['id'] == _selfId);
    return ListBody(children: <Widget>[
      if (!self)
        ListTile(
          title: Text('${peer['name']}, ID: ${peer['id']} '),
          onTap: () => _invitePeer(context, peer['id']),
          trailing: const Icon(Icons.sms),
        ),
      const Divider()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Channel Sample' +
              (_selfId != null ? ' [Your ID ($_selfId)] ' : ''),
        ),
      ),
      floatingActionButton: _inCalling
          ? FloatingActionButton(
              onPressed: _hangUp,
              tooltip: 'Hangup',
              child: const Icon(Icons.call_end),
            )
          : null,
      body: _inCalling
          ? Center(
              child: Text('Recevied => ' + _text),
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

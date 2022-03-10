import 'package:flutter/material.dart';

import 'call_sample.dart';
import 'data_channel_sample.dart';

class CallPage extends StatefulWidget {
  static const serverUrl = 'rtc.nospy.fr';
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  bool _datachannel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _datachannel
          ? const DataChannelSample(host: CallPage.serverUrl)
          : const CallSample(host: CallPage.serverUrl),
    );
  }
}

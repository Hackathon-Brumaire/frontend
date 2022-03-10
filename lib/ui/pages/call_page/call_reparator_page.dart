import 'package:flutter/material.dart';

import 'call_sample.dart';
import 'data_channel_sample.dart';

class CallReparatorPage extends StatefulWidget {
  static const serverUrl = 'rtc.nospy.fr';
  const CallReparatorPage({Key? key}) : super(key: key);

  @override
  State<CallReparatorPage> createState() => _CallReparatorPageState();
}

class _CallReparatorPageState extends State<CallReparatorPage> {
  bool _datachannel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _datachannel
          ? const DataChannelSample(host: CallReparatorPage.serverUrl)
          : const CallSample(host: CallReparatorPage.serverUrl),
    );
  }
}

import 'package:flutter/material.dart';

import 'call_sample.dart';

class CallReparatorPage extends StatelessWidget {
  static const serverUrl = 'rtc.nospy.fr';
  const CallReparatorPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CallSample(host: CallReparatorPage.serverUrl, suffix: 'client'),
    );
  }
}

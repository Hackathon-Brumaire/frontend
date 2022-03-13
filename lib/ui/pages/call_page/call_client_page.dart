import 'package:flutter/material.dart';

import 'call_sample.dart';

class CallClientPage extends StatelessWidget {
  static const serverUrl = 'rtc.nospy.fr';
  const CallClientPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CallSample(host: CallClientPage.serverUrl, suffix: 'réparateur'),
    );
  }
}

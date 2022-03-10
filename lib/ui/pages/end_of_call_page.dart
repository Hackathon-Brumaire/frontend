import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';

class EndOfCallPage extends StatefulWidget {
  const EndOfCallPage({ Key? key }) : super(key: key);

  @override
  State<EndOfCallPage> createState() => _EndOfCallPageState();
}

class _EndOfCallPageState extends State<EndOfCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("End of call", style: context.theme.primaryTextTheme.headline1?.copyWith(color: AppColors().black)),
            Text("Duration", style: context.theme.primaryTextTheme.headline2?.copyWith(color: AppColors().black)),
            Text("00:56:35"),
            Text("Rate your Helper", style: context.theme.primaryTextTheme.headline2?.copyWith(color: AppColors().black)),
            Text("Did you resolve your problem ?"),
          ],
        ),
      ),
    );
  }
}
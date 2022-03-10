import 'package:auto_route/auto_route.dart';
import 'package:brumaire_frontend/router.gr.dart';
import 'package:brumaire_frontend/ui/pages/chat_page.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, -1.5),
    end: const Offset(0, 0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  ));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller
        .forward()
        .whenComplete(() => context.router.push(const ChatRoute()));
    return Scaffold(
      body: SafeArea(
        child: SlideTransition(
          position: _offsetAnimation,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset('assets/logo.png'),
              ),
              Text(
                'Assistance',
                style: context.theme.primaryTextTheme.headline2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

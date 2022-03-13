import 'package:brumaire_frontend/router.gr.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/light_theme_styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(RootWidget());

class RootWidget extends StatelessWidget {
  RootWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: "Pounda",
      theme: ThemeManager.createTheme(AppThemeLight()),
    );
  }
}

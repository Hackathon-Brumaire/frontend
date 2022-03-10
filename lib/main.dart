import 'package:brumaire_frontend/router.gr.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/light_theme_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  RootWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
      routerDelegate: _appRouter.delegate(),
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('fr', ''),
      ],
      localizationsDelegates: const [],
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      title: "Pounda",
      theme: ThemeManager.createTheme(AppThemeLight()),
    );
  }
}

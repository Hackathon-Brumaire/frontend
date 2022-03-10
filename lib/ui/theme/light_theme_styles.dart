import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

import 'i_theme_styles.dart';
import 'styles.dart';


class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  @override
  late final ITextTheme primaryTextTheme;

  @override
  late final IDialogTheme dialogTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(colors.colors.black, colors.colors.white);
    textTheme.fontFamily = 'Russo One';
    primaryTextTheme = TextThemeLight(colors.colors.black, colors.colors.white);
    primaryTextTheme.fontFamily = 'arial';
    dialogTheme = AppDialogTheme();
  }

  @override
  IColors get colors => LightColors();

  @override
  IButtons get buttons => DarkButtons();


}

class AppDialogTheme implements IDialogTheme{
  @override
  late DialogTheme dialogTheme;

  AppDialogTheme(){
    dialogTheme = const DialogTheme(titleTextStyle: TextStyle(fontSize: 16), contentTextStyle: TextStyle(fontSize: 16));
  }


}

class LightColors implements IColors{
  @override
  Color? appBarColor;

  @override
  Brightness? brightness;

  @override
  ColorScheme? colorScheme;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  AppColors get colors => const AppColors();

  LightColors(){
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    colorScheme = ThemeData().colorScheme.copyWith(brightness: Brightness.dark, onSecondary: colors.white.withOpacity(0.5));
    brightness = Brightness.dark;
  }

  @override
  Color? tabBarNormalColor;

  @override
  Color? tabBarSelectedColor;
}

class DarkButtons implements IButtons{
  @override
  ElevatedButtonThemeData? elevatedButtonThemeData;

  @override
  FloatingActionButtonThemeData? floatingActionButtonThemeData;

  @override
  OutlinedButtonThemeData? outlinedButtonThemeData;

  @override
  TextButtonThemeData? textButtonThemeData;

  DarkButtons(){
    floatingActionButtonThemeData = FloatingActionButtonThemeData(
        backgroundColor: colors.white, splashColor: colors.white);
    outlinedButtonThemeData = OutlinedButtonThemeData(
        style: ButtonStyle(side:
        MaterialStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(MaterialState.focused)) return const BorderSide();
          if (states.contains(MaterialState.hovered)) return const BorderSide();
          if (states.contains(MaterialState.pressed)) return const BorderSide();
          return BorderSide(width: 1, color: colors.white);
        }), overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.focused)) {
            return colors.white.withOpacity(0.25);
          }
          if (states.contains(MaterialState.hovered)) {
            return colors.white.withOpacity(0.5);
          }
          if (states.contains(MaterialState.pressed)) {
            return colors.white.withOpacity(1);
          }
          return Colors.transparent;
        }), shape:
        MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          if (states.contains(MaterialState.focused)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.s));
          }
          if (states.contains(MaterialState.hovered)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.s));
          }
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.s));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius.s));
        })));
    textButtonThemeData = TextButtonThemeData(
      style: ButtonStyle(
        shape:
        MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          if (states.contains(MaterialState.focused)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0));
          }
          if (states.contains(MaterialState.hovered)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0));
          }
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0));
        }),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
            if (states.contains(MaterialState.focused)) {
              return colors.white.withOpacity(0.5);
            }
            if (states.contains(MaterialState.hovered)) {
              return colors.white.withOpacity(0.5);
            }
            if (states.contains(MaterialState.pressed)) {
              return colors.white;
            }
            return Colors.transparent;
          },
        ),
      ),
    );
    elevatedButtonThemeData = ElevatedButtonThemeData(
        style: ButtonStyle(elevation:
        MaterialStateProperty.resolveWith<double>((states) {
          if (states.contains(MaterialState.focused)) return 8;
          if (states.contains(MaterialState.hovered)) return 8;
          if (states.contains(MaterialState.pressed)) return 8;
          return 8;
        }), shape:
        MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          if (states.contains(MaterialState.focused)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.l));
          }
          if (states.contains(MaterialState.hovered)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.l));
          }
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius.l));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius.l));
        }), backgroundColor:
        MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.focused)) {
            return colors.white.withOpacity(0.5);
          }
          if (states.contains(MaterialState.hovered)) {
            return colors.white.withOpacity(0.5);
          }
          if (states.contains(MaterialState.pressed)) return colors.white;
          return colors.white.withOpacity(1);
        })));
  }

  @override
  AppColors get colors => const AppColors();

  @override
  AppRadius get radius => const AppRadius();
}


class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  late final TextTheme accentData;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;

  @override
  final Color? primaryColor;

  @override
  final Color? secondaryColor;

  TextThemeLight(this.primaryColor, this.secondaryColor) {
    data = ThemeData.light()
        .textTheme
        .copyWith(
      headline1: const TextStyle(fontSize: 25),
      headline2: const TextStyle(fontSize: 22),
      headline3: const TextStyle(fontSize: 18),
      headline4: const TextStyle(fontSize: 16),
      headline5: const TextStyle(fontSize: 14),
      headline6: const TextStyle(fontSize: 12),
      bodyText1: const TextStyle(fontSize: 10),
      bodyText2: const TextStyle(fontSize: 8),
    ).apply(bodyColor: primaryColor);
    accentData = ThemeData.light().textTheme.copyWith(
      headline1: const TextStyle(
          fontSize: 25),
      headline2: const TextStyle(
          fontSize: 22),
      headline3: const TextStyle(
          fontSize: 18),
      headline4: const TextStyle(
          fontSize: 16),
      headline5: const TextStyle(
          fontSize: 14),
      headline6: const TextStyle(
          fontSize: 12),
      bodyText1: const TextStyle(
          fontSize: 10),
      bodyText2: const TextStyle(
          fontSize: 8),
    ).apply(bodyColor: secondaryColor);
  }
  @override
  String? fontFamily;
}


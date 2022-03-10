
import 'package:flutter/material.dart';

import 'styles.dart';

abstract class IThemeStyle {
  Theme dark({required Widget child});
  Theme light({required Widget child});
}

abstract class IDialogTheme{
  late final DialogTheme dialogTheme;
}

abstract class ITextTheme{
  final Color? primaryColor;
  final Color? secondaryColor;
  late final TextTheme data;
  late final TextTheme accentData;
  TextStyle? headline1;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? subtitle1;
  TextStyle? subtitle2;
  TextStyle? bodyText1;
  TextStyle? bodyText2;
  String? fontFamily;

  ITextTheme(this.primaryColor, this.secondaryColor);
}

abstract class IColors{
  AppColors get colors;
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color? tabBarSelectedColor;
  Color? tabBarNormalColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
}

abstract class IButtons{
  AppColors get colors;
  AppRadius get radius;
  TextButtonThemeData? textButtonThemeData;
  ElevatedButtonThemeData? elevatedButtonThemeData;
  OutlinedButtonThemeData? outlinedButtonThemeData;
  FloatingActionButtonThemeData? floatingActionButtonThemeData;
}

abstract class ITheme {
  ITextTheme get primaryTextTheme;
  ITextTheme get textTheme;
  IDialogTheme get dialogTheme;
  IColors get colors;
  IButtons get buttons;
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
      indicatorColor: theme.colors.colors.white,
      primaryColor: theme.colors.colors.white,
      primaryColorDark: theme.colors.colors.white,
      primaryColorLight: theme.colors.colors.white,
      fontFamily: theme.textTheme.fontFamily,
      tabBarTheme: TabBarTheme(labelStyle: TextStyle(fontFamily: theme.textTheme.fontFamily, fontWeight: FontWeight.bold), unselectedLabelStyle: TextStyle(fontFamily: theme.textTheme.fontFamily)),
      textTheme: theme.textTheme.data,
      primaryTextTheme: theme.primaryTextTheme.data,
      accentTextTheme: theme.textTheme.accentData,
      textButtonTheme: theme.buttons.textButtonThemeData,
      outlinedButtonTheme: theme.buttons.outlinedButtonThemeData,
      cardColor: theme.colors.colorScheme?.onSecondary,
      dialogTheme: theme.dialogTheme.dialogTheme,
      floatingActionButtonTheme: theme.buttons.floatingActionButtonThemeData,
      appBarTheme: AppBarTheme(backgroundColor: theme.colors.appBarColor),
      scaffoldBackgroundColor: theme.colors.colors.white,
      colorScheme: theme.colors.colorScheme);
}


extension BuildContextX on BuildContext{
    ThemeData get theme => Theme.of(this);
    MediaQueryData get mediaQuery => MediaQuery.of(this);
}
import 'package:flutter/material.dart';

@immutable
class AppGradients{
  const AppGradients();

}

@immutable
class AppColors {
  const AppColors();

  Color get transparent => Colors.transparent;
  Color get white => Colors.white;
  Color get black => Colors.black;
  Color get lightBlue => Colors.lightBlueAccent;
  Color get lightGreen => Colors.lightGreen;
  Color get green => Color(0xFF607067);
  Color get brown => const Color(0xFFaf9387);
}

@immutable
class AppRadius{
  const AppRadius();

  double get xxl => 50;
  double get xl => 25;
  double get l => 14;
  double get m => 10;
  double get s => 8;
  double get xs => 6;
}

@immutable
class AppIcons{
  const AppIcons();

}

@immutable
class AppImages{
  const AppImages();

  String get logo => 'assets/logo.png';
}


extension ColorSchemeX on ColorScheme {


}

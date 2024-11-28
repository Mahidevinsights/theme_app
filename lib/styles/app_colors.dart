import 'package:flutter/material.dart';

class AppColors {
  static bool isDarkTheme = false;
  // Light Theme Colors
  static const Color primaryLight = Colors.blue;
  static const Color backgroundLight = Colors.white;
  static const Color textLight = Colors.black;
  static const Color headingTextLight = Colors.black87;
  static const Color subheadingTextLight = Colors.black54;
  static const Color buttonTextLight = Colors.white;

  // Dark Theme Colors
  static const Color primaryDark = Colors.blueAccent;
  static const Color backgroundDark = Colors.black;
  static const Color textDark = Colors.white;
  static const Color headingTextDark = Colors.white70;
  static const Color subheadingTextDark = Colors.white60;
  static const Color buttonTextDark = Colors.black;

  //theme based colors
  static Color get primary =>
      isDarkTheme ? AppColors.primaryDark : AppColors.primaryLight;
  static Color get background =>
      isDarkTheme ? AppColors.backgroundDark : AppColors.backgroundLight;
  static Color get textColor =>
      isDarkTheme ? AppColors.textDark : AppColors.textLight;
  static Color get headingText =>
      isDarkTheme ? AppColors.headingTextDark : AppColors.headingTextLight;
  static Color get subheadingText => isDarkTheme
      ? AppColors.subheadingTextDark
      : AppColors.subheadingTextLight;
  static Color get buttonText =>
      isDarkTheme ? AppColors.buttonTextDark : AppColors.buttonTextLight;
}

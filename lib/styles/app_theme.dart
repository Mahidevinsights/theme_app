import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.textLight),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.textDark),
    ),
  );
}

// class AppTheme {
//   static bool isDarkTheme = false;

//   static Color get primary =>
//       isDarkTheme ? AppColors.primaryDark : AppColors.primaryLight;
//   static Color get background =>
//       isDarkTheme ? AppColors.backgroundDark : AppColors.backgroundLight;
//   static Color get textColor =>
//       isDarkTheme ? AppColors.textDark : AppColors.textLight;
//   static Color get headingText =>
//       isDarkTheme ? AppColors.headingTextDark : AppColors.headingTextLight;
//   static Color get subheadingText => isDarkTheme
//       ? AppColors.subheadingTextDark
//       : AppColors.subheadingTextLight;
//   static Color get buttonText =>
//       isDarkTheme ? AppColors.buttonTextDark : AppColors.buttonTextLight;
// }

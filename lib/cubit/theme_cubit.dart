import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app/styles/app_colors.dart';
import '../styles/app_theme.dart';

// class ThemeCubit extends Cubit<ThemeData> {
//   ThemeCubit() : super(ThemeData.light());

//   void toggleTheme() {
//     emit(
//       state.brightness == Brightness.light
//           ? ThemeData.dark()
//           : ThemeData.light(),
//     );
//   }
// }

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.lightTheme) {
    AppColors.isDarkTheme = false; // Initialize AppTheme state
  }

  void toggleTheme() {
    final isCurrentlyDark = state.brightness == Brightness.dark;
    AppColors.isDarkTheme = !isCurrentlyDark; // Update AppTheme state
    emit(
      // isCurrentlyDark ? ThemeData.light() : ThemeData.dark(),
      isCurrentlyDark ? AppTheme.lightTheme : AppTheme.darkTheme,
    );
  }
}

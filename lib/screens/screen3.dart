import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/theme_cubit.dart';
import '../styles/app_colors.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Toggle",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Theme: ${AppColors.isDarkTheme ? "Dark" : "Light"}",
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Switch(
              value: AppColors.isDarkTheme,
              onChanged: (value) {
                context.read<ThemeCubit>().toggleTheme(); // Toggle theme
              },
              activeColor: AppColors.primary,
              inactiveThumbColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

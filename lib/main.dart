import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app/screens/screen3.dart';
import 'package:theme_app/styles/app_colors.dart';
import 'package:theme_app/styles/app_theme.dart';
import 'cubit/theme_cubit.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
      ],
      child: Builder(
        builder: (context) {
          final theme = context.watch<ThemeCubit>().state;

          return MaterialApp(
            title: 'Theme Toggle App',
            theme: theme,

            // theme: AppColors.isDarkTheme
            //     ? AppTheme.darkTheme
            //     : AppTheme.lightTheme,

            // theme: AppTheme.lightTheme,
            // darkTheme: AppTheme.darkTheme,
            // themeMode: ThemeMode.light, // Use ThemeMode.system for system theme
            initialRoute: '/',
            routes: {
              '/': (context) => Screen1(),
              '/screen2': (context) => Screen2(),
              '/screen3': (context) => Screen3(),
            },
          );
        },
      ),
    );
  }
}

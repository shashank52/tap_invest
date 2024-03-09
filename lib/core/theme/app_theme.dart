import 'package:flutter/material.dart';
import 'package:tap_invest/core/app_padding.dart';
import 'package:tap_invest/core/theme/colors.dart';

class AppTheme {
  static const String fontFamily = 'Inter';

  static TextTheme primaryTextTheme = const TextTheme(
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    bodySmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
  );

  static AppBarTheme appBarTheme = AppBarTheme(
      centerTitle: false,
      titleSpacing: AppPadding.mediumLeftPadding,
      color: AppColors.stone50,
      foregroundColor: AppColors.green700,
      iconTheme: const IconThemeData(color: AppColors.green700));

  static ThemeData theme = ThemeData(
      fontFamily: AppTheme.fontFamily,
      scaffoldBackgroundColor: AppColors.stone50,
      useMaterial3: true,
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: AppColors.white),
      bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
      appBarTheme: appBarTheme);
}

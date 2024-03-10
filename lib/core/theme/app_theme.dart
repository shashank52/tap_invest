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
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      titleSpacing: AppPadding.mediumLeftPadding,
      color: AppColors.stone50,
      foregroundColor: AppColors.green700,
      iconTheme: const IconThemeData(color: AppColors.green700));
  static CardTheme cardTheme = CardTheme(
    color: AppColors.stone50,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.stone200, width: 1)),
  );
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(2),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.greenPigment;
          }
          return AppColors.greenPigment;
        },
      ),
      side: MaterialStateProperty.all(
        const BorderSide(
          color: AppColors.darkSpringGreen,
          width: 1,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
    ),
  );
  static ChipThemeData chipThemeData = const ChipThemeData(
      showCheckmark: false,
      backgroundColor: AppColors.stone200,
      disabledColor: AppColors.stone200,
      selectedColor: AppColors.green700,
      // labelStyle: AppTheme.primaryTextTheme.labelSmall
      //     ?.copyWith(color: AppColors.stone500, fontWeight: FontWeight.w600),
      // secondaryLabelStyle: AppTheme.primaryTextTheme.labelSmall
      //     ?.copyWith(color: AppColors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))));
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(width: 1, color: AppColors.stone200));
  static ThemeData theme = ThemeData(
      fontFamily: AppTheme.fontFamily,
      scaffoldBackgroundColor: AppColors.stone50,
      useMaterial3: true,
      cardTheme: cardTheme,
      chipTheme: chipThemeData,
      elevatedButtonTheme: elevatedButtonThemeData,
      bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.white,
          surfaceTintColor: AppColors.white,
          elevation: 40,
          shadowColor: AppColors.charcoal.withOpacity(0.4)),
      appBarTheme: appBarTheme);
}

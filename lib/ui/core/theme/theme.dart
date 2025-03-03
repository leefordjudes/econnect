import 'package:flutter/material.dart';

import 'colors.dart';

enum ThemePalette { light, dark }

final class AppTheme extends ChangeNotifier {
  ThemePalette _theme = ThemePalette.dark;

  change(ThemePalette theme) {
    _theme = theme;
    notifyListeners();
  }

  AppColors get colors {
    if (_theme == ThemePalette.dark) {
      return AppColors.dark();
    } else {
      throw Exception('Theme not implemented');
    }
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        headlineSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        titleMedium: TextStyle(
          fontSize: 14,
          color: colors.primary,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          color: colors.primary,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colors.primary,
          fontFamily: 'Montserrat',
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w300,
          fontFamily: 'Montserrat',
        ),
        labelLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: colors.primary,
          fontFamily: 'Montserrat',
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        filled: true,
        fillColor: colors.inputBackground,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        iconColor: colors.iconPrimary,
        suffixIconColor: colors.iconPrimary,
        prefixIconColor: colors.iconPrimary,
        hintStyle: TextStyle(
          color: colors.inputHintText,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        floatingLabelStyle: TextStyle(
          color: colors.inputBorderFocus,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 1, color: colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 1, color: colors.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 4, color: colors.inputBorderReadonly),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 1, color: colors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 2, color: colors.inputBorderError),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 2, color: colors.inputBorderError),
        ),
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   hintStyle: TextStyle(
      //     // grey3 works for both light and dark themes
      //     fontSize: 18.0,
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),
    );
  }
}

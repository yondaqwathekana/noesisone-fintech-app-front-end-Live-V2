import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryBlue = Color(0xFF0D47A1);
  static const Color primaryWhite = Colors.white;

  static ThemeData blueTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: primaryWhite,
    colorScheme: ColorScheme.light(
      primary: primaryBlue,
      secondary: Colors.blueAccent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: primaryWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}
  
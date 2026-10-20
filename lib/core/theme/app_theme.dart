import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: GoogleFonts.cairo().fontFamily,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 14, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
      titleSmall: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: GoogleFonts.cairo().fontFamily,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 14, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
      titleSmall: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

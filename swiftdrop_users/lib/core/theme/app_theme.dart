import 'package:flutter/material.dart';

import 'app_button_theme.dart';
import 'app_color.dart';

// Custom Theme 1: Green Theme
class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    extensions: <ThemeExtension<dynamic>>[
      AppButtonThemes(
        elevatedActiveButtonTheme: ElevatedButton.styleFrom(
          backgroundColor: color000000,
          foregroundColor: colorFFFFFF,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        elevatedDisableButtonTheme: ElevatedButton.styleFrom(
          backgroundColor: colorBBBBBB,
          foregroundColor: colorFFFFFF,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        googleButtonTheme: ElevatedButton.styleFrom(
          backgroundColor: colorEEEEEE,
          foregroundColor: color000000,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    ],
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(primary: colorFFFFFF, secondary: colorE0E0E0),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorDFDFDF, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorDFDFDF, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorBBBBBB, width: 1.5),
      ),
      suffixStyle: TextStyle(
        color: const Color(0xFF828282),
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 1.40,
      ),
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      color: colorFFFFFF,
      elevation: 4.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        height: 1.40,
        letterSpacing: -0.40,
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.40,
        letterSpacing: -0.36,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.40,
        letterSpacing: -0.32,
      ),
    ),

    // Elevated button config
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(
          TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w700, height: 1.50),
        ),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
      ),
    ),
    // Text button config
    textButtonTheme: TextButtonThemeData(),

    outlinedButtonTheme: OutlinedButtonThemeData(),
    iconButtonTheme: IconButtonThemeData(),
  );

  // Dark Theme
  static ThemeData greenDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: greenPrimaryColor,
    colorScheme: ColorScheme.dark(primary: greenPrimaryColor, secondary: greenAccentColor),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: greenPrimaryColor,
      elevation: 4.0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
      headlineLarge: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    ),
    buttonTheme: ButtonThemeData(buttonColor: greenPrimaryColor, textTheme: ButtonTextTheme.primary),
  );

  // Another Custom Theme: Blue Theme
  static const Color bluePrimaryColor = Colors.blue;
  static const Color blueAccentColor = Colors.blueAccent;

  static ThemeData blueTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: bluePrimaryColor,
    colorScheme: ColorScheme.light(primary: bluePrimaryColor, secondary: blueAccentColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: bluePrimaryColor,
      elevation: 4.0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14),
      headlineLarge: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
    ),
    buttonTheme: ButtonThemeData(
      // buttonColor: bluePrimaryColor,
      // textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData blueDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: bluePrimaryColor,
    colorScheme: ColorScheme.dark(primary: bluePrimaryColor, secondary: blueAccentColor, background: Colors.black),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: bluePrimaryColor,
      elevation: 4.0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
      headlineLarge: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    ),
    buttonTheme: ButtonThemeData(buttonColor: bluePrimaryColor, textTheme: ButtonTextTheme.primary),
  );
}

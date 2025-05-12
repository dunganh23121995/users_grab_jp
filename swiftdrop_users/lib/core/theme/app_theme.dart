import 'package:flutter/material.dart';

// Custom Theme 1: Green Theme
class AppTheme {
  static const Color greenPrimaryColor = Colors.green;
  static const Color greenAccentColor = Colors.greenAccent;
  static const Color greenBackgroundColor = Colors.white;

  static const Color textColor = Colors.black;

  // Light Theme
  static ThemeData greenTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: greenPrimaryColor,
    colorScheme: ColorScheme.light(
      primary: greenPrimaryColor,
      secondary: greenAccentColor,
      background: greenBackgroundColor,
    ),
    scaffoldBackgroundColor: greenBackgroundColor,
    appBarTheme: AppBarTheme(
      color: greenPrimaryColor,
      elevation: 4.0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: textColor, fontSize: 16), // bodyText1 -> bodyLarge
      bodyMedium: TextStyle(color: textColor.withOpacity(0.7), fontSize: 14), // bodyText2 -> bodyMedium
      headlineLarge: TextStyle(color: textColor, fontSize: 32, fontWeight: FontWeight.bold), // headline1 -> headlineLarge
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: greenPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Dark Theme
  static ThemeData greenDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: greenPrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: greenPrimaryColor,
      secondary: greenAccentColor,
      background: Colors.black,
    ),
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
    buttonTheme: ButtonThemeData(
      buttonColor: greenPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Another Custom Theme: Blue Theme
  static const Color bluePrimaryColor = Colors.blue;
  static const Color blueAccentColor = Colors.blueAccent;

  static ThemeData blueTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: bluePrimaryColor,
    colorScheme: ColorScheme.light(
      primary: bluePrimaryColor,
      secondary: blueAccentColor,
      background: Colors.white,
    ),
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
      buttonColor: bluePrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData blueDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: bluePrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: bluePrimaryColor,
      secondary: blueAccentColor,
      background: Colors.black,
    ),
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
    buttonTheme: ButtonThemeData(
      buttonColor: bluePrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}

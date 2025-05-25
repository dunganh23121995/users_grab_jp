import 'package:flutter/material.dart';

class AppButtonThemes extends ThemeExtension<AppButtonThemes> {
  final ButtonStyle elevatedActiveButtonTheme;
  final ButtonStyle elevatedDisableButtonTheme;
  final ButtonStyle googleButtonTheme;

  AppButtonThemes({
    required this.elevatedActiveButtonTheme,
    required this.elevatedDisableButtonTheme,
    required this.googleButtonTheme,
  });

  @override
  AppButtonThemes copyWith({
    ButtonStyle? elevatedActiveButtonTheme,
    ButtonStyle? elevatedDisableButtonTheme,
    ButtonStyle? googleButtonTheme,
  }) {
    return AppButtonThemes(
      elevatedActiveButtonTheme: elevatedActiveButtonTheme ?? this.elevatedActiveButtonTheme,
      elevatedDisableButtonTheme: elevatedDisableButtonTheme ?? this.elevatedDisableButtonTheme,
      googleButtonTheme: googleButtonTheme ?? this.googleButtonTheme,
    );
  }

  @override
  AppButtonThemes lerp(ThemeExtension<AppButtonThemes>? other, double t) {
    if (other is! AppButtonThemes) return this;
    return AppButtonThemes(
      elevatedActiveButtonTheme: ButtonStyle.lerp(elevatedActiveButtonTheme, other.elevatedActiveButtonTheme, t)!,
      elevatedDisableButtonTheme: ButtonStyle.lerp(elevatedDisableButtonTheme, other.elevatedDisableButtonTheme, t)!,
      googleButtonTheme: ButtonStyle.lerp(googleButtonTheme, other.googleButtonTheme, t)!,
    );
  }
}

extension AppThemeDataExtension on ThemeData {
  AppButtonThemes get myButtons => extension<AppButtonThemes>()!;
}

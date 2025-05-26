import 'package:flutter/material.dart';

enum AppLanguage {
  english(Locale('en')),
  japanese(Locale('ja'));

  final Locale locale;

  const AppLanguage(this.locale);

  AppLanguage fromLocale(Locale locale) {
    return AppLanguage.values.firstWhere(
      (lang) => lang.locale.languageCode == locale.languageCode,
      orElse: () => AppLanguage.english, // fallback
    );
  }
}

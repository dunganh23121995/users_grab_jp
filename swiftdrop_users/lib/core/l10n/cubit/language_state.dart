part of 'language_cubit.dart';

sealed class LanguageState {
  AppLanguage? language;

  LanguageState({required LanguageState? state}) {
    this.language = state?.language;
  }
}

final class LanguageInitial extends LanguageState {
  LanguageInitial() : super(state: null);
}


final class ChangeLanguage extends LanguageState{
  ChangeLanguage({required super.state});
}
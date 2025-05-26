import 'package:bloc/bloc.dart';
import 'package:swiftdrop_users/core/enums/app_language.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  void changeLanguage(AppLanguage language) {
    emit(ChangeLanguage(state: state..language = language));
  }
}

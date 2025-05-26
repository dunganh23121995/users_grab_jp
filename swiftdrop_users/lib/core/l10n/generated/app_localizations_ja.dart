// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get home_title => 'ホームへようこそ!';

  @override
  String get login => 'ログイン';

  @override
  String get grab_luggage_version => 'Grab荷物版';

  @override
  String get login_register_as_a_new_user => 'ログイン・新規ユーザー登録';

  @override
  String get user_id => 'ユーザーID';

  @override
  String get password => 'パスワード';

  @override
  String get forgot_your_password => 'パスワードをお忘れの方';

  @override
  String get new_user_registration => '新規ユーザー登録';

  @override
  String get sign_up_with_email => 'Sign up with email';

  @override
  String get or_continue_with => 'or continue with';

  @override
  String get google => 'Google';

  @override
  String get hint_email => 'email@domain.com';

  @override
  String get email_invalid => '無効な電子メール';

  @override
  String get password_need_fill => 'パスワードを空にすることはできません';

  @override
  String get password_need_greater_than_six => 'パスワードの長さは6文字以上である必要があります';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_title => 'Welcome to Home!';

  @override
  String get login => 'Login';

  @override
  String get grab_luggage_version => 'Grab luggage version';

  @override
  String get login_register_as_a_new_user => 'Log in / Register as a new user';

  @override
  String get user_id => 'User ID';

  @override
  String get password => 'password';

  @override
  String get forgot_your_password => 'Forgot your password?';

  @override
  String get new_user_registration => 'New user registration';

  @override
  String get sign_up_with_email => 'Sign up with email';

  @override
  String get or_continue_with => 'or continue with';

  @override
  String get google => 'Google';

  @override
  String get hint_email => 'email@domain.com';

  @override
  String get email_invalid => 'Email invalid';

  @override
  String get password_need_fill => 'Password cannot be blank';

  @override
  String get password_need_greater_than_six =>
      'Password must be at least 6 characters long';
}

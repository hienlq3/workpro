// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginTitle => 'Login';

  @override
  String get usernameLabel => 'Username';

  @override
  String get passwordLabel => 'Password';

  @override
  String get languageLabel => 'Language';

  @override
  String get codeLabel => 'Code';

  @override
  String get enterCompanyCodePrompt => 'Please enter your company code';

  @override
  String get requiredValidation => 'Please enter some text';

  @override
  String get loginBtn => 'Login';

  @override
  String get submitBtn => 'Submit';
}

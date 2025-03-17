// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get loginTitle => 'Đăng nhập';

  @override
  String get usernameLabel => 'Tên tài khoản';

  @override
  String get passwordLabel => 'Mật khẩu';

  @override
  String get languageLabel => 'Ngôn ngữ';

  @override
  String get codeLabel => 'Mã';

  @override
  String get enterCompanyCodePrompt => 'Hãy nhập mã công ty của bạn';

  @override
  String get requiredValidation => 'Trường này không được để trống';

  @override
  String get loginBtn => 'Đăng nhập';

  @override
  String get submitBtn => 'Gửi';
}

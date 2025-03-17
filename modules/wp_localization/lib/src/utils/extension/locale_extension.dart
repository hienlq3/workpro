import 'dart:ui';

extension LocaleExtensions on Locale {
  String get languageName {
    return _localizedLanguageNames[languageCode] ?? '';
  }

  static final Map<String, String> _localizedLanguageNames = {
    'en': 'English',
    'vi': 'Tiếng Việt',
  };
}

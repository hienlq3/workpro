import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BaseUrlNotifier extends ChangeNotifier {
  String _baseUrl = dotenv.get('BASE_URL', fallback: '');

  String get baseUrl => _baseUrl;

  set baseUrl(String url) {
    if (_baseUrl != url) {
      _baseUrl = url;
      notifyListeners();
    }
  }

  void resetBaseUrl() {
    _baseUrl = dotenv.get('BASE_URL', fallback: '');
    notifyListeners();
  }
}

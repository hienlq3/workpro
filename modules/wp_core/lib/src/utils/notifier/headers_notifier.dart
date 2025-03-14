import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HeadersNotifier extends ChangeNotifier {
  Map<String, String> _headers = {};

  Map<String, String> get headers => _headers;

  set headers(Map<String, String> newHeaders) {
    _headers = newHeaders;
    notifyListeners();
  }

  void updateHeader(String key, String value) {
    _headers[key] = value;
    notifyListeners();
  }

  void removeHeader(String key) {
    _headers.remove(key);
    notifyListeners();
  }

  void clearHeaders() {
    _headers.clear();
    notifyListeners();
  }
}

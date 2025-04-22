import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DefaultKeyValueStorage {
  factory DefaultKeyValueStorage() =>
      _instance ?? const DefaultKeyValueStorage._();

  const DefaultKeyValueStorage._();
  static SharedPreferences? _sharedPrefs;

  static FlutterSecureStorage? _secureStorage;

  static DefaultKeyValueStorage? _instance;

  Future<void> init({
    required SharedPreferences sharedPrefs,
    required FlutterSecureStorage secureStorage,
  }) async {
    _sharedPrefs = sharedPrefs;
    _secureStorage = secureStorage;
  }

  T? getCommon<T>(String key) {
    try {
      if (T == String) {
        return _sharedPrefs?.getString(key) as T?;
      } else if (T == int) {
        return _sharedPrefs?.getInt(key) as T?;
      } else if (T == bool) {
        return _sharedPrefs?.getBool(key) as T?;
      } else if (T == double) {
        return _sharedPrefs?.getDouble(key) as T?;
      } else {
        // Handle unsupported types by returning null
        return null;
      }
    } on Exception catch (ex) {
      debugPrint('$ex');
      return null;
    }
  }

  Future<String?> getEncrypted(String key) {
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future<String?>.value();
    }
  }

  Future<bool> setCommon<T>(String key, T value) async {
    if (T == String) {
      return _sharedPrefs!.setString(key, value as String);
    } else if (value == int) {
      return _sharedPrefs!.setInt(key, value as int);
    } else if (value == bool) {
      return _sharedPrefs!.setBool(key, value as bool);
    } else if (value == double) {
      return _sharedPrefs!.setDouble(key, value as double);
    } else {
      // Handle unsupported types or throw an exception
      // For example:
      // throw Exception('Unsupported type for shared preferences: ${T}');
      return false;
    }
  }

  Future<bool> clearCommon<T>(String key) async {
    try {
      return await _sharedPrefs!.remove(key);
    } catch (ex) {
      return Future.value(false);
    }
  }

  Future<bool> clearEncrypted(String key) async {
    try {
      await _secureStorage!.delete(key: key);
      return Future.value(true);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future.value(false);
    }
  }

  Future<bool> setEncrypted(String key, String value) {
    try {
      _secureStorage!.write(key: key, value: value);
      return Future.value(true);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future.value(false);
    }
  }

  Future<bool> clearAllCommon() => _sharedPrefs!.clear();

  Future<bool> clearAllEncrypted() async {
    try {
      await _secureStorage!.deleteAll();
      return true;
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return false;
    }
  }
}

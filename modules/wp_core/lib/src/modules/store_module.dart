import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wp_core/src/utils/default_key_value_storage.dart';
import 'package:wp_core/wp_core.dart';

@module
abstract class StoreModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @singleton
  DefaultKeyValueStorage provideDefaultKeyValueStorage() {
    final defaultKeyValueStorage =
        DefaultKeyValueStorage()..init(
          sharedPrefs: getIt<SharedPreferences>(),
          secureStorage: getIt<FlutterSecureStorage>(),
        );
    return defaultKeyValueStorage;
  }
}

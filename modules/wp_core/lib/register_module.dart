import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wp_core/injection.dart';
import 'package:wp_core/src/utils/app_interceptors.dart';
import 'package:wp_core/src/utils/default_key_value_storage.dart';
import 'package:wp_core/src/utils/notifier/base_url_notifier.dart';
import 'package:wp_core/src/utils/notifier/headers_notifier.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio({
    required BaseUrlNotifier baseUrlNotifier,
    required HeadersNotifier headersNotifier,
  }) {
    final options = BaseOptions(
      baseUrl: baseUrlNotifier.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options);

    dio.interceptors.add(AppInterceptors());

    baseUrlNotifier.addListener(() {
      dio.options.baseUrl = baseUrlNotifier.baseUrl;
    });

    headersNotifier.addListener(() {
      dio.options.headers.addAll(headersNotifier.headers);
    });

    return dio;
  }
}

@module
abstract class RegisterModule {
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

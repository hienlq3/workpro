import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio() {
    final options = BaseOptions(
      baseUrl: 'https://verification-server.spro.eiss.vn',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options);

    return dio;
  }
}

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

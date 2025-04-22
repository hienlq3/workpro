import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/utils/app_interceptors.dart';
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

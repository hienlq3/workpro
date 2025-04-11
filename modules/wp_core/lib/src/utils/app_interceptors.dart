import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class AppInterceptors extends InterceptorsWrapper {
  final logger = Logger(printer: PrettyPrinter());

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('REQUEST[${options.method}] => URI: ${options.uri}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    logger.d(
      'RESPONSE[${response.statusCode}] => URI: ${response.requestOptions.uri}',
    );
    final prettyString = const JsonEncoder.withIndent(
      '  ',
    ).convert(response.data);
    logger.f(prettyString);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
      'ERROR[${err.response?.statusCode}] => URI: ${err.requestOptions.uri}',
    );
    super.onError(err, handler);
  }
}

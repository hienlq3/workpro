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
  void onResponse(Response response, ResponseInterceptorHandler handler) {
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
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
      'ERROR[${err.response?.statusCode}] => URI: ${err.requestOptions.uri}',
    );
    super.onError(err, handler);
  }
}

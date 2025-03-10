import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/models/base_response_model.dart';

@singleton
class BaseService {
  final Dio _dio;

  BaseService({required Dio dio}) : _dio = dio;

  Future<Response> post(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options:
            options ??
            Options(
              headers: headers,
              contentType: Headers.formUrlEncodedContentType,
            ),
      );
      return response;
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response;
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  Exception _handleDioError(DioException error) {
    if (error.response != null) {
      String errorMessage = '';
      final errorResponse = BaseResponseModel.fromJson(
        error.response?.data,
        (p0) => null,
      );
      errorMessage = errorResponse.message ?? '';
      return Exception('Lỗi API: $errorMessage');
    } else {
      return Exception('Lỗi kết nối: ${error.message}');
    }
  }
}

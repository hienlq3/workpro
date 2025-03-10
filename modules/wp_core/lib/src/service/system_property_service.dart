import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class SystemPropertyService {
  final BaseService _baseService;

  SystemPropertyService({required BaseService baseService})
    : _baseService = baseService;

  Future<Map<String, dynamic>> getCode({required String code}) async {
    try {
      final response = await _baseService.post(
        '/systemProperty/findSystemPropertyByCode',
        queryParameters: {'code': code},
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Đăng nhập thất bại: ${e.response?.data}');
      } else {
        throw Exception('Lỗi kết nối: ${e.message}');
      }
    }
  }
}

import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class UserService {
  final BaseService _baseService;

  UserService({required BaseService baseService}) : _baseService = baseService;

  Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _baseService.post(
        '/rest/sms/latest/integration-user/login',
        data: {'username': username, 'password': password},
      );

      return response.data;
    } on Exception catch (error) {
      throw error.toString();
    }
  }
}

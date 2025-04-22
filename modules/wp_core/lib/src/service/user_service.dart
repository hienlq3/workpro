import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';
import 'package:wp_core/wp_core.dart';

@singleton
class UserService {
  UserService({required BaseService baseService}) : _baseService = baseService;
  final BaseService _baseService;

  Future<Map<String, dynamic>?> login({
    required String username,
    required String password,
  }) async {
    try {
      final deviceId = AppConstraint.getDeviceId();
      final response = await _baseService.post(
        '/rest/sms/latest/integration-user/login',
        data: {
          'username': username,
          'password': password,
          'deviceId': deviceId,
        },
      );

      return response.data;
    } on Exception {
      rethrow;
    }
  }
}

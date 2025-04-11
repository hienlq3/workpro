import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class NotificationService {
  NotificationService({required BaseService baseService})
    : _baseService = baseService;
  final BaseService _baseService;

  Future<Map<String, dynamic>?> getAllNotifications({required int page}) async {
    try {
      final response = await _baseService.get(
        '/rest/sms/latest/integration-notification/list',
        queryParameters: {'page': page},
      );

      return response.data;
    } on Exception {
      rethrow;
    }
  }

  Future<void> markNotification({required dynamic id}) async {
    try {
      await _baseService.put(
        '/rest/sms/latest/integration-notification/read/$id',
      );
    } on Exception {
      rethrow;
    }
  }
}

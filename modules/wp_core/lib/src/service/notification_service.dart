import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class NotificationService {
  final BaseService _baseService;

  NotificationService({required BaseService baseService})
    : _baseService = baseService;

  Future<Map<String, dynamic>> getAllNotifications({required int page}) async {
    try {
      final response = await _baseService.get(
        '/rest/sms/latest/integration-notification/list',
        queryParameters: {'page': page},
      );

      return response.data;
    } on Exception catch (error) {
      throw error.toString();
    }
  }
}

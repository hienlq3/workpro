import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/models/notification_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class NotificationRepository {
  final NotificationService _notificationService;

  NotificationRepository({required NotificationService notificationService})
    : _notificationService = notificationService;

  Future<List<NotificationModel>> notificationsFetch({
    required int page,
  }) async {
    try {
      final responseJson = await _notificationService.getAllNotifications(
        page: page,
      );
      final response = BaseResponseModel<NotificationModel>.fromJson(
        responseJson,
        (json) => NotificationModel.fromJson(json as Map<String, dynamic>),
      );
      return response.dataList ?? <NotificationModel>[];
    } catch (error) {
      throw error.toString();
    }
  }

  void notificationsMarked({required dynamic id}) {
    try {
      _notificationService.markNotification(id: id);
    } catch (error) {
      throw error.toString();
    }
  }
}

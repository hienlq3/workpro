import 'package:injectable/injectable.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/models/notification_model.dart';

@singleton
class NotificationRepository {
  NotificationRepository({required NotificationService notificationService})
    : _notificationService = notificationService;
  final NotificationService _notificationService;

  Future<List<NotificationModel>> notificationsFetch({
    required int page,
  }) async {
    try {
      final responseJson = await _notificationService.getAllNotifications(
        page: page,
      );
      if (responseJson != null) {
        final response = BaseResponseModel<NotificationModel>.fromJson(
          responseJson,
          (json) =>
              json != null
                  ? NotificationModel.fromJson(json as Map<String, dynamic>)
                  : const NotificationModel(),
        );
        return response.dataList ?? <NotificationModel>[];
      }
      return <NotificationModel>[];
    } on Exception {
      rethrow;
    }
  }

  void notificationsMarked({required dynamic id}) {
    try {
      _notificationService.markNotification(id: id);
    } on Exception {
      rethrow;
    }
  }
}

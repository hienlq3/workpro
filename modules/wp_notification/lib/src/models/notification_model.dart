import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_notification/src/models/notification_args_model.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    NotificationArgsModel? args,
    String? message,
    String? recordedTime,
    bool? unread,
    @Default(-1) @JsonKey(name: 'notificationID') int notificationId,
  }) = _NotificationModel;
  const NotificationModel._();

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  static const fakeData = NotificationModel(
    args: NotificationArgsModel.fakeData,
    message: 'Notification message',
  );
}

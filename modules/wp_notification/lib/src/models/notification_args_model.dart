import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_args_model.freezed.dart';

part 'notification_args_model.g.dart';

@freezed
abstract class NotificationArgsModel with _$NotificationArgsModel {
  const factory NotificationArgsModel({
    String? ticketTitle,
    int? phaseId,
    int? approvalId,
    int? phaseOutputId,
    int? relationshipId,
    int? ticketId,
  }) = _NotificationArgsModel;
  factory NotificationArgsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationArgsModelFromJson(json);
  const NotificationArgsModel._();

  static const fakeData = NotificationArgsModel(ticketTitle: 'Ticket title');
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/enums/ticket_status_enum.dart';

part 'ticket_info_model.freezed.dart';

part 'ticket_info_model.g.dart';

@freezed
abstract class TicketInfoModel with _$TicketInfoModel {
  const factory TicketInfoModel({
    @Default(-1) final int ticketId,
    @Default('') final String title,
    @Default('') final String processName,
    @Default('') @JsonKey(name: 'ticketOwnerDisp') final String ownerDisp,
    @JsonKey(name: 'ticket_owner') final String? owner,
    @JsonKey(name: 'Avatar') final String? avatar,
    final TicketStatus? status,
    final String? priorityName,
    @Default('') final String location,
    @Default('') final String statusText,
    final String? reason,
    @Default('') @JsonKey(name: 'created_time') final String createdTime,
    @JsonKey(name: 'received_time') final String? receivedTime,
    @JsonKey(name: 'response_time') final String? responseTime,
    @JsonKey(name: 'finished_time') final String? finishedTime,
    @JsonKey(name: 'estimate_to_finish') final String? estimateToFinish,
    final double? rating,
    final int? processId,
  }) = _TicketInfoModel;

  factory TicketInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TicketInfoModelFromJson(json);

  static const empty = TicketInfoModel();
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_info_model.freezed.dart';

part 'ticket_info_model.g.dart';

@freezed
abstract class TicketInfoModel with _$TicketInfoModel {
  const factory TicketInfoModel({
    @Default(-1) final int ticketId,
    @Default('') final String title,
    @Default('') final String processName,
    @Default('') final String statusText,
  }) = _TicketInfoModel;

  factory TicketInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TicketInfoModelFromJson(json);
}

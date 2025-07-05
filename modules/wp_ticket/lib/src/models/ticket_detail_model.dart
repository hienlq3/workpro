import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/models/ticket_info_model.dart';

part 'ticket_detail_model.freezed.dart';

part 'ticket_detail_model.g.dart';

@freezed
abstract class TicketDetailModel with _$TicketDetailModel {
  const factory TicketDetailModel({
    @JsonKey(name: 'TicketInfos') final TicketInfoModel? ticketInfo,
  }) = _TicketDetailModel;

  factory TicketDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TicketDetailModelFromJson(json);
}

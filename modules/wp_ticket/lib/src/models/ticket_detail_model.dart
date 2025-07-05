import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/models/relationship_item_model.dart';
import 'package:wp_ticket/src/models/relative_item_model.dart';
import 'package:wp_ticket/src/models/template_model.dart';
import 'package:wp_ticket/src/models/ticket_info_model.dart';

part 'ticket_detail_model.freezed.dart';

part 'ticket_detail_model.g.dart';

@freezed
abstract class TicketDetailModel with _$TicketDetailModel {
  const factory TicketDetailModel({
    @Default(TicketInfoModel.empty)
    @JsonKey(name: 'TicketInfos')
    final TicketInfoModel ticketInfo,
    @Default([]) final List<RelationshipItemModel> relationships,
    @Default([]) final List<RelativeItemModel> relatives,
    @Default(0) @JsonKey(name: 'TicketRole') final int ticketRole,
    @Default(TemplateModel.empty)
    @JsonKey(name: 'TicketDetails')
    final TemplateModel details,
  }) = _TicketDetailModel;

  factory TicketDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TicketDetailModelFromJson(json);
}

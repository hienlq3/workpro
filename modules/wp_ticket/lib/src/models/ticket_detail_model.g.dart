// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketDetailModel _$TicketDetailModelFromJson(
  Map<String, dynamic> json,
) => _TicketDetailModel(
  ticketInfo:
      json['TicketInfos'] == null
          ? TicketInfoModel.empty
          : TicketInfoModel.fromJson(
            json['TicketInfos'] as Map<String, dynamic>,
          ),
  relationships:
      (json['relationships'] as List<dynamic>?)
          ?.map(
            (e) => RelationshipItemModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  relatives:
      (json['relatives'] as List<dynamic>?)
          ?.map((e) => RelativeItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ticketRole: (json['TicketRole'] as num?)?.toInt() ?? 0,
  details:
      json['TicketDetails'] == null
          ? TemplateModel.empty
          : TemplateModel.fromJson(
            json['TicketDetails'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$TicketDetailModelToJson(_TicketDetailModel instance) =>
    <String, dynamic>{
      'TicketInfos': instance.ticketInfo,
      'relationships': instance.relationships,
      'relatives': instance.relatives,
      'TicketRole': instance.ticketRole,
      'TicketDetails': instance.details,
    };

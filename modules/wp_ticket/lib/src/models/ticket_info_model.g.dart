// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketInfoModel _$TicketInfoModelFromJson(Map<String, dynamic> json) =>
    _TicketInfoModel(
      ticketId: (json['ticketId'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      processName: json['processName'] as String? ?? '',
      statusText: json['statusText'] as String? ?? '',
    );

Map<String, dynamic> _$TicketInfoModelToJson(_TicketInfoModel instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'title': instance.title,
      'processName': instance.processName,
      'statusText': instance.statusText,
    };

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
      ownerDisp: json['ticketOwnerDisp'] as String? ?? '',
      owner: json['ticket_owner'] as String?,
      avatar: json['Avatar'] as String?,
      status: $enumDecodeNullable(_$TicketStatusEnumMap, json['status']),
      priorityName: json['priorityName'] as String?,
      location: json['location'] as String? ?? '',
      statusText: json['statusText'] as String? ?? '',
      reason: json['reason'] as String?,
      createdTime: json['created_time'] as String? ?? '',
      receivedTime: json['received_time'] as String?,
      responseTime: json['response_time'] as String?,
      finishedTime: json['finished_time'] as String?,
      estimateToFinish: json['estimate_to_finish'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      processId: (json['processId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TicketInfoModelToJson(_TicketInfoModel instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'title': instance.title,
      'processName': instance.processName,
      'ticketOwnerDisp': instance.ownerDisp,
      'ticket_owner': instance.owner,
      'Avatar': instance.avatar,
      'status': _$TicketStatusEnumMap[instance.status],
      'priorityName': instance.priorityName,
      'location': instance.location,
      'statusText': instance.statusText,
      'reason': instance.reason,
      'created_time': instance.createdTime,
      'received_time': instance.receivedTime,
      'response_time': instance.responseTime,
      'finished_time': instance.finishedTime,
      'estimate_to_finish': instance.estimateToFinish,
      'rating': instance.rating,
      'processId': instance.processId,
    };

const _$TicketStatusEnumMap = {
  TicketStatus.processing: 'Processing',
  TicketStatus.opened: 'Opened',
  TicketStatus.finished: 'Finished',
  TicketStatus.responding: 'Responding',
  TicketStatus.canceled: 'Canceled',
  TicketStatus.closed: 'Closed',
  TicketStatus.onTime: 'On Time',
  TicketStatus.late: 'Late',
};

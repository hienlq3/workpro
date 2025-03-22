// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_args_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationArgsModel _$NotificationArgsModelFromJson(
  Map<String, dynamic> json,
) => _NotificationArgsModel(
  ticketTitle: json['ticketTitle'] as String?,
  phaseId: (json['phaseId'] as num?)?.toInt(),
  approvalId: (json['approvalId'] as num?)?.toInt(),
  phaseOutputId: (json['phaseOutputId'] as num?)?.toInt(),
  relationshipId: (json['relationshipId'] as num?)?.toInt(),
  ticketId: (json['ticketId'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotificationArgsModelToJson(
  _NotificationArgsModel instance,
) => <String, dynamic>{
  'ticketTitle': instance.ticketTitle,
  'phaseId': instance.phaseId,
  'approvalId': instance.approvalId,
  'phaseOutputId': instance.phaseOutputId,
  'relationshipId': instance.relationshipId,
  'ticketId': instance.ticketId,
};

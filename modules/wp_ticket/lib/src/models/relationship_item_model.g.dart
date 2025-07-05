// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelationshipItemModel _$RelationshipItemModelFromJson(
  Map<String, dynamic> json,
) => _RelationshipItemModel(
  autocreate: json['autocreate'] as bool?,
  from: (json['from'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
  type: json['type'] as String?,
  relationshipId: (json['relationshipId'] as num?)?.toInt(),
  status: $enumDecodeNullable(_$RelationshipStatusEnumMap, json['status']),
  display: json['display'] as bool? ?? true,
);

Map<String, dynamic> _$RelationshipItemModelToJson(
  _RelationshipItemModel instance,
) => <String, dynamic>{
  'autocreate': instance.autocreate,
  'from': instance.from,
  'position': instance.position,
  'id': instance.id,
  'to': instance.to,
  'type': instance.type,
  'relationshipId': instance.relationshipId,
  'status': _$RelationshipStatusEnumMap[instance.status],
  'display': instance.display,
};

const _$RelationshipStatusEnumMap = {
  RelationshipStatus.finished: 'finished',
  RelationshipStatus.waiting: 'waiting',
  RelationshipStatus.pending: 'pending',
  RelationshipStatus.working: 'working',
};

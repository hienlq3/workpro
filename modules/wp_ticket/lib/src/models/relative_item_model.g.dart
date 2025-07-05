// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relative_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelativeItemModel _$RelativeItemModelFromJson(Map<String, dynamic> json) =>
    _RelativeItemModel(
      owner: json['owner'] as String?,
      summary: json['summary'] as String?,
      itemId: (json['itemId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      status: json['status'],
      isZoomed: json['isZoomed'] as bool?,
      zoomFrom: (json['zoomFrom'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RelativeItemModelToJson(_RelativeItemModel instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'summary': instance.summary,
      'itemId': instance.itemId,
      'id': instance.id,
      'status': instance.status,
      'isZoomed': instance.isZoomed,
      'zoomFrom': instance.zoomFrom,
    };

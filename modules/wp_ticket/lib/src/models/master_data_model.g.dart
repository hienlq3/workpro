// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterDataModel _$MasterDataModelFromJson(Map<String, dynamic> json) =>
    _MasterDataModel(
      id: (json['id'] as num?)?.toInt(),
      text: json['text'] as String?,
      value: json['value'] as String?,
      parentId: (json['parentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MasterDataModelToJson(_MasterDataModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.text case final value?) 'text': value,
      if (instance.value case final value?) 'value': value,
      if (instance.parentId case final value?) 'parentId': value,
    };

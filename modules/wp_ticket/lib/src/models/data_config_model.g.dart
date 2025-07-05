// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataConfigModel _$DataConfigModelFromJson(Map<String, dynamic> json) =>
    _DataConfigModel(
      infoId: (json['infoId'] as num?)?.toInt(),
      dataset: $enumDecodeNullable(_$DatasetTypeEnumMap, json['dataset']),
    );

Map<String, dynamic> _$DataConfigModelToJson(_DataConfigModel instance) =>
    <String, dynamic>{
      if (instance.infoId case final value?) 'infoId': value,
      if (_$DatasetTypeEnumMap[instance.dataset] case final value?)
        'dataset': value,
    };

const _$DatasetTypeEnumMap = {
  DatasetType.individual: 'INDIVIDUAL',
  DatasetType.table: 'TABLE',
};

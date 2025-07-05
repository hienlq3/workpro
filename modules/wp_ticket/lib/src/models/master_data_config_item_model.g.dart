// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_config_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterDataConfigItemModel _$MasterDataConfigItemModelFromJson(
  Map<String, dynamic> json,
) => _MasterDataConfigItemModel(
  name: json['name'] as String?,
  id: (json['id'] as num?)?.toInt(),
  value: json['value'] as String?,
);

Map<String, dynamic> _$MasterDataConfigItemModelToJson(
  _MasterDataConfigItemModel instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.id case final value?) 'id': value,
  if (instance.value case final value?) 'value': value,
};

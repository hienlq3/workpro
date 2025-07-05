// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterDataConfigModel _$MasterDataConfigModelFromJson(
  Map<String, dynamic> json,
) => _MasterDataConfigModel(
  children:
      (json['children'] as List<dynamic>?)
          ?.map(
            (e) =>
                MasterDataConfigItemModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  parents:
      (json['parents'] as List<dynamic>?)
          ?.map(
            (e) =>
                MasterDataConfigItemModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$MasterDataConfigModelToJson(
  _MasterDataConfigModel instance,
) => <String, dynamic>{
  if (instance.children?.map((e) => e.toJson()).toList() case final value?)
    'children': value,
  if (instance.parents?.map((e) => e.toJson()).toList() case final value?)
    'parents': value,
};

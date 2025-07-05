// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisplayConfigModel _$DisplayConfigModelFromJson(Map<String, dynamic> json) =>
    _DisplayConfigModel(
      children:
          (json['children'] as List<dynamic>?)
              ?.map(
                (e) => DisplayConditionChildModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DisplayConfigModelToJson(_DisplayConfigModel instance) =>
    <String, dynamic>{'children': instance.children};

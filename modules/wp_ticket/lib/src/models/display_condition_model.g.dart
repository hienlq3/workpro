// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisplayConditionModel _$DisplayConditionModelFromJson(
  Map<String, dynamic> json,
) => _DisplayConditionModel(
  id: (json['idCondition'] as num?)?.toInt(),
  value: json['valueCondition'],
  definedId: json['definedIdCondition'] as String?,
);

Map<String, dynamic> _$DisplayConditionModelToJson(
  _DisplayConditionModel instance,
) => <String, dynamic>{
  'idCondition': instance.id,
  'valueCondition': instance.value,
  'definedIdCondition': instance.definedId,
};

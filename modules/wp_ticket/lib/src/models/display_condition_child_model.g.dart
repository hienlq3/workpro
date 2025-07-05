// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_condition_child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisplayConditionChildModel _$DisplayConditionChildModelFromJson(
  Map<String, dynamic> json,
) => _DisplayConditionChildModel(
  id: (json['childId'] as num?)?.toInt(),
  type: typeReader(json, 'type'),
  displayCondition:
      json['displayCondition'] == null
          ? null
          : DisplayConditionModel.fromJson(
            json['displayCondition'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$DisplayConditionChildModelToJson(
  _DisplayConditionChildModel instance,
) => <String, dynamic>{
  'childId': instance.id,
  'type': instance.type,
  'displayCondition': instance.displayCondition,
};

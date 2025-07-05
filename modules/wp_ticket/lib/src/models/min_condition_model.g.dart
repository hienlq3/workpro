// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'min_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MinConditionModel _$MinConditionModelFromJson(Map<String, dynamic> json) =>
    _MinConditionModel(
      dataConfig:
          json['data-config'] == null
              ? null
              : DataConfigModel.fromJson(
                json['data-config'] as Map<String, dynamic>,
              ),
      type: $enumDecodeNullable(_$BaseControlTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$MinConditionModelToJson(
  _MinConditionModel instance,
) => <String, dynamic>{
  if (instance.dataConfig case final value?) 'data-config': value,
  if (_$BaseControlTypeEnumMap[instance.type] case final value?) 'type': value,
};

const _$BaseControlTypeEnumMap = {
  BaseControlType.splitter: 'splitter',
  BaseControlType.number: 'number',
  BaseControlType.select: 'select',
  BaseControlType.date: 'date',
  BaseControlType.textarea: 'textarea',
  BaseControlType.text: 'text',
  BaseControlType.checkbox: 'checkbox',
  BaseControlType.expression: 'expression',
  BaseControlType.upload: 'upload',
  BaseControlType.finance: 'finance',
  BaseControlType.combobox: 'combobox',
  BaseControlType.datetime: 'datetime',
  BaseControlType.picker: 'picker',
  BaseControlType.time: 'time',
  BaseControlType.apiweb: 'apiweb',
};

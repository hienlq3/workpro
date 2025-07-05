// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseFormModel _$BaseFormModelFromJson(Map<String, dynamic> json) =>
    _BaseFormModel(
      display: json['display'] as bool?,
      nameText: json['nameText'] as String? ?? '',
      value: json['value'],
      id: (json['id'] as num?)?.toInt(),
      definedId: (json['definedId'] as num?)?.toInt(),
      splitterId: (json['splitterId'] as num?)?.toInt(),
      text: json['text'] as String? ?? '',
      position: (json['position'] as num?)?.toInt(),
      columns:
          (json['columns'] as List<dynamic>?)
              ?.map((e) => BaseFormModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      rows:
          (json['rows'] as List<dynamic>?)
              ?.map((e) => BaseFormModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      values:
          (json['values'] as List<dynamic>?)
              ?.map((e) => BaseFormModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      type: typeReader(json, 'type'),
      filenames: json['filenames'] as String?,
      editableAttachmentBlock: json['editableAttachmentBlock'] as String?,
      conditions:
          json['conditions'] == null
              ? null
              : FormConditionModel.fromJson(
                json['conditions'] as Map<String, dynamic>,
              ),
      displayConfig:
          json['displayConfig'] == null
              ? null
              : DisplayConfigModel.fromJson(
                json['displayConfig'] as Map<String, dynamic>,
              ),
      defaultDisplay: defaultDisplayReader(json, 'defaultDisplay') as bool?,
      index: json['index'] ?? -1,
      columnId: (json['columnId'] as num?)?.toInt(),
      controlType: $enumDecodeNullable(
        _$BaseControlTypeEnumMap,
        json['controlType'],
      ),
      mdConfig:
          json['mdConfig'] == null
              ? null
              : MasterDataConfigModel.fromJson(
                json['mdConfig'] as Map<String, dynamic>,
              ),
      placeholderText: json['placeholderText'] as String?,
      mobileValue: json['mobileValue'] as String?,
    );

Map<String, dynamic> _$BaseFormModelToJson(_BaseFormModel instance) =>
    <String, dynamic>{
      if (instance.display case final value?) 'display': value,
      'nameText': instance.nameText,
      if (instance.value case final value?) 'value': value,
      if (instance.id case final value?) 'id': value,
      if (instance.definedId case final value?) 'definedId': value,
      if (instance.splitterId case final value?) 'splitterId': value,
      'text': instance.text,
      if (instance.position case final value?) 'position': value,
      if (instance.columns?.map((e) => e.toJson()).toList() case final value?)
        'columns': value,
      if (instance.rows?.map((e) => e.toJson()).toList() case final value?)
        'rows': value,
      if (instance.values?.map((e) => e.toJson()).toList() case final value?)
        'values': value,
      if (instance.type case final value?) 'type': value,
      if (instance.filenames case final value?) 'filenames': value,
      if (instance.editableAttachmentBlock case final value?)
        'editableAttachmentBlock': value,
      if (instance.conditions?.toJson() case final value?) 'conditions': value,
      if (instance.displayConfig?.toJson() case final value?)
        'displayConfig': value,
      if (instance.columnId case final value?) 'columnId': value,
      if (_$BaseControlTypeEnumMap[instance.controlType] case final value?)
        'controlType': value,
      if (instance.mdConfig?.toJson() case final value?) 'mdConfig': value,
      if (instance.placeholderText case final value?) 'placeholderText': value,
      if (instance.mobileValue case final value?) 'mobileValue': value,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_format_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SystemFormatModel _$SystemFormatModelFromJson(Map<String, dynamic> json) =>
    _SystemFormatModel(
      regex: json['regex'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$SystemFormatModelToJson(_SystemFormatModel instance) =>
    <String, dynamic>{
      if (instance.regex case final value?) 'regex': value,
      if (instance.text case final value?) 'text': value,
    };

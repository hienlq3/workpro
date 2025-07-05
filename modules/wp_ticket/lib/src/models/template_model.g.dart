// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TemplateModel _$TemplateModelFromJson(Map<String, dynamic> json) =>
    _TemplateModel(
      individuals:
          (json['individual'] as List<dynamic>?)
              ?.map((e) => BaseFormModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      matrix:
          json['matrix'] == null
              ? null
              : BaseFormModel.fromJson(json['matrix'] as Map<String, dynamic>),
      table:
          json['table'] == null
              ? null
              : BaseFormModel.fromJson(json['table'] as Map<String, dynamic>),
      multitable:
          (json['multitable'] as List<dynamic>?)
              ?.map((e) => BaseFormModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$TemplateModelToJson(_TemplateModel instance) =>
    <String, dynamic>{
      'individual': instance.individuals,
      'matrix': instance.matrix,
      'table': instance.table,
      'multitable': instance.multitable,
    };

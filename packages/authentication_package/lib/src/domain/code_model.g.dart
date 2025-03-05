// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeModelImpl _$$CodeModelImplFromJson(Map<String, dynamic> json) =>
    _$CodeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      urlSpro: json['urlSpro'] as String? ?? '',
      ssoType: $enumDecodeNullable(_$CodeSSOTypeEnumMap, json['ssoType']) ??
          CodeSSOType.none,
      clientId: json['clientId'] as String?,
      tenantId: json['tenantId'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$CodeModelImplToJson(_$CodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urlSpro': instance.urlSpro,
      'ssoType': _$CodeSSOTypeEnumMap[instance.ssoType]!,
      'clientId': instance.clientId,
      'tenantId': instance.tenantId,
      'code': instance.code,
    };

const _$CodeSSOTypeEnumMap = {
  CodeSSOType.none: 'none',
  CodeSSOType.azure: 'azure',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseModelImpl<T> _$$BaseResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseModelImpl<T>(
      resultCode: (json['ResultCode'] as num?)?.toInt(),
      message: json['Message'] as String?,
      data: _$nullableGenericFromJson(json['Data'], fromJsonT),
      dataList: (json['ListData'] as List<dynamic>?)?.map(fromJsonT).toList(),
      userInfo: _$nullableGenericFromJson(json['UserInfo'], fromJsonT),
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$BaseResponseModelImplToJson<T>(
  _$BaseResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'ResultCode': instance.resultCode,
      'Message': instance.message,
      'Data': _$nullableGenericToJson(instance.data, toJsonT),
      'ListData': instance.dataList?.map(toJsonT).toList(),
      'UserInfo': _$nullableGenericToJson(instance.userInfo, toJsonT),
      'language': instance.language,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

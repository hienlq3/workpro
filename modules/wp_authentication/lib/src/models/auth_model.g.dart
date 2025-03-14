// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      email: json['Email'] as String? ?? '',
      text: json['text'] as String? ?? '',
      value: json['value'] as String? ?? '',
      avatar: json['Avatar'] as String? ?? '',
      loginToken: json['loginToken'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'text': instance.text,
      'value': instance.value,
      'Avatar': instance.avatar,
      'loginToken': instance.loginToken,
    };

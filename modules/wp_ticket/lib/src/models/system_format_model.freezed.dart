// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_format_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SystemFormatModel {

 String? get regex; String? get text;
/// Create a copy of SystemFormatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemFormatModelCopyWith<SystemFormatModel> get copyWith => _$SystemFormatModelCopyWithImpl<SystemFormatModel>(this as SystemFormatModel, _$identity);

  /// Serializes this SystemFormatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemFormatModel&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regex,text);

@override
String toString() {
  return 'SystemFormatModel(regex: $regex, text: $text)';
}


}

/// @nodoc
abstract mixin class $SystemFormatModelCopyWith<$Res>  {
  factory $SystemFormatModelCopyWith(SystemFormatModel value, $Res Function(SystemFormatModel) _then) = _$SystemFormatModelCopyWithImpl;
@useResult
$Res call({
 String? regex, String? text
});




}
/// @nodoc
class _$SystemFormatModelCopyWithImpl<$Res>
    implements $SystemFormatModelCopyWith<$Res> {
  _$SystemFormatModelCopyWithImpl(this._self, this._then);

  final SystemFormatModel _self;
  final $Res Function(SystemFormatModel) _then;

/// Create a copy of SystemFormatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regex = freezed,Object? text = freezed,}) {
  return _then(_self.copyWith(
regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _SystemFormatModel implements SystemFormatModel {
  const _SystemFormatModel({this.regex, this.text});
  factory _SystemFormatModel.fromJson(Map<String, dynamic> json) => _$SystemFormatModelFromJson(json);

@override final  String? regex;
@override final  String? text;

/// Create a copy of SystemFormatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SystemFormatModelCopyWith<_SystemFormatModel> get copyWith => __$SystemFormatModelCopyWithImpl<_SystemFormatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SystemFormatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SystemFormatModel&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regex,text);

@override
String toString() {
  return 'SystemFormatModel(regex: $regex, text: $text)';
}


}

/// @nodoc
abstract mixin class _$SystemFormatModelCopyWith<$Res> implements $SystemFormatModelCopyWith<$Res> {
  factory _$SystemFormatModelCopyWith(_SystemFormatModel value, $Res Function(_SystemFormatModel) _then) = __$SystemFormatModelCopyWithImpl;
@override @useResult
$Res call({
 String? regex, String? text
});




}
/// @nodoc
class __$SystemFormatModelCopyWithImpl<$Res>
    implements _$SystemFormatModelCopyWith<$Res> {
  __$SystemFormatModelCopyWithImpl(this._self, this._then);

  final _SystemFormatModel _self;
  final $Res Function(_SystemFormatModel) _then;

/// Create a copy of SystemFormatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regex = freezed,Object? text = freezed,}) {
  return _then(_SystemFormatModel(
regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

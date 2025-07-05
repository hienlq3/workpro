// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_select_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseSelectItemModel {

 String? get text; String? get value;
/// Create a copy of BaseSelectItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseSelectItemModelCopyWith<BaseSelectItemModel> get copyWith => _$BaseSelectItemModelCopyWithImpl<BaseSelectItemModel>(this as BaseSelectItemModel, _$identity);

  /// Serializes this BaseSelectItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseSelectItemModel&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,value);

@override
String toString() {
  return 'BaseSelectItemModel(text: $text, value: $value)';
}


}

/// @nodoc
abstract mixin class $BaseSelectItemModelCopyWith<$Res>  {
  factory $BaseSelectItemModelCopyWith(BaseSelectItemModel value, $Res Function(BaseSelectItemModel) _then) = _$BaseSelectItemModelCopyWithImpl;
@useResult
$Res call({
 String? text, String? value
});




}
/// @nodoc
class _$BaseSelectItemModelCopyWithImpl<$Res>
    implements $BaseSelectItemModelCopyWith<$Res> {
  _$BaseSelectItemModelCopyWithImpl(this._self, this._then);

  final BaseSelectItemModel _self;
  final $Res Function(BaseSelectItemModel) _then;

/// Create a copy of BaseSelectItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _BaseSelectItemModel implements BaseSelectItemModel {
  const _BaseSelectItemModel({this.text, this.value});
  factory _BaseSelectItemModel.fromJson(Map<String, dynamic> json) => _$BaseSelectItemModelFromJson(json);

@override final  String? text;
@override final  String? value;

/// Create a copy of BaseSelectItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseSelectItemModelCopyWith<_BaseSelectItemModel> get copyWith => __$BaseSelectItemModelCopyWithImpl<_BaseSelectItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseSelectItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseSelectItemModel&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,value);

@override
String toString() {
  return 'BaseSelectItemModel(text: $text, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BaseSelectItemModelCopyWith<$Res> implements $BaseSelectItemModelCopyWith<$Res> {
  factory _$BaseSelectItemModelCopyWith(_BaseSelectItemModel value, $Res Function(_BaseSelectItemModel) _then) = __$BaseSelectItemModelCopyWithImpl;
@override @useResult
$Res call({
 String? text, String? value
});




}
/// @nodoc
class __$BaseSelectItemModelCopyWithImpl<$Res>
    implements _$BaseSelectItemModelCopyWith<$Res> {
  __$BaseSelectItemModelCopyWithImpl(this._self, this._then);

  final _BaseSelectItemModel _self;
  final $Res Function(_BaseSelectItemModel) _then;

/// Create a copy of BaseSelectItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? value = freezed,}) {
  return _then(_BaseSelectItemModel(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

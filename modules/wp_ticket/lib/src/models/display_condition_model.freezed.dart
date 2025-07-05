// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisplayConditionModel {

@JsonKey(name: 'idCondition') int? get id;@JsonKey(name: 'valueCondition') dynamic get value;@JsonKey(name: 'definedIdCondition') String? get definedId;
/// Create a copy of DisplayConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayConditionModelCopyWith<DisplayConditionModel> get copyWith => _$DisplayConditionModelCopyWithImpl<DisplayConditionModel>(this as DisplayConditionModel, _$identity);

  /// Serializes this DisplayConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayConditionModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.definedId, definedId) || other.definedId == definedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(value),definedId);

@override
String toString() {
  return 'DisplayConditionModel(id: $id, value: $value, definedId: $definedId)';
}


}

/// @nodoc
abstract mixin class $DisplayConditionModelCopyWith<$Res>  {
  factory $DisplayConditionModelCopyWith(DisplayConditionModel value, $Res Function(DisplayConditionModel) _then) = _$DisplayConditionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'idCondition') int? id,@JsonKey(name: 'valueCondition') dynamic value,@JsonKey(name: 'definedIdCondition') String? definedId
});




}
/// @nodoc
class _$DisplayConditionModelCopyWithImpl<$Res>
    implements $DisplayConditionModelCopyWith<$Res> {
  _$DisplayConditionModelCopyWithImpl(this._self, this._then);

  final DisplayConditionModel _self;
  final $Res Function(DisplayConditionModel) _then;

/// Create a copy of DisplayConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? value = freezed,Object? definedId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,definedId: freezed == definedId ? _self.definedId : definedId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DisplayConditionModel implements DisplayConditionModel {
  const _DisplayConditionModel({@JsonKey(name: 'idCondition') this.id, @JsonKey(name: 'valueCondition') this.value, @JsonKey(name: 'definedIdCondition') this.definedId});
  factory _DisplayConditionModel.fromJson(Map<String, dynamic> json) => _$DisplayConditionModelFromJson(json);

@override@JsonKey(name: 'idCondition') final  int? id;
@override@JsonKey(name: 'valueCondition') final  dynamic value;
@override@JsonKey(name: 'definedIdCondition') final  String? definedId;

/// Create a copy of DisplayConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayConditionModelCopyWith<_DisplayConditionModel> get copyWith => __$DisplayConditionModelCopyWithImpl<_DisplayConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayConditionModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.definedId, definedId) || other.definedId == definedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(value),definedId);

@override
String toString() {
  return 'DisplayConditionModel(id: $id, value: $value, definedId: $definedId)';
}


}

/// @nodoc
abstract mixin class _$DisplayConditionModelCopyWith<$Res> implements $DisplayConditionModelCopyWith<$Res> {
  factory _$DisplayConditionModelCopyWith(_DisplayConditionModel value, $Res Function(_DisplayConditionModel) _then) = __$DisplayConditionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'idCondition') int? id,@JsonKey(name: 'valueCondition') dynamic value,@JsonKey(name: 'definedIdCondition') String? definedId
});




}
/// @nodoc
class __$DisplayConditionModelCopyWithImpl<$Res>
    implements _$DisplayConditionModelCopyWith<$Res> {
  __$DisplayConditionModelCopyWithImpl(this._self, this._then);

  final _DisplayConditionModel _self;
  final $Res Function(_DisplayConditionModel) _then;

/// Create a copy of DisplayConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? value = freezed,Object? definedId = freezed,}) {
  return _then(_DisplayConditionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,definedId: freezed == definedId ? _self.definedId : definedId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

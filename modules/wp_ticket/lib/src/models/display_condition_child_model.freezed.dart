// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_condition_child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisplayConditionChildModel {

@JsonKey(name: 'childId') int? get id;@JsonKey(readValue: typeReader) dynamic get type; DisplayConditionModel? get displayCondition;
/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayConditionChildModelCopyWith<DisplayConditionChildModel> get copyWith => _$DisplayConditionChildModelCopyWithImpl<DisplayConditionChildModel>(this as DisplayConditionChildModel, _$identity);

  /// Serializes this DisplayConditionChildModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayConditionChildModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.displayCondition, displayCondition) || other.displayCondition == displayCondition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(type),displayCondition);

@override
String toString() {
  return 'DisplayConditionChildModel(id: $id, type: $type, displayCondition: $displayCondition)';
}


}

/// @nodoc
abstract mixin class $DisplayConditionChildModelCopyWith<$Res>  {
  factory $DisplayConditionChildModelCopyWith(DisplayConditionChildModel value, $Res Function(DisplayConditionChildModel) _then) = _$DisplayConditionChildModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'childId') int? id,@JsonKey(readValue: typeReader) dynamic type, DisplayConditionModel? displayCondition
});


$DisplayConditionModelCopyWith<$Res>? get displayCondition;

}
/// @nodoc
class _$DisplayConditionChildModelCopyWithImpl<$Res>
    implements $DisplayConditionChildModelCopyWith<$Res> {
  _$DisplayConditionChildModelCopyWithImpl(this._self, this._then);

  final DisplayConditionChildModel _self;
  final $Res Function(DisplayConditionChildModel) _then;

/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? displayCondition = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,displayCondition: freezed == displayCondition ? _self.displayCondition : displayCondition // ignore: cast_nullable_to_non_nullable
as DisplayConditionModel?,
  ));
}
/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConditionModelCopyWith<$Res>? get displayCondition {
    if (_self.displayCondition == null) {
    return null;
  }

  return $DisplayConditionModelCopyWith<$Res>(_self.displayCondition!, (value) {
    return _then(_self.copyWith(displayCondition: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DisplayConditionChildModel implements DisplayConditionChildModel {
  const _DisplayConditionChildModel({@JsonKey(name: 'childId') this.id, @JsonKey(readValue: typeReader) this.type, this.displayCondition});
  factory _DisplayConditionChildModel.fromJson(Map<String, dynamic> json) => _$DisplayConditionChildModelFromJson(json);

@override@JsonKey(name: 'childId') final  int? id;
@override@JsonKey(readValue: typeReader) final  dynamic type;
@override final  DisplayConditionModel? displayCondition;

/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayConditionChildModelCopyWith<_DisplayConditionChildModel> get copyWith => __$DisplayConditionChildModelCopyWithImpl<_DisplayConditionChildModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayConditionChildModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayConditionChildModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.displayCondition, displayCondition) || other.displayCondition == displayCondition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(type),displayCondition);

@override
String toString() {
  return 'DisplayConditionChildModel(id: $id, type: $type, displayCondition: $displayCondition)';
}


}

/// @nodoc
abstract mixin class _$DisplayConditionChildModelCopyWith<$Res> implements $DisplayConditionChildModelCopyWith<$Res> {
  factory _$DisplayConditionChildModelCopyWith(_DisplayConditionChildModel value, $Res Function(_DisplayConditionChildModel) _then) = __$DisplayConditionChildModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'childId') int? id,@JsonKey(readValue: typeReader) dynamic type, DisplayConditionModel? displayCondition
});


@override $DisplayConditionModelCopyWith<$Res>? get displayCondition;

}
/// @nodoc
class __$DisplayConditionChildModelCopyWithImpl<$Res>
    implements _$DisplayConditionChildModelCopyWith<$Res> {
  __$DisplayConditionChildModelCopyWithImpl(this._self, this._then);

  final _DisplayConditionChildModel _self;
  final $Res Function(_DisplayConditionChildModel) _then;

/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? displayCondition = freezed,}) {
  return _then(_DisplayConditionChildModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,displayCondition: freezed == displayCondition ? _self.displayCondition : displayCondition // ignore: cast_nullable_to_non_nullable
as DisplayConditionModel?,
  ));
}

/// Create a copy of DisplayConditionChildModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConditionModelCopyWith<$Res>? get displayCondition {
    if (_self.displayCondition == null) {
    return null;
  }

  return $DisplayConditionModelCopyWith<$Res>(_self.displayCondition!, (value) {
    return _then(_self.copyWith(displayCondition: value));
  });
}
}

// dart format on

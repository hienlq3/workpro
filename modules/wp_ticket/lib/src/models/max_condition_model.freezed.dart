// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'max_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaxConditionModel {

@JsonKey(name: 'data-config') DataConfigModel? get dataConfig; BaseControlType? get type;
/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxConditionModelCopyWith<MaxConditionModel> get copyWith => _$MaxConditionModelCopyWithImpl<MaxConditionModel>(this as MaxConditionModel, _$identity);

  /// Serializes this MaxConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxConditionModel&&(identical(other.dataConfig, dataConfig) || other.dataConfig == dataConfig)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataConfig,type);

@override
String toString() {
  return 'MaxConditionModel(dataConfig: $dataConfig, type: $type)';
}


}

/// @nodoc
abstract mixin class $MaxConditionModelCopyWith<$Res>  {
  factory $MaxConditionModelCopyWith(MaxConditionModel value, $Res Function(MaxConditionModel) _then) = _$MaxConditionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data-config') DataConfigModel? dataConfig, BaseControlType? type
});


$DataConfigModelCopyWith<$Res>? get dataConfig;

}
/// @nodoc
class _$MaxConditionModelCopyWithImpl<$Res>
    implements $MaxConditionModelCopyWith<$Res> {
  _$MaxConditionModelCopyWithImpl(this._self, this._then);

  final MaxConditionModel _self;
  final $Res Function(MaxConditionModel) _then;

/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataConfig = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
dataConfig: freezed == dataConfig ? _self.dataConfig : dataConfig // ignore: cast_nullable_to_non_nullable
as DataConfigModel?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BaseControlType?,
  ));
}
/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataConfigModelCopyWith<$Res>? get dataConfig {
    if (_self.dataConfig == null) {
    return null;
  }

  return $DataConfigModelCopyWith<$Res>(_self.dataConfig!, (value) {
    return _then(_self.copyWith(dataConfig: value));
  });
}
}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _MaxConditionModel implements MaxConditionModel {
  const _MaxConditionModel({@JsonKey(name: 'data-config') this.dataConfig, this.type});
  factory _MaxConditionModel.fromJson(Map<String, dynamic> json) => _$MaxConditionModelFromJson(json);

@override@JsonKey(name: 'data-config') final  DataConfigModel? dataConfig;
@override final  BaseControlType? type;

/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaxConditionModelCopyWith<_MaxConditionModel> get copyWith => __$MaxConditionModelCopyWithImpl<_MaxConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaxConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaxConditionModel&&(identical(other.dataConfig, dataConfig) || other.dataConfig == dataConfig)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataConfig,type);

@override
String toString() {
  return 'MaxConditionModel(dataConfig: $dataConfig, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MaxConditionModelCopyWith<$Res> implements $MaxConditionModelCopyWith<$Res> {
  factory _$MaxConditionModelCopyWith(_MaxConditionModel value, $Res Function(_MaxConditionModel) _then) = __$MaxConditionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data-config') DataConfigModel? dataConfig, BaseControlType? type
});


@override $DataConfigModelCopyWith<$Res>? get dataConfig;

}
/// @nodoc
class __$MaxConditionModelCopyWithImpl<$Res>
    implements _$MaxConditionModelCopyWith<$Res> {
  __$MaxConditionModelCopyWithImpl(this._self, this._then);

  final _MaxConditionModel _self;
  final $Res Function(_MaxConditionModel) _then;

/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataConfig = freezed,Object? type = freezed,}) {
  return _then(_MaxConditionModel(
dataConfig: freezed == dataConfig ? _self.dataConfig : dataConfig // ignore: cast_nullable_to_non_nullable
as DataConfigModel?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BaseControlType?,
  ));
}

/// Create a copy of MaxConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataConfigModelCopyWith<$Res>? get dataConfig {
    if (_self.dataConfig == null) {
    return null;
  }

  return $DataConfigModelCopyWith<$Res>(_self.dataConfig!, (value) {
    return _then(_self.copyWith(dataConfig: value));
  });
}
}

// dart format on

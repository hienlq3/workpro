// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'min_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MinConditionModel {

@JsonKey(name: 'data-config') DataConfigModel? get dataConfig; BaseControlType? get type;
/// Create a copy of MinConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinConditionModelCopyWith<MinConditionModel> get copyWith => _$MinConditionModelCopyWithImpl<MinConditionModel>(this as MinConditionModel, _$identity);

  /// Serializes this MinConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinConditionModel&&(identical(other.dataConfig, dataConfig) || other.dataConfig == dataConfig)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataConfig,type);

@override
String toString() {
  return 'MinConditionModel(dataConfig: $dataConfig, type: $type)';
}


}

/// @nodoc
abstract mixin class $MinConditionModelCopyWith<$Res>  {
  factory $MinConditionModelCopyWith(MinConditionModel value, $Res Function(MinConditionModel) _then) = _$MinConditionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data-config') DataConfigModel? dataConfig, BaseControlType? type
});


$DataConfigModelCopyWith<$Res>? get dataConfig;

}
/// @nodoc
class _$MinConditionModelCopyWithImpl<$Res>
    implements $MinConditionModelCopyWith<$Res> {
  _$MinConditionModelCopyWithImpl(this._self, this._then);

  final MinConditionModel _self;
  final $Res Function(MinConditionModel) _then;

/// Create a copy of MinConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataConfig = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
dataConfig: freezed == dataConfig ? _self.dataConfig : dataConfig // ignore: cast_nullable_to_non_nullable
as DataConfigModel?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BaseControlType?,
  ));
}
/// Create a copy of MinConditionModel
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
class _MinConditionModel implements MinConditionModel {
  const _MinConditionModel({@JsonKey(name: 'data-config') this.dataConfig, this.type});
  factory _MinConditionModel.fromJson(Map<String, dynamic> json) => _$MinConditionModelFromJson(json);

@override@JsonKey(name: 'data-config') final  DataConfigModel? dataConfig;
@override final  BaseControlType? type;

/// Create a copy of MinConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MinConditionModelCopyWith<_MinConditionModel> get copyWith => __$MinConditionModelCopyWithImpl<_MinConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MinConditionModel&&(identical(other.dataConfig, dataConfig) || other.dataConfig == dataConfig)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataConfig,type);

@override
String toString() {
  return 'MinConditionModel(dataConfig: $dataConfig, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MinConditionModelCopyWith<$Res> implements $MinConditionModelCopyWith<$Res> {
  factory _$MinConditionModelCopyWith(_MinConditionModel value, $Res Function(_MinConditionModel) _then) = __$MinConditionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data-config') DataConfigModel? dataConfig, BaseControlType? type
});


@override $DataConfigModelCopyWith<$Res>? get dataConfig;

}
/// @nodoc
class __$MinConditionModelCopyWithImpl<$Res>
    implements _$MinConditionModelCopyWith<$Res> {
  __$MinConditionModelCopyWithImpl(this._self, this._then);

  final _MinConditionModel _self;
  final $Res Function(_MinConditionModel) _then;

/// Create a copy of MinConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataConfig = freezed,Object? type = freezed,}) {
  return _then(_MinConditionModel(
dataConfig: freezed == dataConfig ? _self.dataConfig : dataConfig // ignore: cast_nullable_to_non_nullable
as DataConfigModel?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BaseControlType?,
  ));
}

/// Create a copy of MinConditionModel
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

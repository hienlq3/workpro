// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataConfigModel {

 int? get infoId; DatasetType? get dataset;
/// Create a copy of DataConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataConfigModelCopyWith<DataConfigModel> get copyWith => _$DataConfigModelCopyWithImpl<DataConfigModel>(this as DataConfigModel, _$identity);

  /// Serializes this DataConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataConfigModel&&(identical(other.infoId, infoId) || other.infoId == infoId)&&(identical(other.dataset, dataset) || other.dataset == dataset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,infoId,dataset);

@override
String toString() {
  return 'DataConfigModel(infoId: $infoId, dataset: $dataset)';
}


}

/// @nodoc
abstract mixin class $DataConfigModelCopyWith<$Res>  {
  factory $DataConfigModelCopyWith(DataConfigModel value, $Res Function(DataConfigModel) _then) = _$DataConfigModelCopyWithImpl;
@useResult
$Res call({
 int? infoId, DatasetType? dataset
});




}
/// @nodoc
class _$DataConfigModelCopyWithImpl<$Res>
    implements $DataConfigModelCopyWith<$Res> {
  _$DataConfigModelCopyWithImpl(this._self, this._then);

  final DataConfigModel _self;
  final $Res Function(DataConfigModel) _then;

/// Create a copy of DataConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? infoId = freezed,Object? dataset = freezed,}) {
  return _then(_self.copyWith(
infoId: freezed == infoId ? _self.infoId : infoId // ignore: cast_nullable_to_non_nullable
as int?,dataset: freezed == dataset ? _self.dataset : dataset // ignore: cast_nullable_to_non_nullable
as DatasetType?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _DataConfigModel implements DataConfigModel {
  const _DataConfigModel({this.infoId, this.dataset});
  factory _DataConfigModel.fromJson(Map<String, dynamic> json) => _$DataConfigModelFromJson(json);

@override final  int? infoId;
@override final  DatasetType? dataset;

/// Create a copy of DataConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataConfigModelCopyWith<_DataConfigModel> get copyWith => __$DataConfigModelCopyWithImpl<_DataConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataConfigModel&&(identical(other.infoId, infoId) || other.infoId == infoId)&&(identical(other.dataset, dataset) || other.dataset == dataset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,infoId,dataset);

@override
String toString() {
  return 'DataConfigModel(infoId: $infoId, dataset: $dataset)';
}


}

/// @nodoc
abstract mixin class _$DataConfigModelCopyWith<$Res> implements $DataConfigModelCopyWith<$Res> {
  factory _$DataConfigModelCopyWith(_DataConfigModel value, $Res Function(_DataConfigModel) _then) = __$DataConfigModelCopyWithImpl;
@override @useResult
$Res call({
 int? infoId, DatasetType? dataset
});




}
/// @nodoc
class __$DataConfigModelCopyWithImpl<$Res>
    implements _$DataConfigModelCopyWith<$Res> {
  __$DataConfigModelCopyWithImpl(this._self, this._then);

  final _DataConfigModel _self;
  final $Res Function(_DataConfigModel) _then;

/// Create a copy of DataConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? infoId = freezed,Object? dataset = freezed,}) {
  return _then(_DataConfigModel(
infoId: freezed == infoId ? _self.infoId : infoId // ignore: cast_nullable_to_non_nullable
as int?,dataset: freezed == dataset ? _self.dataset : dataset // ignore: cast_nullable_to_non_nullable
as DatasetType?,
  ));
}


}

// dart format on

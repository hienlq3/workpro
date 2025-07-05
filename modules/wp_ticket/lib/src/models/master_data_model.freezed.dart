// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterDataModel {

 int? get id; String? get text; String? get value; int? get parentId;
/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterDataModelCopyWith<MasterDataModel> get copyWith => _$MasterDataModelCopyWithImpl<MasterDataModel>(this as MasterDataModel, _$identity);

  /// Serializes this MasterDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,value,parentId);

@override
String toString() {
  return 'MasterDataModel(id: $id, text: $text, value: $value, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $MasterDataModelCopyWith<$Res>  {
  factory $MasterDataModelCopyWith(MasterDataModel value, $Res Function(MasterDataModel) _then) = _$MasterDataModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? text, String? value, int? parentId
});




}
/// @nodoc
class _$MasterDataModelCopyWithImpl<$Res>
    implements $MasterDataModelCopyWith<$Res> {
  _$MasterDataModelCopyWithImpl(this._self, this._then);

  final MasterDataModel _self;
  final $Res Function(MasterDataModel) _then;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? text = freezed,Object? value = freezed,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _MasterDataModel implements MasterDataModel {
  const _MasterDataModel({this.id, this.text, this.value, this.parentId});
  factory _MasterDataModel.fromJson(Map<String, dynamic> json) => _$MasterDataModelFromJson(json);

@override final  int? id;
@override final  String? text;
@override final  String? value;
@override final  int? parentId;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterDataModelCopyWith<_MasterDataModel> get copyWith => __$MasterDataModelCopyWithImpl<_MasterDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,value,parentId);

@override
String toString() {
  return 'MasterDataModel(id: $id, text: $text, value: $value, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$MasterDataModelCopyWith<$Res> implements $MasterDataModelCopyWith<$Res> {
  factory _$MasterDataModelCopyWith(_MasterDataModel value, $Res Function(_MasterDataModel) _then) = __$MasterDataModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? text, String? value, int? parentId
});




}
/// @nodoc
class __$MasterDataModelCopyWithImpl<$Res>
    implements _$MasterDataModelCopyWith<$Res> {
  __$MasterDataModelCopyWithImpl(this._self, this._then);

  final _MasterDataModel _self;
  final $Res Function(_MasterDataModel) _then;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? text = freezed,Object? value = freezed,Object? parentId = freezed,}) {
  return _then(_MasterDataModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

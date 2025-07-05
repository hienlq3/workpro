// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_config_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterDataConfigItemModel {

 String? get name; int? get id; String? get value;
/// Create a copy of MasterDataConfigItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterDataConfigItemModelCopyWith<MasterDataConfigItemModel> get copyWith => _$MasterDataConfigItemModelCopyWithImpl<MasterDataConfigItemModel>(this as MasterDataConfigItemModel, _$identity);

  /// Serializes this MasterDataConfigItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterDataConfigItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,value);

@override
String toString() {
  return 'MasterDataConfigItemModel(name: $name, id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class $MasterDataConfigItemModelCopyWith<$Res>  {
  factory $MasterDataConfigItemModelCopyWith(MasterDataConfigItemModel value, $Res Function(MasterDataConfigItemModel) _then) = _$MasterDataConfigItemModelCopyWithImpl;
@useResult
$Res call({
 String? name, int? id, String? value
});




}
/// @nodoc
class _$MasterDataConfigItemModelCopyWithImpl<$Res>
    implements $MasterDataConfigItemModelCopyWith<$Res> {
  _$MasterDataConfigItemModelCopyWithImpl(this._self, this._then);

  final MasterDataConfigItemModel _self;
  final $Res Function(MasterDataConfigItemModel) _then;

/// Create a copy of MasterDataConfigItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? id = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _MasterDataConfigItemModel implements MasterDataConfigItemModel {
  const _MasterDataConfigItemModel({this.name, this.id, this.value});
  factory _MasterDataConfigItemModel.fromJson(Map<String, dynamic> json) => _$MasterDataConfigItemModelFromJson(json);

@override final  String? name;
@override final  int? id;
@override final  String? value;

/// Create a copy of MasterDataConfigItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterDataConfigItemModelCopyWith<_MasterDataConfigItemModel> get copyWith => __$MasterDataConfigItemModelCopyWithImpl<_MasterDataConfigItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterDataConfigItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterDataConfigItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,value);

@override
String toString() {
  return 'MasterDataConfigItemModel(name: $name, id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class _$MasterDataConfigItemModelCopyWith<$Res> implements $MasterDataConfigItemModelCopyWith<$Res> {
  factory _$MasterDataConfigItemModelCopyWith(_MasterDataConfigItemModel value, $Res Function(_MasterDataConfigItemModel) _then) = __$MasterDataConfigItemModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? id, String? value
});




}
/// @nodoc
class __$MasterDataConfigItemModelCopyWithImpl<$Res>
    implements _$MasterDataConfigItemModelCopyWith<$Res> {
  __$MasterDataConfigItemModelCopyWithImpl(this._self, this._then);

  final _MasterDataConfigItemModel _self;
  final $Res Function(_MasterDataConfigItemModel) _then;

/// Create a copy of MasterDataConfigItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? id = freezed,Object? value = freezed,}) {
  return _then(_MasterDataConfigItemModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

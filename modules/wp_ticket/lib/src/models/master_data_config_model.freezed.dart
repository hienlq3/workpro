// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterDataConfigModel {

 List<MasterDataConfigItemModel>? get children; List<MasterDataConfigItemModel>? get parents;
/// Create a copy of MasterDataConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterDataConfigModelCopyWith<MasterDataConfigModel> get copyWith => _$MasterDataConfigModelCopyWithImpl<MasterDataConfigModel>(this as MasterDataConfigModel, _$identity);

  /// Serializes this MasterDataConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterDataConfigModel&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.parents, parents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(parents));

@override
String toString() {
  return 'MasterDataConfigModel(children: $children, parents: $parents)';
}


}

/// @nodoc
abstract mixin class $MasterDataConfigModelCopyWith<$Res>  {
  factory $MasterDataConfigModelCopyWith(MasterDataConfigModel value, $Res Function(MasterDataConfigModel) _then) = _$MasterDataConfigModelCopyWithImpl;
@useResult
$Res call({
 List<MasterDataConfigItemModel>? children, List<MasterDataConfigItemModel>? parents
});




}
/// @nodoc
class _$MasterDataConfigModelCopyWithImpl<$Res>
    implements $MasterDataConfigModelCopyWith<$Res> {
  _$MasterDataConfigModelCopyWithImpl(this._self, this._then);

  final MasterDataConfigModel _self;
  final $Res Function(MasterDataConfigModel) _then;

/// Create a copy of MasterDataConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? children = freezed,Object? parents = freezed,}) {
  return _then(_self.copyWith(
children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<MasterDataConfigItemModel>?,parents: freezed == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<MasterDataConfigItemModel>?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _MasterDataConfigModel implements MasterDataConfigModel {
  const _MasterDataConfigModel({final  List<MasterDataConfigItemModel>? children, final  List<MasterDataConfigItemModel>? parents}): _children = children,_parents = parents;
  factory _MasterDataConfigModel.fromJson(Map<String, dynamic> json) => _$MasterDataConfigModelFromJson(json);

 final  List<MasterDataConfigItemModel>? _children;
@override List<MasterDataConfigItemModel>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<MasterDataConfigItemModel>? _parents;
@override List<MasterDataConfigItemModel>? get parents {
  final value = _parents;
  if (value == null) return null;
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MasterDataConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterDataConfigModelCopyWith<_MasterDataConfigModel> get copyWith => __$MasterDataConfigModelCopyWithImpl<_MasterDataConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterDataConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterDataConfigModel&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._parents, _parents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_parents));

@override
String toString() {
  return 'MasterDataConfigModel(children: $children, parents: $parents)';
}


}

/// @nodoc
abstract mixin class _$MasterDataConfigModelCopyWith<$Res> implements $MasterDataConfigModelCopyWith<$Res> {
  factory _$MasterDataConfigModelCopyWith(_MasterDataConfigModel value, $Res Function(_MasterDataConfigModel) _then) = __$MasterDataConfigModelCopyWithImpl;
@override @useResult
$Res call({
 List<MasterDataConfigItemModel>? children, List<MasterDataConfigItemModel>? parents
});




}
/// @nodoc
class __$MasterDataConfigModelCopyWithImpl<$Res>
    implements _$MasterDataConfigModelCopyWith<$Res> {
  __$MasterDataConfigModelCopyWithImpl(this._self, this._then);

  final _MasterDataConfigModel _self;
  final $Res Function(_MasterDataConfigModel) _then;

/// Create a copy of MasterDataConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? children = freezed,Object? parents = freezed,}) {
  return _then(_MasterDataConfigModel(
children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<MasterDataConfigItemModel>?,parents: freezed == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<MasterDataConfigItemModel>?,
  ));
}


}

// dart format on

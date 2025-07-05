// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisplayConfigModel {

 List<DisplayConditionChildModel> get children;
/// Create a copy of DisplayConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayConfigModelCopyWith<DisplayConfigModel> get copyWith => _$DisplayConfigModelCopyWithImpl<DisplayConfigModel>(this as DisplayConfigModel, _$identity);

  /// Serializes this DisplayConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayConfigModel&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'DisplayConfigModel(children: $children)';
}


}

/// @nodoc
abstract mixin class $DisplayConfigModelCopyWith<$Res>  {
  factory $DisplayConfigModelCopyWith(DisplayConfigModel value, $Res Function(DisplayConfigModel) _then) = _$DisplayConfigModelCopyWithImpl;
@useResult
$Res call({
 List<DisplayConditionChildModel> children
});




}
/// @nodoc
class _$DisplayConfigModelCopyWithImpl<$Res>
    implements $DisplayConfigModelCopyWith<$Res> {
  _$DisplayConfigModelCopyWithImpl(this._self, this._then);

  final DisplayConfigModel _self;
  final $Res Function(DisplayConfigModel) _then;

/// Create a copy of DisplayConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? children = null,}) {
  return _then(_self.copyWith(
children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<DisplayConditionChildModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DisplayConfigModel implements DisplayConfigModel {
  const _DisplayConfigModel({final  List<DisplayConditionChildModel> children = const []}): _children = children;
  factory _DisplayConfigModel.fromJson(Map<String, dynamic> json) => _$DisplayConfigModelFromJson(json);

 final  List<DisplayConditionChildModel> _children;
@override@JsonKey() List<DisplayConditionChildModel> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of DisplayConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayConfigModelCopyWith<_DisplayConfigModel> get copyWith => __$DisplayConfigModelCopyWithImpl<_DisplayConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayConfigModel&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'DisplayConfigModel(children: $children)';
}


}

/// @nodoc
abstract mixin class _$DisplayConfigModelCopyWith<$Res> implements $DisplayConfigModelCopyWith<$Res> {
  factory _$DisplayConfigModelCopyWith(_DisplayConfigModel value, $Res Function(_DisplayConfigModel) _then) = __$DisplayConfigModelCopyWithImpl;
@override @useResult
$Res call({
 List<DisplayConditionChildModel> children
});




}
/// @nodoc
class __$DisplayConfigModelCopyWithImpl<$Res>
    implements _$DisplayConfigModelCopyWith<$Res> {
  __$DisplayConfigModelCopyWithImpl(this._self, this._then);

  final _DisplayConfigModel _self;
  final $Res Function(_DisplayConfigModel) _then;

/// Create a copy of DisplayConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? children = null,}) {
  return _then(_DisplayConfigModel(
children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<DisplayConditionChildModel>,
  ));
}


}

// dart format on

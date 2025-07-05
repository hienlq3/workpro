// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relative_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelativeItemModel {

 String? get owner; String? get summary; int? get itemId; int? get id; dynamic get status; bool? get isZoomed; int? get zoomFrom;
/// Create a copy of RelativeItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelativeItemModelCopyWith<RelativeItemModel> get copyWith => _$RelativeItemModelCopyWithImpl<RelativeItemModel>(this as RelativeItemModel, _$identity);

  /// Serializes this RelativeItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelativeItemModel&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.isZoomed, isZoomed) || other.isZoomed == isZoomed)&&(identical(other.zoomFrom, zoomFrom) || other.zoomFrom == zoomFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,summary,itemId,id,const DeepCollectionEquality().hash(status),isZoomed,zoomFrom);

@override
String toString() {
  return 'RelativeItemModel(owner: $owner, summary: $summary, itemId: $itemId, id: $id, status: $status, isZoomed: $isZoomed, zoomFrom: $zoomFrom)';
}


}

/// @nodoc
abstract mixin class $RelativeItemModelCopyWith<$Res>  {
  factory $RelativeItemModelCopyWith(RelativeItemModel value, $Res Function(RelativeItemModel) _then) = _$RelativeItemModelCopyWithImpl;
@useResult
$Res call({
 String? owner, String? summary, int? itemId, int? id, dynamic status, bool? isZoomed, int? zoomFrom
});




}
/// @nodoc
class _$RelativeItemModelCopyWithImpl<$Res>
    implements $RelativeItemModelCopyWith<$Res> {
  _$RelativeItemModelCopyWithImpl(this._self, this._then);

  final RelativeItemModel _self;
  final $Res Function(RelativeItemModel) _then;

/// Create a copy of RelativeItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? summary = freezed,Object? itemId = freezed,Object? id = freezed,Object? status = freezed,Object? isZoomed = freezed,Object? zoomFrom = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,isZoomed: freezed == isZoomed ? _self.isZoomed : isZoomed // ignore: cast_nullable_to_non_nullable
as bool?,zoomFrom: freezed == zoomFrom ? _self.zoomFrom : zoomFrom // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RelativeItemModel implements RelativeItemModel {
  const _RelativeItemModel({this.owner, this.summary, this.itemId, this.id, this.status, this.isZoomed, this.zoomFrom});
  factory _RelativeItemModel.fromJson(Map<String, dynamic> json) => _$RelativeItemModelFromJson(json);

@override final  String? owner;
@override final  String? summary;
@override final  int? itemId;
@override final  int? id;
@override final  dynamic status;
@override final  bool? isZoomed;
@override final  int? zoomFrom;

/// Create a copy of RelativeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelativeItemModelCopyWith<_RelativeItemModel> get copyWith => __$RelativeItemModelCopyWithImpl<_RelativeItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelativeItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelativeItemModel&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.isZoomed, isZoomed) || other.isZoomed == isZoomed)&&(identical(other.zoomFrom, zoomFrom) || other.zoomFrom == zoomFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,summary,itemId,id,const DeepCollectionEquality().hash(status),isZoomed,zoomFrom);

@override
String toString() {
  return 'RelativeItemModel(owner: $owner, summary: $summary, itemId: $itemId, id: $id, status: $status, isZoomed: $isZoomed, zoomFrom: $zoomFrom)';
}


}

/// @nodoc
abstract mixin class _$RelativeItemModelCopyWith<$Res> implements $RelativeItemModelCopyWith<$Res> {
  factory _$RelativeItemModelCopyWith(_RelativeItemModel value, $Res Function(_RelativeItemModel) _then) = __$RelativeItemModelCopyWithImpl;
@override @useResult
$Res call({
 String? owner, String? summary, int? itemId, int? id, dynamic status, bool? isZoomed, int? zoomFrom
});




}
/// @nodoc
class __$RelativeItemModelCopyWithImpl<$Res>
    implements _$RelativeItemModelCopyWith<$Res> {
  __$RelativeItemModelCopyWithImpl(this._self, this._then);

  final _RelativeItemModel _self;
  final $Res Function(_RelativeItemModel) _then;

/// Create a copy of RelativeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? summary = freezed,Object? itemId = freezed,Object? id = freezed,Object? status = freezed,Object? isZoomed = freezed,Object? zoomFrom = freezed,}) {
  return _then(_RelativeItemModel(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,isZoomed: freezed == isZoomed ? _self.isZoomed : isZoomed // ignore: cast_nullable_to_non_nullable
as bool?,zoomFrom: freezed == zoomFrom ? _self.zoomFrom : zoomFrom // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelationshipItemModel {

 bool? get autocreate; int? get from; int? get position; int? get id; int? get to; String? get type; int? get relationshipId; RelationshipStatus? get status; bool get display;
/// Create a copy of RelationshipItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipItemModelCopyWith<RelationshipItemModel> get copyWith => _$RelationshipItemModelCopyWithImpl<RelationshipItemModel>(this as RelationshipItemModel, _$identity);

  /// Serializes this RelationshipItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelationshipItemModel&&(identical(other.autocreate, autocreate) || other.autocreate == autocreate)&&(identical(other.from, from) || other.from == from)&&(identical(other.position, position) || other.position == position)&&(identical(other.id, id) || other.id == id)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.relationshipId, relationshipId) || other.relationshipId == relationshipId)&&(identical(other.status, status) || other.status == status)&&(identical(other.display, display) || other.display == display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autocreate,from,position,id,to,type,relationshipId,status,display);

@override
String toString() {
  return 'RelationshipItemModel(autocreate: $autocreate, from: $from, position: $position, id: $id, to: $to, type: $type, relationshipId: $relationshipId, status: $status, display: $display)';
}


}

/// @nodoc
abstract mixin class $RelationshipItemModelCopyWith<$Res>  {
  factory $RelationshipItemModelCopyWith(RelationshipItemModel value, $Res Function(RelationshipItemModel) _then) = _$RelationshipItemModelCopyWithImpl;
@useResult
$Res call({
 bool? autocreate, int? from, int? position, int? id, int? to, String? type, int? relationshipId, RelationshipStatus? status, bool display
});




}
/// @nodoc
class _$RelationshipItemModelCopyWithImpl<$Res>
    implements $RelationshipItemModelCopyWith<$Res> {
  _$RelationshipItemModelCopyWithImpl(this._self, this._then);

  final RelationshipItemModel _self;
  final $Res Function(RelationshipItemModel) _then;

/// Create a copy of RelationshipItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autocreate = freezed,Object? from = freezed,Object? position = freezed,Object? id = freezed,Object? to = freezed,Object? type = freezed,Object? relationshipId = freezed,Object? status = freezed,Object? display = null,}) {
  return _then(_self.copyWith(
autocreate: freezed == autocreate ? _self.autocreate : autocreate // ignore: cast_nullable_to_non_nullable
as bool?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,relationshipId: freezed == relationshipId ? _self.relationshipId : relationshipId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RelationshipStatus?,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RelationshipItemModel implements RelationshipItemModel {
  const _RelationshipItemModel({this.autocreate, this.from, this.position, this.id, this.to, this.type, this.relationshipId, this.status, this.display = true});
  factory _RelationshipItemModel.fromJson(Map<String, dynamic> json) => _$RelationshipItemModelFromJson(json);

@override final  bool? autocreate;
@override final  int? from;
@override final  int? position;
@override final  int? id;
@override final  int? to;
@override final  String? type;
@override final  int? relationshipId;
@override final  RelationshipStatus? status;
@override@JsonKey() final  bool display;

/// Create a copy of RelationshipItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipItemModelCopyWith<_RelationshipItemModel> get copyWith => __$RelationshipItemModelCopyWithImpl<_RelationshipItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelationshipItemModel&&(identical(other.autocreate, autocreate) || other.autocreate == autocreate)&&(identical(other.from, from) || other.from == from)&&(identical(other.position, position) || other.position == position)&&(identical(other.id, id) || other.id == id)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.relationshipId, relationshipId) || other.relationshipId == relationshipId)&&(identical(other.status, status) || other.status == status)&&(identical(other.display, display) || other.display == display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autocreate,from,position,id,to,type,relationshipId,status,display);

@override
String toString() {
  return 'RelationshipItemModel(autocreate: $autocreate, from: $from, position: $position, id: $id, to: $to, type: $type, relationshipId: $relationshipId, status: $status, display: $display)';
}


}

/// @nodoc
abstract mixin class _$RelationshipItemModelCopyWith<$Res> implements $RelationshipItemModelCopyWith<$Res> {
  factory _$RelationshipItemModelCopyWith(_RelationshipItemModel value, $Res Function(_RelationshipItemModel) _then) = __$RelationshipItemModelCopyWithImpl;
@override @useResult
$Res call({
 bool? autocreate, int? from, int? position, int? id, int? to, String? type, int? relationshipId, RelationshipStatus? status, bool display
});




}
/// @nodoc
class __$RelationshipItemModelCopyWithImpl<$Res>
    implements _$RelationshipItemModelCopyWith<$Res> {
  __$RelationshipItemModelCopyWithImpl(this._self, this._then);

  final _RelationshipItemModel _self;
  final $Res Function(_RelationshipItemModel) _then;

/// Create a copy of RelationshipItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autocreate = freezed,Object? from = freezed,Object? position = freezed,Object? id = freezed,Object? to = freezed,Object? type = freezed,Object? relationshipId = freezed,Object? status = freezed,Object? display = null,}) {
  return _then(_RelationshipItemModel(
autocreate: freezed == autocreate ? _self.autocreate : autocreate // ignore: cast_nullable_to_non_nullable
as bool?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,relationshipId: freezed == relationshipId ? _self.relationshipId : relationshipId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RelationshipStatus?,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

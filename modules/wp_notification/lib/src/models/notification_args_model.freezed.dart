// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_args_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationArgsModel {

 String? get ticketTitle; int? get phaseId; int? get approvalId; int? get phaseOutputId; int? get relationshipId; int? get ticketId;
/// Create a copy of NotificationArgsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationArgsModelCopyWith<NotificationArgsModel> get copyWith => _$NotificationArgsModelCopyWithImpl<NotificationArgsModel>(this as NotificationArgsModel, _$identity);

  /// Serializes this NotificationArgsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationArgsModel&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.phaseId, phaseId) || other.phaseId == phaseId)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&(identical(other.phaseOutputId, phaseOutputId) || other.phaseOutputId == phaseOutputId)&&(identical(other.relationshipId, relationshipId) || other.relationshipId == relationshipId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketTitle,phaseId,approvalId,phaseOutputId,relationshipId,ticketId);

@override
String toString() {
  return 'NotificationArgsModel(ticketTitle: $ticketTitle, phaseId: $phaseId, approvalId: $approvalId, phaseOutputId: $phaseOutputId, relationshipId: $relationshipId, ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class $NotificationArgsModelCopyWith<$Res>  {
  factory $NotificationArgsModelCopyWith(NotificationArgsModel value, $Res Function(NotificationArgsModel) _then) = _$NotificationArgsModelCopyWithImpl;
@useResult
$Res call({
 String? ticketTitle, int? phaseId, int? approvalId, int? phaseOutputId, int? relationshipId, int? ticketId
});




}
/// @nodoc
class _$NotificationArgsModelCopyWithImpl<$Res>
    implements $NotificationArgsModelCopyWith<$Res> {
  _$NotificationArgsModelCopyWithImpl(this._self, this._then);

  final NotificationArgsModel _self;
  final $Res Function(NotificationArgsModel) _then;

/// Create a copy of NotificationArgsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketTitle = freezed,Object? phaseId = freezed,Object? approvalId = freezed,Object? phaseOutputId = freezed,Object? relationshipId = freezed,Object? ticketId = freezed,}) {
  return _then(_self.copyWith(
ticketTitle: freezed == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String?,phaseId: freezed == phaseId ? _self.phaseId : phaseId // ignore: cast_nullable_to_non_nullable
as int?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as int?,phaseOutputId: freezed == phaseOutputId ? _self.phaseOutputId : phaseOutputId // ignore: cast_nullable_to_non_nullable
as int?,relationshipId: freezed == relationshipId ? _self.relationshipId : relationshipId // ignore: cast_nullable_to_non_nullable
as int?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NotificationArgsModel extends NotificationArgsModel {
  const _NotificationArgsModel({this.ticketTitle, this.phaseId, this.approvalId, this.phaseOutputId, this.relationshipId, this.ticketId}): super._();
  factory _NotificationArgsModel.fromJson(Map<String, dynamic> json) => _$NotificationArgsModelFromJson(json);

@override final  String? ticketTitle;
@override final  int? phaseId;
@override final  int? approvalId;
@override final  int? phaseOutputId;
@override final  int? relationshipId;
@override final  int? ticketId;

/// Create a copy of NotificationArgsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationArgsModelCopyWith<_NotificationArgsModel> get copyWith => __$NotificationArgsModelCopyWithImpl<_NotificationArgsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationArgsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationArgsModel&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.phaseId, phaseId) || other.phaseId == phaseId)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&(identical(other.phaseOutputId, phaseOutputId) || other.phaseOutputId == phaseOutputId)&&(identical(other.relationshipId, relationshipId) || other.relationshipId == relationshipId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketTitle,phaseId,approvalId,phaseOutputId,relationshipId,ticketId);

@override
String toString() {
  return 'NotificationArgsModel(ticketTitle: $ticketTitle, phaseId: $phaseId, approvalId: $approvalId, phaseOutputId: $phaseOutputId, relationshipId: $relationshipId, ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class _$NotificationArgsModelCopyWith<$Res> implements $NotificationArgsModelCopyWith<$Res> {
  factory _$NotificationArgsModelCopyWith(_NotificationArgsModel value, $Res Function(_NotificationArgsModel) _then) = __$NotificationArgsModelCopyWithImpl;
@override @useResult
$Res call({
 String? ticketTitle, int? phaseId, int? approvalId, int? phaseOutputId, int? relationshipId, int? ticketId
});




}
/// @nodoc
class __$NotificationArgsModelCopyWithImpl<$Res>
    implements _$NotificationArgsModelCopyWith<$Res> {
  __$NotificationArgsModelCopyWithImpl(this._self, this._then);

  final _NotificationArgsModel _self;
  final $Res Function(_NotificationArgsModel) _then;

/// Create a copy of NotificationArgsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketTitle = freezed,Object? phaseId = freezed,Object? approvalId = freezed,Object? phaseOutputId = freezed,Object? relationshipId = freezed,Object? ticketId = freezed,}) {
  return _then(_NotificationArgsModel(
ticketTitle: freezed == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String?,phaseId: freezed == phaseId ? _self.phaseId : phaseId // ignore: cast_nullable_to_non_nullable
as int?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as int?,phaseOutputId: freezed == phaseOutputId ? _self.phaseOutputId : phaseOutputId // ignore: cast_nullable_to_non_nullable
as int?,relationshipId: freezed == relationshipId ? _self.relationshipId : relationshipId // ignore: cast_nullable_to_non_nullable
as int?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

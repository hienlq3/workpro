// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

 NotificationArgsModel? get args; String? get message; String? get recordedTime; bool? get unread;@JsonKey(name: 'notificationID') int get notificationId;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.args, args) || other.args == args)&&(identical(other.message, message) || other.message == message)&&(identical(other.recordedTime, recordedTime) || other.recordedTime == recordedTime)&&(identical(other.unread, unread) || other.unread == unread)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args,message,recordedTime,unread,notificationId);

@override
String toString() {
  return 'NotificationModel(args: $args, message: $message, recordedTime: $recordedTime, unread: $unread, notificationId: $notificationId)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 NotificationArgsModel? args, String? message, String? recordedTime, bool? unread,@JsonKey(name: 'notificationID') int notificationId
});


$NotificationArgsModelCopyWith<$Res>? get args;

}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? args = freezed,Object? message = freezed,Object? recordedTime = freezed,Object? unread = freezed,Object? notificationId = null,}) {
  return _then(_self.copyWith(
args: freezed == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as NotificationArgsModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,recordedTime: freezed == recordedTime ? _self.recordedTime : recordedTime // ignore: cast_nullable_to_non_nullable
as String?,unread: freezed == unread ? _self.unread : unread // ignore: cast_nullable_to_non_nullable
as bool?,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationArgsModelCopyWith<$Res>? get args {
    if (_self.args == null) {
    return null;
  }

  return $NotificationArgsModelCopyWith<$Res>(_self.args!, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _NotificationModel extends NotificationModel {
  const _NotificationModel({this.args, this.message, this.recordedTime, this.unread, @JsonKey(name: 'notificationID') this.notificationId = -1}): super._();
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override final  NotificationArgsModel? args;
@override final  String? message;
@override final  String? recordedTime;
@override final  bool? unread;
@override@JsonKey(name: 'notificationID') final  int notificationId;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.args, args) || other.args == args)&&(identical(other.message, message) || other.message == message)&&(identical(other.recordedTime, recordedTime) || other.recordedTime == recordedTime)&&(identical(other.unread, unread) || other.unread == unread)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args,message,recordedTime,unread,notificationId);

@override
String toString() {
  return 'NotificationModel(args: $args, message: $message, recordedTime: $recordedTime, unread: $unread, notificationId: $notificationId)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 NotificationArgsModel? args, String? message, String? recordedTime, bool? unread,@JsonKey(name: 'notificationID') int notificationId
});


@override $NotificationArgsModelCopyWith<$Res>? get args;

}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? args = freezed,Object? message = freezed,Object? recordedTime = freezed,Object? unread = freezed,Object? notificationId = null,}) {
  return _then(_NotificationModel(
args: freezed == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as NotificationArgsModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,recordedTime: freezed == recordedTime ? _self.recordedTime : recordedTime // ignore: cast_nullable_to_non_nullable
as String?,unread: freezed == unread ? _self.unread : unread // ignore: cast_nullable_to_non_nullable
as bool?,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationArgsModelCopyWith<$Res>? get args {
    if (_self.args == null) {
    return null;
  }

  return $NotificationArgsModelCopyWith<$Res>(_self.args!, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

// dart format on

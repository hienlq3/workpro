// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketInfoModel {

 int get ticketId; String get title; String get processName;@JsonKey(name: 'ticketOwnerDisp') String get ownerDisp;@JsonKey(name: 'ticket_owner') String? get owner;@JsonKey(name: 'Avatar') String? get avatar; TicketStatus? get status; String? get priorityName; String get location; String get statusText; String? get reason;@JsonKey(name: 'created_time') String get createdTime;@JsonKey(name: 'received_time') String? get receivedTime;@JsonKey(name: 'response_time') String? get responseTime;@JsonKey(name: 'finished_time') String? get finishedTime;@JsonKey(name: 'estimate_to_finish') String? get estimateToFinish; double? get rating; int? get processId;
/// Create a copy of TicketInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<TicketInfoModel> get copyWith => _$TicketInfoModelCopyWithImpl<TicketInfoModel>(this as TicketInfoModel, _$identity);

  /// Serializes this TicketInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketInfoModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.ownerDisp, ownerDisp) || other.ownerDisp == ownerDisp)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.status, status) || other.status == status)&&(identical(other.priorityName, priorityName) || other.priorityName == priorityName)&&(identical(other.location, location) || other.location == location)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.receivedTime, receivedTime) || other.receivedTime == receivedTime)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.finishedTime, finishedTime) || other.finishedTime == finishedTime)&&(identical(other.estimateToFinish, estimateToFinish) || other.estimateToFinish == estimateToFinish)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.processId, processId) || other.processId == processId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,processName,ownerDisp,owner,avatar,status,priorityName,location,statusText,reason,createdTime,receivedTime,responseTime,finishedTime,estimateToFinish,rating,processId);

@override
String toString() {
  return 'TicketInfoModel(ticketId: $ticketId, title: $title, processName: $processName, ownerDisp: $ownerDisp, owner: $owner, avatar: $avatar, status: $status, priorityName: $priorityName, location: $location, statusText: $statusText, reason: $reason, createdTime: $createdTime, receivedTime: $receivedTime, responseTime: $responseTime, finishedTime: $finishedTime, estimateToFinish: $estimateToFinish, rating: $rating, processId: $processId)';
}


}

/// @nodoc
abstract mixin class $TicketInfoModelCopyWith<$Res>  {
  factory $TicketInfoModelCopyWith(TicketInfoModel value, $Res Function(TicketInfoModel) _then) = _$TicketInfoModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, String processName,@JsonKey(name: 'ticketOwnerDisp') String ownerDisp,@JsonKey(name: 'ticket_owner') String? owner,@JsonKey(name: 'Avatar') String? avatar, TicketStatus? status, String? priorityName, String location, String statusText, String? reason,@JsonKey(name: 'created_time') String createdTime,@JsonKey(name: 'received_time') String? receivedTime,@JsonKey(name: 'response_time') String? responseTime,@JsonKey(name: 'finished_time') String? finishedTime,@JsonKey(name: 'estimate_to_finish') String? estimateToFinish, double? rating, int? processId
});




}
/// @nodoc
class _$TicketInfoModelCopyWithImpl<$Res>
    implements $TicketInfoModelCopyWith<$Res> {
  _$TicketInfoModelCopyWithImpl(this._self, this._then);

  final TicketInfoModel _self;
  final $Res Function(TicketInfoModel) _then;

/// Create a copy of TicketInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? processName = null,Object? ownerDisp = null,Object? owner = freezed,Object? avatar = freezed,Object? status = freezed,Object? priorityName = freezed,Object? location = null,Object? statusText = null,Object? reason = freezed,Object? createdTime = null,Object? receivedTime = freezed,Object? responseTime = freezed,Object? finishedTime = freezed,Object? estimateToFinish = freezed,Object? rating = freezed,Object? processId = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,processName: null == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String,ownerDisp: null == ownerDisp ? _self.ownerDisp : ownerDisp // ignore: cast_nullable_to_non_nullable
as String,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus?,priorityName: freezed == priorityName ? _self.priorityName : priorityName // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,receivedTime: freezed == receivedTime ? _self.receivedTime : receivedTime // ignore: cast_nullable_to_non_nullable
as String?,responseTime: freezed == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String?,finishedTime: freezed == finishedTime ? _self.finishedTime : finishedTime // ignore: cast_nullable_to_non_nullable
as String?,estimateToFinish: freezed == estimateToFinish ? _self.estimateToFinish : estimateToFinish // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,processId: freezed == processId ? _self.processId : processId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TicketInfoModel implements TicketInfoModel {
  const _TicketInfoModel({this.ticketId = -1, this.title = '', this.processName = '', @JsonKey(name: 'ticketOwnerDisp') this.ownerDisp = '', @JsonKey(name: 'ticket_owner') this.owner, @JsonKey(name: 'Avatar') this.avatar, this.status, this.priorityName, this.location = '', this.statusText = '', this.reason, @JsonKey(name: 'created_time') this.createdTime = '', @JsonKey(name: 'received_time') this.receivedTime, @JsonKey(name: 'response_time') this.responseTime, @JsonKey(name: 'finished_time') this.finishedTime, @JsonKey(name: 'estimate_to_finish') this.estimateToFinish, this.rating, this.processId});
  factory _TicketInfoModel.fromJson(Map<String, dynamic> json) => _$TicketInfoModelFromJson(json);

@override@JsonKey() final  int ticketId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String processName;
@override@JsonKey(name: 'ticketOwnerDisp') final  String ownerDisp;
@override@JsonKey(name: 'ticket_owner') final  String? owner;
@override@JsonKey(name: 'Avatar') final  String? avatar;
@override final  TicketStatus? status;
@override final  String? priorityName;
@override@JsonKey() final  String location;
@override@JsonKey() final  String statusText;
@override final  String? reason;
@override@JsonKey(name: 'created_time') final  String createdTime;
@override@JsonKey(name: 'received_time') final  String? receivedTime;
@override@JsonKey(name: 'response_time') final  String? responseTime;
@override@JsonKey(name: 'finished_time') final  String? finishedTime;
@override@JsonKey(name: 'estimate_to_finish') final  String? estimateToFinish;
@override final  double? rating;
@override final  int? processId;

/// Create a copy of TicketInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketInfoModelCopyWith<_TicketInfoModel> get copyWith => __$TicketInfoModelCopyWithImpl<_TicketInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketInfoModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.ownerDisp, ownerDisp) || other.ownerDisp == ownerDisp)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.status, status) || other.status == status)&&(identical(other.priorityName, priorityName) || other.priorityName == priorityName)&&(identical(other.location, location) || other.location == location)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.receivedTime, receivedTime) || other.receivedTime == receivedTime)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.finishedTime, finishedTime) || other.finishedTime == finishedTime)&&(identical(other.estimateToFinish, estimateToFinish) || other.estimateToFinish == estimateToFinish)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.processId, processId) || other.processId == processId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,processName,ownerDisp,owner,avatar,status,priorityName,location,statusText,reason,createdTime,receivedTime,responseTime,finishedTime,estimateToFinish,rating,processId);

@override
String toString() {
  return 'TicketInfoModel(ticketId: $ticketId, title: $title, processName: $processName, ownerDisp: $ownerDisp, owner: $owner, avatar: $avatar, status: $status, priorityName: $priorityName, location: $location, statusText: $statusText, reason: $reason, createdTime: $createdTime, receivedTime: $receivedTime, responseTime: $responseTime, finishedTime: $finishedTime, estimateToFinish: $estimateToFinish, rating: $rating, processId: $processId)';
}


}

/// @nodoc
abstract mixin class _$TicketInfoModelCopyWith<$Res> implements $TicketInfoModelCopyWith<$Res> {
  factory _$TicketInfoModelCopyWith(_TicketInfoModel value, $Res Function(_TicketInfoModel) _then) = __$TicketInfoModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, String processName,@JsonKey(name: 'ticketOwnerDisp') String ownerDisp,@JsonKey(name: 'ticket_owner') String? owner,@JsonKey(name: 'Avatar') String? avatar, TicketStatus? status, String? priorityName, String location, String statusText, String? reason,@JsonKey(name: 'created_time') String createdTime,@JsonKey(name: 'received_time') String? receivedTime,@JsonKey(name: 'response_time') String? responseTime,@JsonKey(name: 'finished_time') String? finishedTime,@JsonKey(name: 'estimate_to_finish') String? estimateToFinish, double? rating, int? processId
});




}
/// @nodoc
class __$TicketInfoModelCopyWithImpl<$Res>
    implements _$TicketInfoModelCopyWith<$Res> {
  __$TicketInfoModelCopyWithImpl(this._self, this._then);

  final _TicketInfoModel _self;
  final $Res Function(_TicketInfoModel) _then;

/// Create a copy of TicketInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? processName = null,Object? ownerDisp = null,Object? owner = freezed,Object? avatar = freezed,Object? status = freezed,Object? priorityName = freezed,Object? location = null,Object? statusText = null,Object? reason = freezed,Object? createdTime = null,Object? receivedTime = freezed,Object? responseTime = freezed,Object? finishedTime = freezed,Object? estimateToFinish = freezed,Object? rating = freezed,Object? processId = freezed,}) {
  return _then(_TicketInfoModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,processName: null == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String,ownerDisp: null == ownerDisp ? _self.ownerDisp : ownerDisp // ignore: cast_nullable_to_non_nullable
as String,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus?,priorityName: freezed == priorityName ? _self.priorityName : priorityName // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,receivedTime: freezed == receivedTime ? _self.receivedTime : receivedTime // ignore: cast_nullable_to_non_nullable
as String?,responseTime: freezed == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String?,finishedTime: freezed == finishedTime ? _self.finishedTime : finishedTime // ignore: cast_nullable_to_non_nullable
as String?,estimateToFinish: freezed == estimateToFinish ? _self.estimateToFinish : estimateToFinish // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,processId: freezed == processId ? _self.processId : processId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

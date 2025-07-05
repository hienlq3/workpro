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

 int get ticketId; String get title; String get processName; String get statusText;
/// Create a copy of TicketInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<TicketInfoModel> get copyWith => _$TicketInfoModelCopyWithImpl<TicketInfoModel>(this as TicketInfoModel, _$identity);

  /// Serializes this TicketInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketInfoModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.statusText, statusText) || other.statusText == statusText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,processName,statusText);

@override
String toString() {
  return 'TicketInfoModel(ticketId: $ticketId, title: $title, processName: $processName, statusText: $statusText)';
}


}

/// @nodoc
abstract mixin class $TicketInfoModelCopyWith<$Res>  {
  factory $TicketInfoModelCopyWith(TicketInfoModel value, $Res Function(TicketInfoModel) _then) = _$TicketInfoModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, String processName, String statusText
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
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? processName = null,Object? statusText = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,processName: null == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TicketInfoModel implements TicketInfoModel {
  const _TicketInfoModel({this.ticketId = -1, this.title = '', this.processName = '', this.statusText = ''});
  factory _TicketInfoModel.fromJson(Map<String, dynamic> json) => _$TicketInfoModelFromJson(json);

@override@JsonKey() final  int ticketId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String processName;
@override@JsonKey() final  String statusText;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketInfoModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.statusText, statusText) || other.statusText == statusText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,processName,statusText);

@override
String toString() {
  return 'TicketInfoModel(ticketId: $ticketId, title: $title, processName: $processName, statusText: $statusText)';
}


}

/// @nodoc
abstract mixin class _$TicketInfoModelCopyWith<$Res> implements $TicketInfoModelCopyWith<$Res> {
  factory _$TicketInfoModelCopyWith(_TicketInfoModel value, $Res Function(_TicketInfoModel) _then) = __$TicketInfoModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, String processName, String statusText
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
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? processName = null,Object? statusText = null,}) {
  return _then(_TicketInfoModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,processName: null == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

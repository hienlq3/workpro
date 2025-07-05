// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketDetailModel {

@JsonKey(name: 'TicketInfos') TicketInfoModel? get ticketInfo;
/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketDetailModelCopyWith<TicketDetailModel> get copyWith => _$TicketDetailModelCopyWithImpl<TicketDetailModel>(this as TicketDetailModel, _$identity);

  /// Serializes this TicketDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketDetailModel&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketInfo);

@override
String toString() {
  return 'TicketDetailModel(ticketInfo: $ticketInfo)';
}


}

/// @nodoc
abstract mixin class $TicketDetailModelCopyWith<$Res>  {
  factory $TicketDetailModelCopyWith(TicketDetailModel value, $Res Function(TicketDetailModel) _then) = _$TicketDetailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TicketInfos') TicketInfoModel? ticketInfo
});


$TicketInfoModelCopyWith<$Res>? get ticketInfo;

}
/// @nodoc
class _$TicketDetailModelCopyWithImpl<$Res>
    implements $TicketDetailModelCopyWith<$Res> {
  _$TicketDetailModelCopyWithImpl(this._self, this._then);

  final TicketDetailModel _self;
  final $Res Function(TicketDetailModel) _then;

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketInfo = freezed,}) {
  return _then(_self.copyWith(
ticketInfo: freezed == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as TicketInfoModel?,
  ));
}
/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $TicketInfoModelCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TicketDetailModel implements TicketDetailModel {
  const _TicketDetailModel({@JsonKey(name: 'TicketInfos') this.ticketInfo});
  factory _TicketDetailModel.fromJson(Map<String, dynamic> json) => _$TicketDetailModelFromJson(json);

@override@JsonKey(name: 'TicketInfos') final  TicketInfoModel? ticketInfo;

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketDetailModelCopyWith<_TicketDetailModel> get copyWith => __$TicketDetailModelCopyWithImpl<_TicketDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketDetailModel&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketInfo);

@override
String toString() {
  return 'TicketDetailModel(ticketInfo: $ticketInfo)';
}


}

/// @nodoc
abstract mixin class _$TicketDetailModelCopyWith<$Res> implements $TicketDetailModelCopyWith<$Res> {
  factory _$TicketDetailModelCopyWith(_TicketDetailModel value, $Res Function(_TicketDetailModel) _then) = __$TicketDetailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TicketInfos') TicketInfoModel? ticketInfo
});


@override $TicketInfoModelCopyWith<$Res>? get ticketInfo;

}
/// @nodoc
class __$TicketDetailModelCopyWithImpl<$Res>
    implements _$TicketDetailModelCopyWith<$Res> {
  __$TicketDetailModelCopyWithImpl(this._self, this._then);

  final _TicketDetailModel _self;
  final $Res Function(_TicketDetailModel) _then;

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketInfo = freezed,}) {
  return _then(_TicketDetailModel(
ticketInfo: freezed == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as TicketInfoModel?,
  ));
}

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $TicketInfoModelCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}
}

// dart format on

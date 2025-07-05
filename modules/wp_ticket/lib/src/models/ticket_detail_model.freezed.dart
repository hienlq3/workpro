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

@JsonKey(name: 'TicketInfos') TicketInfoModel get ticketInfo; List<RelationshipItemModel> get relationships; List<RelativeItemModel> get relatives;@JsonKey(name: 'TicketRole') int get ticketRole;@JsonKey(name: 'TicketDetails') TemplateModel get details;
/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketDetailModelCopyWith<TicketDetailModel> get copyWith => _$TicketDetailModelCopyWithImpl<TicketDetailModel>(this as TicketDetailModel, _$identity);

  /// Serializes this TicketDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketDetailModel&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&const DeepCollectionEquality().equals(other.relationships, relationships)&&const DeepCollectionEquality().equals(other.relatives, relatives)&&(identical(other.ticketRole, ticketRole) || other.ticketRole == ticketRole)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketInfo,const DeepCollectionEquality().hash(relationships),const DeepCollectionEquality().hash(relatives),ticketRole,details);

@override
String toString() {
  return 'TicketDetailModel(ticketInfo: $ticketInfo, relationships: $relationships, relatives: $relatives, ticketRole: $ticketRole, details: $details)';
}


}

/// @nodoc
abstract mixin class $TicketDetailModelCopyWith<$Res>  {
  factory $TicketDetailModelCopyWith(TicketDetailModel value, $Res Function(TicketDetailModel) _then) = _$TicketDetailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TicketInfos') TicketInfoModel ticketInfo, List<RelationshipItemModel> relationships, List<RelativeItemModel> relatives,@JsonKey(name: 'TicketRole') int ticketRole,@JsonKey(name: 'TicketDetails') TemplateModel details
});


$TicketInfoModelCopyWith<$Res> get ticketInfo;$TemplateModelCopyWith<$Res> get details;

}
/// @nodoc
class _$TicketDetailModelCopyWithImpl<$Res>
    implements $TicketDetailModelCopyWith<$Res> {
  _$TicketDetailModelCopyWithImpl(this._self, this._then);

  final TicketDetailModel _self;
  final $Res Function(TicketDetailModel) _then;

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketInfo = null,Object? relationships = null,Object? relatives = null,Object? ticketRole = null,Object? details = null,}) {
  return _then(_self.copyWith(
ticketInfo: null == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as TicketInfoModel,relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<RelationshipItemModel>,relatives: null == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as List<RelativeItemModel>,ticketRole: null == ticketRole ? _self.ticketRole : ticketRole // ignore: cast_nullable_to_non_nullable
as int,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as TemplateModel,
  ));
}
/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<$Res> get ticketInfo {
  
  return $TicketInfoModelCopyWith<$Res>(_self.ticketInfo, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateModelCopyWith<$Res> get details {
  
  return $TemplateModelCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TicketDetailModel implements TicketDetailModel {
  const _TicketDetailModel({@JsonKey(name: 'TicketInfos') this.ticketInfo = TicketInfoModel.empty, final  List<RelationshipItemModel> relationships = const [], final  List<RelativeItemModel> relatives = const [], @JsonKey(name: 'TicketRole') this.ticketRole = 0, @JsonKey(name: 'TicketDetails') this.details = TemplateModel.empty}): _relationships = relationships,_relatives = relatives;
  factory _TicketDetailModel.fromJson(Map<String, dynamic> json) => _$TicketDetailModelFromJson(json);

@override@JsonKey(name: 'TicketInfos') final  TicketInfoModel ticketInfo;
 final  List<RelationshipItemModel> _relationships;
@override@JsonKey() List<RelationshipItemModel> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}

 final  List<RelativeItemModel> _relatives;
@override@JsonKey() List<RelativeItemModel> get relatives {
  if (_relatives is EqualUnmodifiableListView) return _relatives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatives);
}

@override@JsonKey(name: 'TicketRole') final  int ticketRole;
@override@JsonKey(name: 'TicketDetails') final  TemplateModel details;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketDetailModel&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&const DeepCollectionEquality().equals(other._relationships, _relationships)&&const DeepCollectionEquality().equals(other._relatives, _relatives)&&(identical(other.ticketRole, ticketRole) || other.ticketRole == ticketRole)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketInfo,const DeepCollectionEquality().hash(_relationships),const DeepCollectionEquality().hash(_relatives),ticketRole,details);

@override
String toString() {
  return 'TicketDetailModel(ticketInfo: $ticketInfo, relationships: $relationships, relatives: $relatives, ticketRole: $ticketRole, details: $details)';
}


}

/// @nodoc
abstract mixin class _$TicketDetailModelCopyWith<$Res> implements $TicketDetailModelCopyWith<$Res> {
  factory _$TicketDetailModelCopyWith(_TicketDetailModel value, $Res Function(_TicketDetailModel) _then) = __$TicketDetailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TicketInfos') TicketInfoModel ticketInfo, List<RelationshipItemModel> relationships, List<RelativeItemModel> relatives,@JsonKey(name: 'TicketRole') int ticketRole,@JsonKey(name: 'TicketDetails') TemplateModel details
});


@override $TicketInfoModelCopyWith<$Res> get ticketInfo;@override $TemplateModelCopyWith<$Res> get details;

}
/// @nodoc
class __$TicketDetailModelCopyWithImpl<$Res>
    implements _$TicketDetailModelCopyWith<$Res> {
  __$TicketDetailModelCopyWithImpl(this._self, this._then);

  final _TicketDetailModel _self;
  final $Res Function(_TicketDetailModel) _then;

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketInfo = null,Object? relationships = null,Object? relatives = null,Object? ticketRole = null,Object? details = null,}) {
  return _then(_TicketDetailModel(
ticketInfo: null == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as TicketInfoModel,relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<RelationshipItemModel>,relatives: null == relatives ? _self._relatives : relatives // ignore: cast_nullable_to_non_nullable
as List<RelativeItemModel>,ticketRole: null == ticketRole ? _self.ticketRole : ticketRole // ignore: cast_nullable_to_non_nullable
as int,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as TemplateModel,
  ));
}

/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoModelCopyWith<$Res> get ticketInfo {
  
  return $TicketInfoModelCopyWith<$Res>(_self.ticketInfo, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of TicketDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemplateModelCopyWith<$Res> get details {
  
  return $TemplateModelCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on

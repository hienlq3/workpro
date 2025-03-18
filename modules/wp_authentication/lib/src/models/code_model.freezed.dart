// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeModel {

 int? get id; String get urlSpro; CodeSSOType get ssoType; String? get clientId; String? get tenantId; String? get code; String? get taskbarColor;
/// Create a copy of CodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeModelCopyWith<CodeModel> get copyWith => _$CodeModelCopyWithImpl<CodeModel>(this as CodeModel, _$identity);

  /// Serializes this CodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.urlSpro, urlSpro) || other.urlSpro == urlSpro)&&(identical(other.ssoType, ssoType) || other.ssoType == ssoType)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.code, code) || other.code == code)&&(identical(other.taskbarColor, taskbarColor) || other.taskbarColor == taskbarColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,urlSpro,ssoType,clientId,tenantId,code,taskbarColor);

@override
String toString() {
  return 'CodeModel(id: $id, urlSpro: $urlSpro, ssoType: $ssoType, clientId: $clientId, tenantId: $tenantId, code: $code, taskbarColor: $taskbarColor)';
}


}

/// @nodoc
abstract mixin class $CodeModelCopyWith<$Res>  {
  factory $CodeModelCopyWith(CodeModel value, $Res Function(CodeModel) _then) = _$CodeModelCopyWithImpl;
@useResult
$Res call({
 int? id, String urlSpro, CodeSSOType ssoType, String? clientId, String? tenantId, String? code, String? taskbarColor
});




}
/// @nodoc
class _$CodeModelCopyWithImpl<$Res>
    implements $CodeModelCopyWith<$Res> {
  _$CodeModelCopyWithImpl(this._self, this._then);

  final CodeModel _self;
  final $Res Function(CodeModel) _then;

/// Create a copy of CodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? urlSpro = null,Object? ssoType = null,Object? clientId = freezed,Object? tenantId = freezed,Object? code = freezed,Object? taskbarColor = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,urlSpro: null == urlSpro ? _self.urlSpro : urlSpro // ignore: cast_nullable_to_non_nullable
as String,ssoType: null == ssoType ? _self.ssoType : ssoType // ignore: cast_nullable_to_non_nullable
as CodeSSOType,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,taskbarColor: freezed == taskbarColor ? _self.taskbarColor : taskbarColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CodeModel extends CodeModel {
  const _CodeModel({this.id, this.urlSpro = '', this.ssoType = CodeSSOType.none, this.clientId, this.tenantId, this.code, this.taskbarColor}): super._();
  factory _CodeModel.fromJson(Map<String, dynamic> json) => _$CodeModelFromJson(json);

@override final  int? id;
@override@JsonKey() final  String urlSpro;
@override@JsonKey() final  CodeSSOType ssoType;
@override final  String? clientId;
@override final  String? tenantId;
@override final  String? code;
@override final  String? taskbarColor;

/// Create a copy of CodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeModelCopyWith<_CodeModel> get copyWith => __$CodeModelCopyWithImpl<_CodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.urlSpro, urlSpro) || other.urlSpro == urlSpro)&&(identical(other.ssoType, ssoType) || other.ssoType == ssoType)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.code, code) || other.code == code)&&(identical(other.taskbarColor, taskbarColor) || other.taskbarColor == taskbarColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,urlSpro,ssoType,clientId,tenantId,code,taskbarColor);

@override
String toString() {
  return 'CodeModel(id: $id, urlSpro: $urlSpro, ssoType: $ssoType, clientId: $clientId, tenantId: $tenantId, code: $code, taskbarColor: $taskbarColor)';
}


}

/// @nodoc
abstract mixin class _$CodeModelCopyWith<$Res> implements $CodeModelCopyWith<$Res> {
  factory _$CodeModelCopyWith(_CodeModel value, $Res Function(_CodeModel) _then) = __$CodeModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String urlSpro, CodeSSOType ssoType, String? clientId, String? tenantId, String? code, String? taskbarColor
});




}
/// @nodoc
class __$CodeModelCopyWithImpl<$Res>
    implements _$CodeModelCopyWith<$Res> {
  __$CodeModelCopyWithImpl(this._self, this._then);

  final _CodeModel _self;
  final $Res Function(_CodeModel) _then;

/// Create a copy of CodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? urlSpro = null,Object? ssoType = null,Object? clientId = freezed,Object? tenantId = freezed,Object? code = freezed,Object? taskbarColor = freezed,}) {
  return _then(_CodeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,urlSpro: null == urlSpro ? _self.urlSpro : urlSpro // ignore: cast_nullable_to_non_nullable
as String,ssoType: null == ssoType ? _self.ssoType : ssoType // ignore: cast_nullable_to_non_nullable
as CodeSSOType,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,taskbarColor: freezed == taskbarColor ? _self.taskbarColor : taskbarColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

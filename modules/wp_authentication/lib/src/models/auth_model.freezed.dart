// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthModel {

@JsonKey(name: 'Email') String get email; String get text; String get value;@JsonKey(name: 'Avatar') String get avatar; String get loginToken;
/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthModelCopyWith<AuthModel> get copyWith => _$AuthModelCopyWithImpl<AuthModel>(this as AuthModel, _$identity);

  /// Serializes this AuthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModel&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.loginToken, loginToken) || other.loginToken == loginToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,text,value,avatar,loginToken);

@override
String toString() {
  return 'AuthModel(email: $email, text: $text, value: $value, avatar: $avatar, loginToken: $loginToken)';
}


}

/// @nodoc
abstract mixin class $AuthModelCopyWith<$Res>  {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) _then) = _$AuthModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Email') String email, String text, String value,@JsonKey(name: 'Avatar') String avatar, String loginToken
});




}
/// @nodoc
class _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._self, this._then);

  final AuthModel _self;
  final $Res Function(AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? text = null,Object? value = null,Object? avatar = null,Object? loginToken = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,loginToken: null == loginToken ? _self.loginToken : loginToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _AuthModel extends AuthModel {
  const _AuthModel({@JsonKey(name: 'Email') this.email = '', this.text = '', this.value = '', @JsonKey(name: 'Avatar') this.avatar = '', this.loginToken = ''}): super._();
  factory _AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

@override@JsonKey(name: 'Email') final  String email;
@override@JsonKey() final  String text;
@override@JsonKey() final  String value;
@override@JsonKey(name: 'Avatar') final  String avatar;
@override@JsonKey() final  String loginToken;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthModelCopyWith<_AuthModel> get copyWith => __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthModel&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.loginToken, loginToken) || other.loginToken == loginToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,text,value,avatar,loginToken);

@override
String toString() {
  return 'AuthModel(email: $email, text: $text, value: $value, avatar: $avatar, loginToken: $loginToken)';
}


}

/// @nodoc
abstract mixin class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(_AuthModel value, $Res Function(_AuthModel) _then) = __$AuthModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Email') String email, String text, String value,@JsonKey(name: 'Avatar') String avatar, String loginToken
});




}
/// @nodoc
class __$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(this._self, this._then);

  final _AuthModel _self;
  final $Res Function(_AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? text = null,Object? value = null,Object? avatar = null,Object? loginToken = null,}) {
  return _then(_AuthModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,loginToken: null == loginToken ? _self.loginToken : loginToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

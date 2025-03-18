// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseModel<T> {

@JsonKey(name: 'ResultCode') int? get resultCode;@JsonKey(name: 'Message') String? get message;@JsonKey(name: 'Data') T? get data;@JsonKey(name: 'ListData') List<T>? get dataList;@JsonKey(name: 'UserInfo') T? get userInfo; String? get language;
/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith => _$BaseResponseModelCopyWithImpl<T, BaseResponseModel<T>>(this as BaseResponseModel<T>, _$identity);

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseModel<T>&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataList, dataList)&&const DeepCollectionEquality().equals(other.userInfo, userInfo)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataList),const DeepCollectionEquality().hash(userInfo),language);

@override
String toString() {
  return 'BaseResponseModel<$T>(resultCode: $resultCode, message: $message, data: $data, dataList: $dataList, userInfo: $userInfo, language: $language)';
}


}

/// @nodoc
abstract mixin class $BaseResponseModelCopyWith<T,$Res>  {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value, $Res Function(BaseResponseModel<T>) _then) = _$BaseResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ResultCode') int? resultCode,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'Data') T? data,@JsonKey(name: 'ListData') List<T>? dataList,@JsonKey(name: 'UserInfo') T? userInfo, String? language
});




}
/// @nodoc
class _$BaseResponseModelCopyWithImpl<T,$Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._self, this._then);

  final BaseResponseModel<T> _self;
  final $Res Function(BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = freezed,Object? message = freezed,Object? data = freezed,Object? dataList = freezed,Object? userInfo = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
resultCode: freezed == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,dataList: freezed == dataList ? _self.dataList : dataList // ignore: cast_nullable_to_non_nullable
as List<T>?,userInfo: freezed == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as T?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseResponseModel<T> implements BaseResponseModel<T> {
  const _BaseResponseModel({@JsonKey(name: 'ResultCode') this.resultCode, @JsonKey(name: 'Message') this.message, @JsonKey(name: 'Data') this.data, @JsonKey(name: 'ListData') final  List<T>? dataList, @JsonKey(name: 'UserInfo') this.userInfo, this.language}): _dataList = dataList;
  factory _BaseResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseResponseModelFromJson(json,fromJsonT);

@override@JsonKey(name: 'ResultCode') final  int? resultCode;
@override@JsonKey(name: 'Message') final  String? message;
@override@JsonKey(name: 'Data') final  T? data;
 final  List<T>? _dataList;
@override@JsonKey(name: 'ListData') List<T>? get dataList {
  final value = _dataList;
  if (value == null) return null;
  if (_dataList is EqualUnmodifiableListView) return _dataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'UserInfo') final  T? userInfo;
@override final  String? language;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseModelCopyWith<T, _BaseResponseModel<T>> get copyWith => __$BaseResponseModelCopyWithImpl<T, _BaseResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseModel<T>&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._dataList, _dataList)&&const DeepCollectionEquality().equals(other.userInfo, userInfo)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_dataList),const DeepCollectionEquality().hash(userInfo),language);

@override
String toString() {
  return 'BaseResponseModel<$T>(resultCode: $resultCode, message: $message, data: $data, dataList: $dataList, userInfo: $userInfo, language: $language)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseModelCopyWith<T,$Res> implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$BaseResponseModelCopyWith(_BaseResponseModel<T> value, $Res Function(_BaseResponseModel<T>) _then) = __$BaseResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ResultCode') int? resultCode,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'Data') T? data,@JsonKey(name: 'ListData') List<T>? dataList,@JsonKey(name: 'UserInfo') T? userInfo, String? language
});




}
/// @nodoc
class __$BaseResponseModelCopyWithImpl<T,$Res>
    implements _$BaseResponseModelCopyWith<T, $Res> {
  __$BaseResponseModelCopyWithImpl(this._self, this._then);

  final _BaseResponseModel<T> _self;
  final $Res Function(_BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = freezed,Object? message = freezed,Object? data = freezed,Object? dataList = freezed,Object? userInfo = freezed,Object? language = freezed,}) {
  return _then(_BaseResponseModel<T>(
resultCode: freezed == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,dataList: freezed == dataList ? _self._dataList : dataList // ignore: cast_nullable_to_non_nullable
as List<T>?,userInfo: freezed == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as T?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponseModel<T> {
  @JsonKey(name: 'ResultCode')
  int? get resultCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ListData')
  List<T>? get dataList => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserInfo')
  T? get userInfo => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<T, $Res> {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value,
          $Res Function(BaseResponseModel<T>) then) =
      _$BaseResponseModelCopyWithImpl<T, $Res, BaseResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ResultCode') int? resultCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ListData') List<T>? dataList,
      @JsonKey(name: 'UserInfo') T? userInfo,
      String? language});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<T, $Res,
        $Val extends BaseResponseModel<T>>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? dataList = freezed,
    Object? userInfo = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      dataList: freezed == dataList
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as T?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseModelImplCopyWith<T, $Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$$BaseResponseModelImplCopyWith(_$BaseResponseModelImpl<T> value,
          $Res Function(_$BaseResponseModelImpl<T>) then) =
      __$$BaseResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ResultCode') int? resultCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ListData') List<T>? dataList,
      @JsonKey(name: 'UserInfo') T? userInfo,
      String? language});
}

/// @nodoc
class __$$BaseResponseModelImplCopyWithImpl<T, $Res>
    extends _$BaseResponseModelCopyWithImpl<T, $Res, _$BaseResponseModelImpl<T>>
    implements _$$BaseResponseModelImplCopyWith<T, $Res> {
  __$$BaseResponseModelImplCopyWithImpl(_$BaseResponseModelImpl<T> _value,
      $Res Function(_$BaseResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? dataList = freezed,
    Object? userInfo = freezed,
    Object? language = freezed,
  }) {
    return _then(_$BaseResponseModelImpl<T>(
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      dataList: freezed == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as T?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseModelImpl<T> implements _BaseResponseModel<T> {
  const _$BaseResponseModelImpl(
      {@JsonKey(name: 'ResultCode') this.resultCode,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ListData') final List<T>? dataList,
      @JsonKey(name: 'UserInfo') this.userInfo,
      this.language})
      : _dataList = dataList;

  factory _$BaseResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'ResultCode')
  final int? resultCode;
  @override
  @JsonKey(name: 'Message')
  final String? message;
  @override
  @JsonKey(name: 'Data')
  final T? data;
  final List<T>? _dataList;
  @override
  @JsonKey(name: 'ListData')
  List<T>? get dataList {
    final value = _dataList;
    if (value == null) return null;
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'UserInfo')
  final T? userInfo;
  @override
  final String? language;

  @override
  String toString() {
    return 'BaseResponseModel<$T>(resultCode: $resultCode, message: $message, data: $data, dataList: $dataList, userInfo: $userInfo, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseModelImpl<T> &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._dataList, _dataList) &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      resultCode,
      message,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_dataList),
      const DeepCollectionEquality().hash(userInfo),
      language);

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith =>
          __$$BaseResponseModelImplCopyWithImpl<T, _$BaseResponseModelImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponseModel<T> implements BaseResponseModel<T> {
  const factory _BaseResponseModel(
      {@JsonKey(name: 'ResultCode') final int? resultCode,
      @JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Data') final T? data,
      @JsonKey(name: 'ListData') final List<T>? dataList,
      @JsonKey(name: 'UserInfo') final T? userInfo,
      final String? language}) = _$BaseResponseModelImpl<T>;

  factory _BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseModelImpl<T>.fromJson;

  @override
  @JsonKey(name: 'ResultCode')
  int? get resultCode;
  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  T? get data;
  @override
  @JsonKey(name: 'ListData')
  List<T>? get dataList;
  @override
  @JsonKey(name: 'UserInfo')
  T? get userInfo;
  @override
  String? get language;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

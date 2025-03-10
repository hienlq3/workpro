// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CodeModel _$CodeModelFromJson(Map<String, dynamic> json) {
  return _CodeModel.fromJson(json);
}

/// @nodoc
mixin _$CodeModel {
  int? get id => throw _privateConstructorUsedError;
  String get urlSpro => throw _privateConstructorUsedError;
  CodeSSOType get ssoType => throw _privateConstructorUsedError;
  String? get clientId => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this CodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeModelCopyWith<CodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeModelCopyWith<$Res> {
  factory $CodeModelCopyWith(CodeModel value, $Res Function(CodeModel) then) =
      _$CodeModelCopyWithImpl<$Res, CodeModel>;
  @useResult
  $Res call({
    int? id,
    String urlSpro,
    CodeSSOType ssoType,
    String? clientId,
    String? tenantId,
    String? code,
  });
}

/// @nodoc
class _$CodeModelCopyWithImpl<$Res, $Val extends CodeModel>
    implements $CodeModelCopyWith<$Res> {
  _$CodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? urlSpro = null,
    Object? ssoType = null,
    Object? clientId = freezed,
    Object? tenantId = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            urlSpro:
                null == urlSpro
                    ? _value.urlSpro
                    : urlSpro // ignore: cast_nullable_to_non_nullable
                        as String,
            ssoType:
                null == ssoType
                    ? _value.ssoType
                    : ssoType // ignore: cast_nullable_to_non_nullable
                        as CodeSSOType,
            clientId:
                freezed == clientId
                    ? _value.clientId
                    : clientId // ignore: cast_nullable_to_non_nullable
                        as String?,
            tenantId:
                freezed == tenantId
                    ? _value.tenantId
                    : tenantId // ignore: cast_nullable_to_non_nullable
                        as String?,
            code:
                freezed == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CodeModelImplCopyWith<$Res>
    implements $CodeModelCopyWith<$Res> {
  factory _$$CodeModelImplCopyWith(
    _$CodeModelImpl value,
    $Res Function(_$CodeModelImpl) then,
  ) = __$$CodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String urlSpro,
    CodeSSOType ssoType,
    String? clientId,
    String? tenantId,
    String? code,
  });
}

/// @nodoc
class __$$CodeModelImplCopyWithImpl<$Res>
    extends _$CodeModelCopyWithImpl<$Res, _$CodeModelImpl>
    implements _$$CodeModelImplCopyWith<$Res> {
  __$$CodeModelImplCopyWithImpl(
    _$CodeModelImpl _value,
    $Res Function(_$CodeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? urlSpro = null,
    Object? ssoType = null,
    Object? clientId = freezed,
    Object? tenantId = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _$CodeModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        urlSpro:
            null == urlSpro
                ? _value.urlSpro
                : urlSpro // ignore: cast_nullable_to_non_nullable
                    as String,
        ssoType:
            null == ssoType
                ? _value.ssoType
                : ssoType // ignore: cast_nullable_to_non_nullable
                    as CodeSSOType,
        clientId:
            freezed == clientId
                ? _value.clientId
                : clientId // ignore: cast_nullable_to_non_nullable
                    as String?,
        tenantId:
            freezed == tenantId
                ? _value.tenantId
                : tenantId // ignore: cast_nullable_to_non_nullable
                    as String?,
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeModelImpl extends _CodeModel {
  const _$CodeModelImpl({
    this.id,
    this.urlSpro = '',
    this.ssoType = CodeSSOType.none,
    this.clientId,
    this.tenantId,
    this.code,
  }) : super._();

  factory _$CodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String urlSpro;
  @override
  @JsonKey()
  final CodeSSOType ssoType;
  @override
  final String? clientId;
  @override
  final String? tenantId;
  @override
  final String? code;

  @override
  String toString() {
    return 'CodeModel(id: $id, urlSpro: $urlSpro, ssoType: $ssoType, clientId: $clientId, tenantId: $tenantId, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.urlSpro, urlSpro) || other.urlSpro == urlSpro) &&
            (identical(other.ssoType, ssoType) || other.ssoType == ssoType) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, urlSpro, ssoType, clientId, tenantId, code);

  /// Create a copy of CodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeModelImplCopyWith<_$CodeModelImpl> get copyWith =>
      __$$CodeModelImplCopyWithImpl<_$CodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeModelImplToJson(this);
  }
}

abstract class _CodeModel extends CodeModel {
  const factory _CodeModel({
    final int? id,
    final String urlSpro,
    final CodeSSOType ssoType,
    final String? clientId,
    final String? tenantId,
    final String? code,
  }) = _$CodeModelImpl;
  const _CodeModel._() : super._();

  factory _CodeModel.fromJson(Map<String, dynamic> json) =
      _$CodeModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get urlSpro;
  @override
  CodeSSOType get ssoType;
  @override
  String? get clientId;
  @override
  String? get tenantId;
  @override
  String? get code;

  /// Create a copy of CodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeModelImplCopyWith<_$CodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemplateModel {

@JsonKey(name: 'individual') List<BaseFormModel> get individuals; BaseFormModel? get matrix; BaseFormModel? get table; List<BaseFormModel>? get multitable;
/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateModelCopyWith<TemplateModel> get copyWith => _$TemplateModelCopyWithImpl<TemplateModel>(this as TemplateModel, _$identity);

  /// Serializes this TemplateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateModel&&const DeepCollectionEquality().equals(other.individuals, individuals)&&(identical(other.matrix, matrix) || other.matrix == matrix)&&(identical(other.table, table) || other.table == table)&&const DeepCollectionEquality().equals(other.multitable, multitable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(individuals),matrix,table,const DeepCollectionEquality().hash(multitable));

@override
String toString() {
  return 'TemplateModel(individuals: $individuals, matrix: $matrix, table: $table, multitable: $multitable)';
}


}

/// @nodoc
abstract mixin class $TemplateModelCopyWith<$Res>  {
  factory $TemplateModelCopyWith(TemplateModel value, $Res Function(TemplateModel) _then) = _$TemplateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'individual') List<BaseFormModel> individuals, BaseFormModel? matrix, BaseFormModel? table, List<BaseFormModel>? multitable
});


$BaseFormModelCopyWith<$Res>? get matrix;$BaseFormModelCopyWith<$Res>? get table;

}
/// @nodoc
class _$TemplateModelCopyWithImpl<$Res>
    implements $TemplateModelCopyWith<$Res> {
  _$TemplateModelCopyWithImpl(this._self, this._then);

  final TemplateModel _self;
  final $Res Function(TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? individuals = null,Object? matrix = freezed,Object? table = freezed,Object? multitable = freezed,}) {
  return _then(_self.copyWith(
individuals: null == individuals ? _self.individuals : individuals // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>,matrix: freezed == matrix ? _self.matrix : matrix // ignore: cast_nullable_to_non_nullable
as BaseFormModel?,table: freezed == table ? _self.table : table // ignore: cast_nullable_to_non_nullable
as BaseFormModel?,multitable: freezed == multitable ? _self.multitable : multitable // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,
  ));
}
/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseFormModelCopyWith<$Res>? get matrix {
    if (_self.matrix == null) {
    return null;
  }

  return $BaseFormModelCopyWith<$Res>(_self.matrix!, (value) {
    return _then(_self.copyWith(matrix: value));
  });
}/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseFormModelCopyWith<$Res>? get table {
    if (_self.table == null) {
    return null;
  }

  return $BaseFormModelCopyWith<$Res>(_self.table!, (value) {
    return _then(_self.copyWith(table: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TemplateModel implements TemplateModel {
  const _TemplateModel({@JsonKey(name: 'individual') this.individuals = const [], this.matrix, this.table, this.multitable});
  factory _TemplateModel.fromJson(Map<String, dynamic> json) => _$TemplateModelFromJson(json);

@override@JsonKey(name: 'individual') final  List<BaseFormModel> individuals;
@override final  BaseFormModel? matrix;
@override final  BaseFormModel? table;
@override final  List<BaseFormModel>? multitable;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateModelCopyWith<_TemplateModel> get copyWith => __$TemplateModelCopyWithImpl<_TemplateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateModel&&const DeepCollectionEquality().equals(other.individuals, individuals)&&(identical(other.matrix, matrix) || other.matrix == matrix)&&(identical(other.table, table) || other.table == table)&&const DeepCollectionEquality().equals(other.multitable, multitable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(individuals),matrix,table,const DeepCollectionEquality().hash(multitable));

@override
String toString() {
  return 'TemplateModel(individuals: $individuals, matrix: $matrix, table: $table, multitable: $multitable)';
}


}

/// @nodoc
abstract mixin class _$TemplateModelCopyWith<$Res> implements $TemplateModelCopyWith<$Res> {
  factory _$TemplateModelCopyWith(_TemplateModel value, $Res Function(_TemplateModel) _then) = __$TemplateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'individual') List<BaseFormModel> individuals, BaseFormModel? matrix, BaseFormModel? table, List<BaseFormModel>? multitable
});


@override $BaseFormModelCopyWith<$Res>? get matrix;@override $BaseFormModelCopyWith<$Res>? get table;

}
/// @nodoc
class __$TemplateModelCopyWithImpl<$Res>
    implements _$TemplateModelCopyWith<$Res> {
  __$TemplateModelCopyWithImpl(this._self, this._then);

  final _TemplateModel _self;
  final $Res Function(_TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? individuals = null,Object? matrix = freezed,Object? table = freezed,Object? multitable = freezed,}) {
  return _then(_TemplateModel(
individuals: null == individuals ? _self.individuals : individuals // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>,matrix: freezed == matrix ? _self.matrix : matrix // ignore: cast_nullable_to_non_nullable
as BaseFormModel?,table: freezed == table ? _self.table : table // ignore: cast_nullable_to_non_nullable
as BaseFormModel?,multitable: freezed == multitable ? _self.multitable : multitable // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,
  ));
}

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseFormModelCopyWith<$Res>? get matrix {
    if (_self.matrix == null) {
    return null;
  }

  return $BaseFormModelCopyWith<$Res>(_self.matrix!, (value) {
    return _then(_self.copyWith(matrix: value));
  });
}/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseFormModelCopyWith<$Res>? get table {
    if (_self.table == null) {
    return null;
  }

  return $BaseFormModelCopyWith<$Res>(_self.table!, (value) {
    return _then(_self.copyWith(table: value));
  });
}
}

// dart format on

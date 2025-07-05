// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormConditionModel {

 bool? get required;@JsonKey(name: 'min-length') int? get minLength;@JsonKey(name: 'max-length') int? get maxLength;@JsonKey(name: 'system-format') SystemFormatModel? get systemFormat; SystemFormatModel? get format; DisplayConditionModel? get displayCondition; MaxConditionModel? get max; MinConditionModel? get min;@JsonKey(defaultValue: [], includeToJson: false) List<MasterDataModel>? get mdList; List<BaseSelectItemModel>? get data;
/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormConditionModelCopyWith<FormConditionModel> get copyWith => _$FormConditionModelCopyWithImpl<FormConditionModel>(this as FormConditionModel, _$identity);

  /// Serializes this FormConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormConditionModel&&(identical(other.required, required) || other.required == required)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.systemFormat, systemFormat) || other.systemFormat == systemFormat)&&(identical(other.format, format) || other.format == format)&&(identical(other.displayCondition, displayCondition) || other.displayCondition == displayCondition)&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min)&&const DeepCollectionEquality().equals(other.mdList, mdList)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,required,minLength,maxLength,systemFormat,format,displayCondition,max,min,const DeepCollectionEquality().hash(mdList),const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FormConditionModel(required: $required, minLength: $minLength, maxLength: $maxLength, systemFormat: $systemFormat, format: $format, displayCondition: $displayCondition, max: $max, min: $min, mdList: $mdList, data: $data)';
}


}

/// @nodoc
abstract mixin class $FormConditionModelCopyWith<$Res>  {
  factory $FormConditionModelCopyWith(FormConditionModel value, $Res Function(FormConditionModel) _then) = _$FormConditionModelCopyWithImpl;
@useResult
$Res call({
 bool? required,@JsonKey(name: 'min-length') int? minLength,@JsonKey(name: 'max-length') int? maxLength,@JsonKey(name: 'system-format') SystemFormatModel? systemFormat, SystemFormatModel? format, DisplayConditionModel? displayCondition, MaxConditionModel? max, MinConditionModel? min,@JsonKey(defaultValue: [], includeToJson: false) List<MasterDataModel>? mdList, List<BaseSelectItemModel>? data
});


$SystemFormatModelCopyWith<$Res>? get systemFormat;$SystemFormatModelCopyWith<$Res>? get format;$DisplayConditionModelCopyWith<$Res>? get displayCondition;$MaxConditionModelCopyWith<$Res>? get max;$MinConditionModelCopyWith<$Res>? get min;

}
/// @nodoc
class _$FormConditionModelCopyWithImpl<$Res>
    implements $FormConditionModelCopyWith<$Res> {
  _$FormConditionModelCopyWithImpl(this._self, this._then);

  final FormConditionModel _self;
  final $Res Function(FormConditionModel) _then;

/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? systemFormat = freezed,Object? format = freezed,Object? displayCondition = freezed,Object? max = freezed,Object? min = freezed,Object? mdList = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,systemFormat: freezed == systemFormat ? _self.systemFormat : systemFormat // ignore: cast_nullable_to_non_nullable
as SystemFormatModel?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as SystemFormatModel?,displayCondition: freezed == displayCondition ? _self.displayCondition : displayCondition // ignore: cast_nullable_to_non_nullable
as DisplayConditionModel?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as MaxConditionModel?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as MinConditionModel?,mdList: freezed == mdList ? _self.mdList : mdList // ignore: cast_nullable_to_non_nullable
as List<MasterDataModel>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BaseSelectItemModel>?,
  ));
}
/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemFormatModelCopyWith<$Res>? get systemFormat {
    if (_self.systemFormat == null) {
    return null;
  }

  return $SystemFormatModelCopyWith<$Res>(_self.systemFormat!, (value) {
    return _then(_self.copyWith(systemFormat: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemFormatModelCopyWith<$Res>? get format {
    if (_self.format == null) {
    return null;
  }

  return $SystemFormatModelCopyWith<$Res>(_self.format!, (value) {
    return _then(_self.copyWith(format: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConditionModelCopyWith<$Res>? get displayCondition {
    if (_self.displayCondition == null) {
    return null;
  }

  return $DisplayConditionModelCopyWith<$Res>(_self.displayCondition!, (value) {
    return _then(_self.copyWith(displayCondition: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaxConditionModelCopyWith<$Res>? get max {
    if (_self.max == null) {
    return null;
  }

  return $MaxConditionModelCopyWith<$Res>(_self.max!, (value) {
    return _then(_self.copyWith(max: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MinConditionModelCopyWith<$Res>? get min {
    if (_self.min == null) {
    return null;
  }

  return $MinConditionModelCopyWith<$Res>(_self.min!, (value) {
    return _then(_self.copyWith(min: value));
  });
}
}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _FormConditionModel implements FormConditionModel {
  const _FormConditionModel({this.required, @JsonKey(name: 'min-length') this.minLength, @JsonKey(name: 'max-length') this.maxLength, @JsonKey(name: 'system-format') this.systemFormat, this.format, this.displayCondition, this.max, this.min, @JsonKey(defaultValue: [], includeToJson: false) final  List<MasterDataModel>? mdList, final  List<BaseSelectItemModel>? data}): _mdList = mdList,_data = data;
  factory _FormConditionModel.fromJson(Map<String, dynamic> json) => _$FormConditionModelFromJson(json);

@override final  bool? required;
@override@JsonKey(name: 'min-length') final  int? minLength;
@override@JsonKey(name: 'max-length') final  int? maxLength;
@override@JsonKey(name: 'system-format') final  SystemFormatModel? systemFormat;
@override final  SystemFormatModel? format;
@override final  DisplayConditionModel? displayCondition;
@override final  MaxConditionModel? max;
@override final  MinConditionModel? min;
 final  List<MasterDataModel>? _mdList;
@override@JsonKey(defaultValue: [], includeToJson: false) List<MasterDataModel>? get mdList {
  final value = _mdList;
  if (value == null) return null;
  if (_mdList is EqualUnmodifiableListView) return _mdList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BaseSelectItemModel>? _data;
@override List<BaseSelectItemModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormConditionModelCopyWith<_FormConditionModel> get copyWith => __$FormConditionModelCopyWithImpl<_FormConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormConditionModel&&(identical(other.required, required) || other.required == required)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.systemFormat, systemFormat) || other.systemFormat == systemFormat)&&(identical(other.format, format) || other.format == format)&&(identical(other.displayCondition, displayCondition) || other.displayCondition == displayCondition)&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min)&&const DeepCollectionEquality().equals(other._mdList, _mdList)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,required,minLength,maxLength,systemFormat,format,displayCondition,max,min,const DeepCollectionEquality().hash(_mdList),const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FormConditionModel(required: $required, minLength: $minLength, maxLength: $maxLength, systemFormat: $systemFormat, format: $format, displayCondition: $displayCondition, max: $max, min: $min, mdList: $mdList, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FormConditionModelCopyWith<$Res> implements $FormConditionModelCopyWith<$Res> {
  factory _$FormConditionModelCopyWith(_FormConditionModel value, $Res Function(_FormConditionModel) _then) = __$FormConditionModelCopyWithImpl;
@override @useResult
$Res call({
 bool? required,@JsonKey(name: 'min-length') int? minLength,@JsonKey(name: 'max-length') int? maxLength,@JsonKey(name: 'system-format') SystemFormatModel? systemFormat, SystemFormatModel? format, DisplayConditionModel? displayCondition, MaxConditionModel? max, MinConditionModel? min,@JsonKey(defaultValue: [], includeToJson: false) List<MasterDataModel>? mdList, List<BaseSelectItemModel>? data
});


@override $SystemFormatModelCopyWith<$Res>? get systemFormat;@override $SystemFormatModelCopyWith<$Res>? get format;@override $DisplayConditionModelCopyWith<$Res>? get displayCondition;@override $MaxConditionModelCopyWith<$Res>? get max;@override $MinConditionModelCopyWith<$Res>? get min;

}
/// @nodoc
class __$FormConditionModelCopyWithImpl<$Res>
    implements _$FormConditionModelCopyWith<$Res> {
  __$FormConditionModelCopyWithImpl(this._self, this._then);

  final _FormConditionModel _self;
  final $Res Function(_FormConditionModel) _then;

/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? systemFormat = freezed,Object? format = freezed,Object? displayCondition = freezed,Object? max = freezed,Object? min = freezed,Object? mdList = freezed,Object? data = freezed,}) {
  return _then(_FormConditionModel(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,systemFormat: freezed == systemFormat ? _self.systemFormat : systemFormat // ignore: cast_nullable_to_non_nullable
as SystemFormatModel?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as SystemFormatModel?,displayCondition: freezed == displayCondition ? _self.displayCondition : displayCondition // ignore: cast_nullable_to_non_nullable
as DisplayConditionModel?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as MaxConditionModel?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as MinConditionModel?,mdList: freezed == mdList ? _self._mdList : mdList // ignore: cast_nullable_to_non_nullable
as List<MasterDataModel>?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BaseSelectItemModel>?,
  ));
}

/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemFormatModelCopyWith<$Res>? get systemFormat {
    if (_self.systemFormat == null) {
    return null;
  }

  return $SystemFormatModelCopyWith<$Res>(_self.systemFormat!, (value) {
    return _then(_self.copyWith(systemFormat: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemFormatModelCopyWith<$Res>? get format {
    if (_self.format == null) {
    return null;
  }

  return $SystemFormatModelCopyWith<$Res>(_self.format!, (value) {
    return _then(_self.copyWith(format: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConditionModelCopyWith<$Res>? get displayCondition {
    if (_self.displayCondition == null) {
    return null;
  }

  return $DisplayConditionModelCopyWith<$Res>(_self.displayCondition!, (value) {
    return _then(_self.copyWith(displayCondition: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaxConditionModelCopyWith<$Res>? get max {
    if (_self.max == null) {
    return null;
  }

  return $MaxConditionModelCopyWith<$Res>(_self.max!, (value) {
    return _then(_self.copyWith(max: value));
  });
}/// Create a copy of FormConditionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MinConditionModelCopyWith<$Res>? get min {
    if (_self.min == null) {
    return null;
  }

  return $MinConditionModelCopyWith<$Res>(_self.min!, (value) {
    return _then(_self.copyWith(min: value));
  });
}
}

// dart format on

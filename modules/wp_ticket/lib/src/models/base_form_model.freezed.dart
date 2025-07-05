// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseFormModel {

 bool? get display; String get nameText; dynamic get value; int? get id; int? get definedId; int? get splitterId; String get text; int? get position; List<BaseFormModel>? get columns; List<BaseFormModel>? get rows; List<BaseFormModel>? get values;@JsonKey(readValue: typeReader) dynamic get type; String? get filenames; String? get editableAttachmentBlock; FormConditionModel? get conditions; DisplayConfigModel? get displayConfig;@JsonKey(readValue: defaultDisplayReader, includeToJson: false) bool? get defaultDisplay;@JsonKey(defaultValue: -1, includeToJson: false) dynamic get index; int? get columnId; BaseControlType? get controlType; MasterDataConfigModel? get mdConfig; String? get placeholderText; String? get mobileValue;
/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseFormModelCopyWith<BaseFormModel> get copyWith => _$BaseFormModelCopyWithImpl<BaseFormModel>(this as BaseFormModel, _$identity);

  /// Serializes this BaseFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseFormModel&&(identical(other.display, display) || other.display == display)&&(identical(other.nameText, nameText) || other.nameText == nameText)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.id, id) || other.id == id)&&(identical(other.definedId, definedId) || other.definedId == definedId)&&(identical(other.splitterId, splitterId) || other.splitterId == splitterId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.columns, columns)&&const DeepCollectionEquality().equals(other.rows, rows)&&const DeepCollectionEquality().equals(other.values, values)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.filenames, filenames) || other.filenames == filenames)&&(identical(other.editableAttachmentBlock, editableAttachmentBlock) || other.editableAttachmentBlock == editableAttachmentBlock)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.displayConfig, displayConfig) || other.displayConfig == displayConfig)&&(identical(other.defaultDisplay, defaultDisplay) || other.defaultDisplay == defaultDisplay)&&const DeepCollectionEquality().equals(other.index, index)&&(identical(other.columnId, columnId) || other.columnId == columnId)&&(identical(other.controlType, controlType) || other.controlType == controlType)&&(identical(other.mdConfig, mdConfig) || other.mdConfig == mdConfig)&&(identical(other.placeholderText, placeholderText) || other.placeholderText == placeholderText)&&(identical(other.mobileValue, mobileValue) || other.mobileValue == mobileValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,display,nameText,const DeepCollectionEquality().hash(value),id,definedId,splitterId,text,position,const DeepCollectionEquality().hash(columns),const DeepCollectionEquality().hash(rows),const DeepCollectionEquality().hash(values),const DeepCollectionEquality().hash(type),filenames,editableAttachmentBlock,conditions,displayConfig,defaultDisplay,const DeepCollectionEquality().hash(index),columnId,controlType,mdConfig,placeholderText,mobileValue]);

@override
String toString() {
  return 'BaseFormModel(display: $display, nameText: $nameText, value: $value, id: $id, definedId: $definedId, splitterId: $splitterId, text: $text, position: $position, columns: $columns, rows: $rows, values: $values, type: $type, filenames: $filenames, editableAttachmentBlock: $editableAttachmentBlock, conditions: $conditions, displayConfig: $displayConfig, defaultDisplay: $defaultDisplay, index: $index, columnId: $columnId, controlType: $controlType, mdConfig: $mdConfig, placeholderText: $placeholderText, mobileValue: $mobileValue)';
}


}

/// @nodoc
abstract mixin class $BaseFormModelCopyWith<$Res>  {
  factory $BaseFormModelCopyWith(BaseFormModel value, $Res Function(BaseFormModel) _then) = _$BaseFormModelCopyWithImpl;
@useResult
$Res call({
 bool? display, String nameText, dynamic value, int? id, int? definedId, int? splitterId, String text, int? position, List<BaseFormModel>? columns, List<BaseFormModel>? rows, List<BaseFormModel>? values,@JsonKey(readValue: typeReader) dynamic type, String? filenames, String? editableAttachmentBlock, FormConditionModel? conditions, DisplayConfigModel? displayConfig,@JsonKey(readValue: defaultDisplayReader, includeToJson: false) bool? defaultDisplay,@JsonKey(defaultValue: -1, includeToJson: false) dynamic index, int? columnId, BaseControlType? controlType, MasterDataConfigModel? mdConfig, String? placeholderText, String? mobileValue
});


$FormConditionModelCopyWith<$Res>? get conditions;$DisplayConfigModelCopyWith<$Res>? get displayConfig;$MasterDataConfigModelCopyWith<$Res>? get mdConfig;

}
/// @nodoc
class _$BaseFormModelCopyWithImpl<$Res>
    implements $BaseFormModelCopyWith<$Res> {
  _$BaseFormModelCopyWithImpl(this._self, this._then);

  final BaseFormModel _self;
  final $Res Function(BaseFormModel) _then;

/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? display = freezed,Object? nameText = null,Object? value = freezed,Object? id = freezed,Object? definedId = freezed,Object? splitterId = freezed,Object? text = null,Object? position = freezed,Object? columns = freezed,Object? rows = freezed,Object? values = freezed,Object? type = freezed,Object? filenames = freezed,Object? editableAttachmentBlock = freezed,Object? conditions = freezed,Object? displayConfig = freezed,Object? defaultDisplay = freezed,Object? index = freezed,Object? columnId = freezed,Object? controlType = freezed,Object? mdConfig = freezed,Object? placeholderText = freezed,Object? mobileValue = freezed,}) {
  return _then(_self.copyWith(
display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool?,nameText: null == nameText ? _self.nameText : nameText // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,definedId: freezed == definedId ? _self.definedId : definedId // ignore: cast_nullable_to_non_nullable
as int?,splitterId: freezed == splitterId ? _self.splitterId : splitterId // ignore: cast_nullable_to_non_nullable
as int?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,columns: freezed == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,rows: freezed == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,filenames: freezed == filenames ? _self.filenames : filenames // ignore: cast_nullable_to_non_nullable
as String?,editableAttachmentBlock: freezed == editableAttachmentBlock ? _self.editableAttachmentBlock : editableAttachmentBlock // ignore: cast_nullable_to_non_nullable
as String?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as FormConditionModel?,displayConfig: freezed == displayConfig ? _self.displayConfig : displayConfig // ignore: cast_nullable_to_non_nullable
as DisplayConfigModel?,defaultDisplay: freezed == defaultDisplay ? _self.defaultDisplay : defaultDisplay // ignore: cast_nullable_to_non_nullable
as bool?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as dynamic,columnId: freezed == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int?,controlType: freezed == controlType ? _self.controlType : controlType // ignore: cast_nullable_to_non_nullable
as BaseControlType?,mdConfig: freezed == mdConfig ? _self.mdConfig : mdConfig // ignore: cast_nullable_to_non_nullable
as MasterDataConfigModel?,placeholderText: freezed == placeholderText ? _self.placeholderText : placeholderText // ignore: cast_nullable_to_non_nullable
as String?,mobileValue: freezed == mobileValue ? _self.mobileValue : mobileValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormConditionModelCopyWith<$Res>? get conditions {
    if (_self.conditions == null) {
    return null;
  }

  return $FormConditionModelCopyWith<$Res>(_self.conditions!, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConfigModelCopyWith<$Res>? get displayConfig {
    if (_self.displayConfig == null) {
    return null;
  }

  return $DisplayConfigModelCopyWith<$Res>(_self.displayConfig!, (value) {
    return _then(_self.copyWith(displayConfig: value));
  });
}/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterDataConfigModelCopyWith<$Res>? get mdConfig {
    if (_self.mdConfig == null) {
    return null;
  }

  return $MasterDataConfigModelCopyWith<$Res>(_self.mdConfig!, (value) {
    return _then(_self.copyWith(mdConfig: value));
  });
}
}


/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _BaseFormModel implements BaseFormModel {
  const _BaseFormModel({this.display, this.nameText = '', this.value, this.id, this.definedId, this.splitterId, this.text = '', this.position, final  List<BaseFormModel>? columns, final  List<BaseFormModel>? rows, final  List<BaseFormModel>? values, @JsonKey(readValue: typeReader) this.type, this.filenames, this.editableAttachmentBlock, this.conditions, this.displayConfig, @JsonKey(readValue: defaultDisplayReader, includeToJson: false) this.defaultDisplay, @JsonKey(defaultValue: -1, includeToJson: false) this.index, this.columnId, this.controlType, this.mdConfig, this.placeholderText, this.mobileValue}): _columns = columns,_rows = rows,_values = values;
  factory _BaseFormModel.fromJson(Map<String, dynamic> json) => _$BaseFormModelFromJson(json);

@override final  bool? display;
@override@JsonKey() final  String nameText;
@override final  dynamic value;
@override final  int? id;
@override final  int? definedId;
@override final  int? splitterId;
@override@JsonKey() final  String text;
@override final  int? position;
 final  List<BaseFormModel>? _columns;
@override List<BaseFormModel>? get columns {
  final value = _columns;
  if (value == null) return null;
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BaseFormModel>? _rows;
@override List<BaseFormModel>? get rows {
  final value = _rows;
  if (value == null) return null;
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BaseFormModel>? _values;
@override List<BaseFormModel>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(readValue: typeReader) final  dynamic type;
@override final  String? filenames;
@override final  String? editableAttachmentBlock;
@override final  FormConditionModel? conditions;
@override final  DisplayConfigModel? displayConfig;
@override@JsonKey(readValue: defaultDisplayReader, includeToJson: false) final  bool? defaultDisplay;
@override@JsonKey(defaultValue: -1, includeToJson: false) final  dynamic index;
@override final  int? columnId;
@override final  BaseControlType? controlType;
@override final  MasterDataConfigModel? mdConfig;
@override final  String? placeholderText;
@override final  String? mobileValue;

/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseFormModelCopyWith<_BaseFormModel> get copyWith => __$BaseFormModelCopyWithImpl<_BaseFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseFormModel&&(identical(other.display, display) || other.display == display)&&(identical(other.nameText, nameText) || other.nameText == nameText)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.id, id) || other.id == id)&&(identical(other.definedId, definedId) || other.definedId == definedId)&&(identical(other.splitterId, splitterId) || other.splitterId == splitterId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._columns, _columns)&&const DeepCollectionEquality().equals(other._rows, _rows)&&const DeepCollectionEquality().equals(other._values, _values)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.filenames, filenames) || other.filenames == filenames)&&(identical(other.editableAttachmentBlock, editableAttachmentBlock) || other.editableAttachmentBlock == editableAttachmentBlock)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.displayConfig, displayConfig) || other.displayConfig == displayConfig)&&(identical(other.defaultDisplay, defaultDisplay) || other.defaultDisplay == defaultDisplay)&&const DeepCollectionEquality().equals(other.index, index)&&(identical(other.columnId, columnId) || other.columnId == columnId)&&(identical(other.controlType, controlType) || other.controlType == controlType)&&(identical(other.mdConfig, mdConfig) || other.mdConfig == mdConfig)&&(identical(other.placeholderText, placeholderText) || other.placeholderText == placeholderText)&&(identical(other.mobileValue, mobileValue) || other.mobileValue == mobileValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,display,nameText,const DeepCollectionEquality().hash(value),id,definedId,splitterId,text,position,const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_rows),const DeepCollectionEquality().hash(_values),const DeepCollectionEquality().hash(type),filenames,editableAttachmentBlock,conditions,displayConfig,defaultDisplay,const DeepCollectionEquality().hash(index),columnId,controlType,mdConfig,placeholderText,mobileValue]);

@override
String toString() {
  return 'BaseFormModel(display: $display, nameText: $nameText, value: $value, id: $id, definedId: $definedId, splitterId: $splitterId, text: $text, position: $position, columns: $columns, rows: $rows, values: $values, type: $type, filenames: $filenames, editableAttachmentBlock: $editableAttachmentBlock, conditions: $conditions, displayConfig: $displayConfig, defaultDisplay: $defaultDisplay, index: $index, columnId: $columnId, controlType: $controlType, mdConfig: $mdConfig, placeholderText: $placeholderText, mobileValue: $mobileValue)';
}


}

/// @nodoc
abstract mixin class _$BaseFormModelCopyWith<$Res> implements $BaseFormModelCopyWith<$Res> {
  factory _$BaseFormModelCopyWith(_BaseFormModel value, $Res Function(_BaseFormModel) _then) = __$BaseFormModelCopyWithImpl;
@override @useResult
$Res call({
 bool? display, String nameText, dynamic value, int? id, int? definedId, int? splitterId, String text, int? position, List<BaseFormModel>? columns, List<BaseFormModel>? rows, List<BaseFormModel>? values,@JsonKey(readValue: typeReader) dynamic type, String? filenames, String? editableAttachmentBlock, FormConditionModel? conditions, DisplayConfigModel? displayConfig,@JsonKey(readValue: defaultDisplayReader, includeToJson: false) bool? defaultDisplay,@JsonKey(defaultValue: -1, includeToJson: false) dynamic index, int? columnId, BaseControlType? controlType, MasterDataConfigModel? mdConfig, String? placeholderText, String? mobileValue
});


@override $FormConditionModelCopyWith<$Res>? get conditions;@override $DisplayConfigModelCopyWith<$Res>? get displayConfig;@override $MasterDataConfigModelCopyWith<$Res>? get mdConfig;

}
/// @nodoc
class __$BaseFormModelCopyWithImpl<$Res>
    implements _$BaseFormModelCopyWith<$Res> {
  __$BaseFormModelCopyWithImpl(this._self, this._then);

  final _BaseFormModel _self;
  final $Res Function(_BaseFormModel) _then;

/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? display = freezed,Object? nameText = null,Object? value = freezed,Object? id = freezed,Object? definedId = freezed,Object? splitterId = freezed,Object? text = null,Object? position = freezed,Object? columns = freezed,Object? rows = freezed,Object? values = freezed,Object? type = freezed,Object? filenames = freezed,Object? editableAttachmentBlock = freezed,Object? conditions = freezed,Object? displayConfig = freezed,Object? defaultDisplay = freezed,Object? index = freezed,Object? columnId = freezed,Object? controlType = freezed,Object? mdConfig = freezed,Object? placeholderText = freezed,Object? mobileValue = freezed,}) {
  return _then(_BaseFormModel(
display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool?,nameText: null == nameText ? _self.nameText : nameText // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,definedId: freezed == definedId ? _self.definedId : definedId // ignore: cast_nullable_to_non_nullable
as int?,splitterId: freezed == splitterId ? _self.splitterId : splitterId // ignore: cast_nullable_to_non_nullable
as int?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,columns: freezed == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,rows: freezed == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<BaseFormModel>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,filenames: freezed == filenames ? _self.filenames : filenames // ignore: cast_nullable_to_non_nullable
as String?,editableAttachmentBlock: freezed == editableAttachmentBlock ? _self.editableAttachmentBlock : editableAttachmentBlock // ignore: cast_nullable_to_non_nullable
as String?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as FormConditionModel?,displayConfig: freezed == displayConfig ? _self.displayConfig : displayConfig // ignore: cast_nullable_to_non_nullable
as DisplayConfigModel?,defaultDisplay: freezed == defaultDisplay ? _self.defaultDisplay : defaultDisplay // ignore: cast_nullable_to_non_nullable
as bool?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as dynamic,columnId: freezed == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int?,controlType: freezed == controlType ? _self.controlType : controlType // ignore: cast_nullable_to_non_nullable
as BaseControlType?,mdConfig: freezed == mdConfig ? _self.mdConfig : mdConfig // ignore: cast_nullable_to_non_nullable
as MasterDataConfigModel?,placeholderText: freezed == placeholderText ? _self.placeholderText : placeholderText // ignore: cast_nullable_to_non_nullable
as String?,mobileValue: freezed == mobileValue ? _self.mobileValue : mobileValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormConditionModelCopyWith<$Res>? get conditions {
    if (_self.conditions == null) {
    return null;
  }

  return $FormConditionModelCopyWith<$Res>(_self.conditions!, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayConfigModelCopyWith<$Res>? get displayConfig {
    if (_self.displayConfig == null) {
    return null;
  }

  return $DisplayConfigModelCopyWith<$Res>(_self.displayConfig!, (value) {
    return _then(_self.copyWith(displayConfig: value));
  });
}/// Create a copy of BaseFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterDataConfigModelCopyWith<$Res>? get mdConfig {
    if (_self.mdConfig == null) {
    return null;
  }

  return $MasterDataConfigModelCopyWith<$Res>(_self.mdConfig!, (value) {
    return _then(_self.copyWith(mdConfig: value));
  });
}
}

// dart format on

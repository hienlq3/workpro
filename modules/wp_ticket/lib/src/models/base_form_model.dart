import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/enums/base_form_control_type.dart';
import 'package:wp_ticket/src/enums/base_form_type.dart';
import 'package:wp_ticket/src/models/display_config_model.dart';
import 'package:wp_ticket/src/models/form_conditions_model.dart';
import 'package:wp_ticket/src/models/master_data_config_model.dart';

part 'base_form_model.freezed.dart';

part 'base_form_model.g.dart';

Object? defaultDisplayReader(Map json, String key) {
  if (key == 'defaultDisplay') {
    return json['display'];
  }

  return null;
}

Object? typeReader(Map json, String key) {
  try {
    if (key == 'type' &&
        ((json['childItemType']?.toString().isNotEmpty ?? false))) {
      if (json['childItemType'].toString().startsWith('master_data')) {
        return json['childItemType'];
      }
      return enumFromString(BaseFormType.values, json['childItemType']);
    } else if (key == 'type' &&
        (json['type']?.toString().isNotEmpty ?? false)) {
      if (json['type'].toString().startsWith('master_data')) {
        return json['type'];
      }
      return enumFromString(BaseFormType.values, json['controlType']);
    }
  } catch (_) {
    return BaseFormType.unknown;
  }
  return BaseFormType.unknown;
}

Object? controlTypeReader(Map json, String key) {
  try {
    if (key == 'type' &&
        ((json['childItemType']?.toString().isNotEmpty ?? false))) {
      if (json['childItemType'].toString().startsWith('master_data')) {
        return json['childItemType'];
      }
      return enumFromString(BaseControlType.values, json['childItemType']);
    } else if (key == 'type' &&
        (json['type']?.toString().isNotEmpty ?? false)) {
      if (json['type'].toString().startsWith('master_data')) {
        return json['type'];
      }
      return enumFromString(BaseControlType.values, json['controlType']);
    }
  } catch (_) {
    return BaseControlType.unknown;
  }
  return BaseControlType.unknown;
}

@freezed
abstract class BaseFormModel with _$BaseFormModel {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory BaseFormModel({
    final bool? display,
    @Default('') final String nameText,
    final dynamic value,
    final int? id,
    final int? definedId,
    final int? splitterId,
    @Default('') final String text,
    final int? position,
    final List<BaseFormModel>? columns,
    final List<BaseFormModel>? rows,
    final List<BaseFormModel>? values,
    @JsonKey(readValue: typeReader) final dynamic type,
    final String? filenames,
    final String? editableAttachmentBlock,
    final FormConditionModel? conditions,
    final DisplayConfigModel? displayConfig,
    @JsonKey(readValue: defaultDisplayReader, includeToJson: false)
    final bool? defaultDisplay,
    @JsonKey(defaultValue: -1, includeToJson: false) final dynamic index,
    final int? columnId,
    @JsonKey(readValue: controlTypeReader) final dynamic controlType,
    final MasterDataConfigModel? mdConfig,
    final String? placeholderText,
    final String? mobileValue,
  }) = _BaseFormModel;

  factory BaseFormModel.fromJson(Map<String, dynamic> json) =>
      _$BaseFormModelFromJson(json);
}

T? enumFromString<T>(Iterable<T> values, String value) {
  return values.cast<T?>().firstWhere(
    (type) => type.toString().split(".").last == value.toLowerCase(),
    orElse: () => null,
  );
}

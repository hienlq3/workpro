import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_condition_model.freezed.dart';

part 'display_condition_model.g.dart';

@freezed
abstract class DisplayConditionModel with _$DisplayConditionModel {
  const factory DisplayConditionModel({
    @JsonKey(name: 'idCondition') final int? id,
    @JsonKey(name: 'valueCondition') final dynamic value,
    @JsonKey(name: 'definedIdCondition') final String? definedId,
  }) = _DisplayConditionModel;

  factory DisplayConditionModel.fromJson(Map<String, dynamic> json) =>
      _$DisplayConditionModelFromJson(json);
}

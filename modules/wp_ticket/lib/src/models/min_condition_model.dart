import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/enums/base_form_control_type.dart';
import 'package:wp_ticket/src/models/data_config_model.dart';

part 'min_condition_model.freezed.dart';

part 'min_condition_model.g.dart';

@freezed
abstract class MinConditionModel with _$MinConditionModel {
  @JsonSerializable(includeIfNull: false)
  const factory MinConditionModel({
    @JsonKey(name: 'data-config') final DataConfigModel? dataConfig,
    final BaseControlType? type,
  }) = _MinConditionModel;

  factory MinConditionModel.fromJson(Map<String, dynamic> json) =>
      _$MinConditionModelFromJson(json);
}

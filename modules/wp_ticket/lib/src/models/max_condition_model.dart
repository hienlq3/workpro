import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/enums/base_form_control_type.dart';
import 'package:wp_ticket/src/models/data_config_model.dart';

part 'max_condition_model.freezed.dart';

part 'max_condition_model.g.dart';

@freezed
abstract class MaxConditionModel with _$MaxConditionModel {
  @JsonSerializable(includeIfNull: false)
  const factory MaxConditionModel({
    @JsonKey(name: 'data-config') final DataConfigModel? dataConfig,
    final BaseControlType? type,
  }) = _MaxConditionModel;

  factory MaxConditionModel.fromJson(Map<String, dynamic> json) =>
      _$MaxConditionModelFromJson(json);
}

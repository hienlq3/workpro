import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/models/display_condition_child_model.dart';

part 'display_config_model.freezed.dart';

part 'display_config_model.g.dart';

@freezed
abstract class DisplayConfigModel with _$DisplayConfigModel {
  const factory DisplayConfigModel({
    @Default([]) final List<DisplayConditionChildModel> children,
  }) = _DisplayConfigModel;

  factory DisplayConfigModel.fromJson(Map<String, dynamic> json) =>
      _$DisplayConfigModelFromJson(json);
}

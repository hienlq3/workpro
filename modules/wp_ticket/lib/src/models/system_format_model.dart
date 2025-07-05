import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_format_model.freezed.dart';

part 'system_format_model.g.dart';

@freezed
abstract class SystemFormatModel with _$SystemFormatModel {
  @JsonSerializable(includeIfNull: false)
  const factory SystemFormatModel({final String? regex, final String? text}) =
      _SystemFormatModel;

  factory SystemFormatModel.fromJson(Map<String, dynamic> json) =>
      _$SystemFormatModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_config_model.freezed.dart';

part 'data_config_model.g.dart';

@freezed
abstract class DataConfigModel with _$DataConfigModel {
  @JsonSerializable(includeIfNull: false)
  const factory DataConfigModel({
    final int? infoId,
    final DatasetType? dataset,
  }) = _DataConfigModel;

  factory DataConfigModel.fromJson(Map<String, dynamic> json) =>
      _$DataConfigModelFromJson(json);
}

enum DatasetType {
  @JsonValue('INDIVIDUAL')
  individual,

  @JsonValue('TABLE')
  table,
}

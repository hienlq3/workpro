import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_data_model.freezed.dart';

part 'master_data_model.g.dart';

@freezed
abstract class MasterDataModel with _$MasterDataModel {
  @JsonSerializable(includeIfNull: false)
  const factory MasterDataModel({
    final int? id,
    final String? text,
    final String? value,
    final int? parentId,
  }) = _MasterDataModel;

  factory MasterDataModel.fromJson(Map<String, dynamic> json) =>
      _$MasterDataModelFromJson(json);
}

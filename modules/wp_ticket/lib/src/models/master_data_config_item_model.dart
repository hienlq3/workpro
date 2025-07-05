import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_data_config_item_model.freezed.dart';

part 'master_data_config_item_model.g.dart';

@freezed
abstract class MasterDataConfigItemModel with _$MasterDataConfigItemModel {
  @JsonSerializable(includeIfNull: false)
  const factory MasterDataConfigItemModel({
    final String? name,
    final int? id,
    final String? value,
  }) = _MasterDataConfigItemModel;

  factory MasterDataConfigItemModel.fromJson(Map<String, dynamic> json) =>
      _$MasterDataConfigItemModelFromJson(json);
}

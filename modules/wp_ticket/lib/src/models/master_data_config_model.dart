import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/models/master_data_config_item_model.dart';

part 'master_data_config_model.freezed.dart';

part 'master_data_config_model.g.dart';

@freezed
abstract class MasterDataConfigModel with _$MasterDataConfigModel {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory MasterDataConfigModel({
    final List<MasterDataConfigItemModel>? children,
    final List<MasterDataConfigItemModel>? parents,
  }) = _MasterDataConfigModel;

  factory MasterDataConfigModel.fromJson(Map<String, dynamic> json) =>
      _$MasterDataConfigModelFromJson(json);
}

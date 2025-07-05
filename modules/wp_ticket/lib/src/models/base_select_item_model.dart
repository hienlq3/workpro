import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_select_item_model.freezed.dart';

part 'base_select_item_model.g.dart';

@freezed
abstract class BaseSelectItemModel with _$BaseSelectItemModel {
  @JsonSerializable(includeIfNull: false)
  const factory BaseSelectItemModel({final String? text, final String? value}) =
      _BaseSelectItemModel;

  factory BaseSelectItemModel.fromJson(Map<String, dynamic> json) =>
      _$BaseSelectItemModelFromJson(json);
}

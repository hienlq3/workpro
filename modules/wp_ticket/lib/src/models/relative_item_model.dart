import 'package:freezed_annotation/freezed_annotation.dart';

part 'relative_item_model.freezed.dart';

part 'relative_item_model.g.dart';

@freezed
abstract class RelativeItemModel with _$RelativeItemModel {
  const factory RelativeItemModel({
    final String? owner,
    final String? summary,
    final int? itemId,
    final int? id,
    final dynamic status,
    final bool? isZoomed,
    final int? zoomFrom,
  }) = _RelativeItemModel;

  factory RelativeItemModel.fromJson(Map<String, dynamic> json) =>
      _$RelativeItemModelFromJson(json);
}

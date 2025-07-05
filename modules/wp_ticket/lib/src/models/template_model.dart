import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';

part 'template_model.freezed.dart';

part 'template_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class TemplateModel with _$TemplateModel {
  const factory TemplateModel({
    @JsonKey(name: 'individual')
    @Default([])
    final List<BaseFormModel> individuals,
    final BaseFormModel? matrix,
    final BaseFormModel? table,
    final List<BaseFormModel>? multitable,
  }) = _TemplateModel;

  static const empty = TemplateModel();

  factory TemplateModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateModelFromJson(json);
}

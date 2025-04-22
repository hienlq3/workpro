import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_model.freezed.dart';

part 'code_model.g.dart';

@freezed
abstract class CodeModel with _$CodeModel {
  const factory CodeModel({
    int? id,
    @Default('') String urlSpro,
    @Default(CodeSSOType.none) CodeSSOType ssoType,
    String? clientId,
    String? tenantId,
    String? code,
    String? taskbarColor,
  }) = _CodeModel;
  const CodeModel._();

  factory CodeModel.fromJson(Map<String, dynamic> json) =>
      _$CodeModelFromJson(json);

  static const empty = CodeModel();

  bool get isEmpty => this == empty;

  bool validateUrlSpro() {
    if (urlSpro.isEmpty) {
      throw ArgumentError('urlSpro cannot be empty');
    }
    return false;
  }
}

enum CodeSSOType { none, azure }

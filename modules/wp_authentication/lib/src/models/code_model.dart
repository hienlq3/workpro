import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_model.freezed.dart';

part 'code_model.g.dart';

@freezed
class CodeModel with _$CodeModel {
  const CodeModel._();

  const factory CodeModel({
    final int? id,
    @Default('') final String urlSpro,
    @Default(CodeSSOType.none) final CodeSSOType ssoType,
    final String? clientId,
    final String? tenantId,
    final String? code,
    final String? taskbarColor,
  }) = _CodeModel;

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

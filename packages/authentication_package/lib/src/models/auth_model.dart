import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  @JsonSerializable(includeIfNull: false)
  const factory AuthModel({
    @JsonKey(name: 'Email') @Default('') final String email,
    @Default('') final String text,
    @Default('') final String value,
    @JsonKey(name: 'Avatar') @Default('') final String avatar,
    @Default('') final String loginToken,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

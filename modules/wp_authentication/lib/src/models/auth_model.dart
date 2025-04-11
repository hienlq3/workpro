import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

part 'auth_model.g.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  @JsonSerializable(includeIfNull: false)
  const factory AuthModel({
    @JsonKey(name: 'Email') @Default('') String email,
    @Default('') String text,
    @Default('') String value,
    @JsonKey(name: 'Avatar') @Default('') String avatar,
    @Default('') String loginToken,
  }) = _AuthModel;
  const AuthModel._();

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  bool validateLoginToken() {
    if (loginToken.isEmpty) {
      throw ArgumentError('loginToken cannot be empty');
    }
    return false;
  }
}

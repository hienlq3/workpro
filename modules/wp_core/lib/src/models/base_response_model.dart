import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';

part 'base_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponseModel<T> with _$BaseResponseModel<T> {
  const factory BaseResponseModel({
    @JsonKey(name: 'ResultCode') int? resultCode,
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'Data') T? data,
    @JsonKey(name: 'ListData') List<T>? dataList,
    @JsonKey(name: 'UserInfo') T? userInfo,
    String? language,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$BaseResponseModelFromJson(json, fromJsonT);
}

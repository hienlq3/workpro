import 'package:authentication_package/src/domain/code_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'system_property_service.g.dart';

@singleton
@RestApi()
abstract class SystemPropertyService {
  @factoryMethod
  factory SystemPropertyService(Dio dio, {String? baseUrl}) =
      _SystemPropertyService;

  @factoryMethod
  static SystemPropertyService create(Dio dio) {
    return SystemPropertyService(dio, baseUrl: '');
  }

  @POST('/systemProperty/findSystemPropertyByCode?code={code}')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<CodeModel?> getCode({
    @Path('code') required String code,
  });
}

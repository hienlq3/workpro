// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_package/register_module.dart' as _i342;
import 'package:core_package/src/service/base_service.dart' as _i446;
import 'package:core_package/src/service/my_approval_service.dart' as _i201;
import 'package:core_package/src/service/system_property_service.dart' as _i245;
import 'package:core_package/src/service/user_service.dart' as _i709;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.singleton<_i446.BaseService>(
        () => _i446.BaseService(dio: gh<_i361.Dio>()));
    gh.singleton<_i201.MyApprovalService>(
        () => _i201.MyApprovalService(baseService: gh<_i446.BaseService>()));
    gh.singleton<_i245.SystemPropertyService>(() =>
        _i245.SystemPropertyService(baseService: gh<_i446.BaseService>()));
    gh.singleton<_i709.UserService>(
        () => _i709.UserService(baseService: gh<_i446.BaseService>()));
    return this;
  }
}

class _$DioModule extends _i342.DioModule {}

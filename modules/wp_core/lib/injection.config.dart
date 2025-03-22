// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:wp_core/register_module.dart' as _i137;
import 'package:wp_core/src/service/base_service.dart' as _i909;
import 'package:wp_core/src/service/my_approval_service.dart' as _i812;
import 'package:wp_core/src/service/notification_service.dart' as _i1029;
import 'package:wp_core/src/service/system_property_service.dart' as _i956;
import 'package:wp_core/src/service/user_service.dart' as _i407;
import 'package:wp_core/src/utils/default_key_value_storage.dart' as _i514;
import 'package:wp_core/src/utils/notifier/base_url_notifier.dart' as _i609;
import 'package:wp_core/src/utils/notifier/headers_notifier.dart' as _i660;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    final dioModule = _$DioModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.singleton<_i514.DefaultKeyValueStorage>(
      () => registerModule.provideDefaultKeyValueStorage(),
    );
    gh.lazySingleton<_i609.BaseUrlNotifier>(() => _i609.BaseUrlNotifier());
    gh.lazySingleton<_i660.HeadersNotifier>(() => _i660.HeadersNotifier());
    gh.lazySingleton<_i361.Dio>(
      () => dioModule.dio(
        baseUrlNotifier: gh<_i609.BaseUrlNotifier>(),
        headersNotifier: gh<_i660.HeadersNotifier>(),
      ),
    );
    gh.singleton<_i909.BaseService>(
      () => _i909.BaseService(dio: gh<_i361.Dio>()),
    );
    gh.singleton<_i812.MyApprovalService>(
      () => _i812.MyApprovalService(baseService: gh<_i909.BaseService>()),
    );
    gh.singleton<_i956.SystemPropertyService>(
      () => _i956.SystemPropertyService(baseService: gh<_i909.BaseService>()),
    );
    gh.singleton<_i407.UserService>(
      () => _i407.UserService(baseService: gh<_i909.BaseService>()),
    );
    gh.singleton<_i1029.NotificationService>(
      () => _i1029.NotificationService(baseService: gh<_i909.BaseService>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i137.RegisterModule {}

class _$DioModule extends _i137.DioModule {}

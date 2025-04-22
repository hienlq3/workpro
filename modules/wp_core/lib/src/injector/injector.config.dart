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

import '../modules/dio_module.dart' as _i948;
import '../modules/store_module.dart' as _i561;
import '../service/base_service.dart' as _i996;
import '../service/my_approval_service.dart' as _i855;
import '../service/notification_service.dart' as _i935;
import '../service/system_property_service.dart' as _i991;
import '../service/user_service.dart' as _i193;
import '../utils/default_key_value_storage.dart' as _i24;
import '../utils/notifier/base_url_notifier.dart' as _i613;
import '../utils/notifier/headers_notifier.dart' as _i933;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storeModule = _$StoreModule();
    final dioModule = _$DioModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storeModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(() => storeModule.secureStorage);
    gh.singleton<_i24.DefaultKeyValueStorage>(
      () => storeModule.provideDefaultKeyValueStorage(),
    );
    gh.lazySingleton<_i613.BaseUrlNotifier>(() => _i613.BaseUrlNotifier());
    gh.lazySingleton<_i933.HeadersNotifier>(() => _i933.HeadersNotifier());
    gh.lazySingleton<_i361.Dio>(
      () => dioModule.dio(
        baseUrlNotifier: gh<_i613.BaseUrlNotifier>(),
        headersNotifier: gh<_i933.HeadersNotifier>(),
      ),
    );
    gh.singleton<_i996.BaseService>(
      () => _i996.BaseService(dio: gh<_i361.Dio>()),
    );
    gh.singleton<_i855.MyApprovalService>(
      () => _i855.MyApprovalService(baseService: gh<_i996.BaseService>()),
    );
    gh.singleton<_i991.SystemPropertyService>(
      () => _i991.SystemPropertyService(baseService: gh<_i996.BaseService>()),
    );
    gh.singleton<_i935.NotificationService>(
      () => _i935.NotificationService(baseService: gh<_i996.BaseService>()),
    );
    gh.singleton<_i193.UserService>(
      () => _i193.UserService(baseService: gh<_i996.BaseService>()),
    );
    return this;
  }
}

class _$StoreModule extends _i561.StoreModule {}

class _$DioModule extends _i948.DioModule {}

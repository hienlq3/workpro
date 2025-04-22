// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:wp_core/wp_core.dart' as _i250;

import '../module/firebase_module.dart' as _i512;
import '../repositories/notification_repository.dart' as _i800;
import '../screens/notifications/bloc/notification_bloc.dart' as _i824;
import '../services/firebase_service.dart' as _i758;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i892.FirebaseMessaging>(
      () => firebaseModule.firebaseMessaging,
    );
    gh.singleton<_i800.NotificationRepository>(
      () => _i800.NotificationRepository(
        notificationService: gh<_i250.NotificationService>(),
      ),
    );
    gh.lazySingleton<_i758.FirebaseService>(
      () => _i758.FirebaseService(gh<_i892.FirebaseMessaging>()),
    );
    gh.factory<_i824.NotificationBloc>(
      () => _i824.NotificationBloc(
        notificationRepository: gh<_i800.NotificationRepository>(),
      ),
    );
    return this;
  }
}

class _$FirebaseModule extends _i512.FirebaseModule {}

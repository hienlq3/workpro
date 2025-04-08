// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:wp_core/wp_core.dart' as _i250;
import 'package:wp_notification/src/repositories/notification_repository.dart'
    as _i173;
import 'package:wp_notification/src/screens/notifications/bloc/notification_bloc.dart'
    as _i1025;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i173.NotificationRepository>(
      () => _i173.NotificationRepository(
        notificationService: gh<_i250.NotificationService>(),
      ),
    );
    gh.factory<_i1025.NotificationBloc>(
      () => _i1025.NotificationBloc(
        notificationRepository: gh<_i173.NotificationRepository>(),
      ),
    );
    return this;
  }
}

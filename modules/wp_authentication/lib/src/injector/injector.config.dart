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

import '../repositories/authentication_repository.dart' as _i338;
import '../screens/login/bloc/login_bloc.dart' as _i321;
import '../screens/submit_code/bloc/submit_code_bloc.dart' as _i788;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i338.AuthenticationRepository>(
      () => _i338.AuthenticationRepository(
        systemPropertyService: gh<_i250.SystemPropertyService>(),
        userService: gh<_i250.UserService>(),
        baseUrlNotifier: gh<_i250.BaseUrlNotifier>(),
        headersNotifier: gh<_i250.HeadersNotifier>(),
      ),
    );
    gh.factory<_i788.SubmitCodeBloc>(
      () => _i788.SubmitCodeBloc(
        authenticationRepository: gh<_i338.AuthenticationRepository>(),
      ),
    );
    gh.factory<_i321.LoginBloc>(
      () => _i321.LoginBloc(
        authenticationRepository: gh<_i338.AuthenticationRepository>(),
      ),
    );
    return this;
  }
}

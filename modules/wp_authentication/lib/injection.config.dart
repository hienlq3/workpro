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
import 'package:wp_authentication/src/repositories/authentication_repository.dart'
    as _i26;
import 'package:wp_authentication/src/screens/login/bloc/login_bloc.dart'
    as _i318;
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart'
    as _i20;
import 'package:wp_core/core_package.dart' as _i70;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i26.AuthenticationRepository>(
      () => _i26.AuthenticationRepository(
        systemPropertyService: gh<_i70.SystemPropertyService>(),
        userService: gh<_i70.UserService>(),
        baseUrlNotifier: gh<_i70.BaseUrlNotifier>(),
        headersNotifier: gh<_i70.HeadersNotifier>(),
      ),
    );
    gh.factory<_i318.LoginBloc>(
      () => _i318.LoginBloc(
        authenticationRepository: gh<_i26.AuthenticationRepository>(),
      ),
    );
    gh.factory<_i20.SubmitCodeBloc>(
      () => _i20.SubmitCodeBloc(
        authenticationRepository: gh<_i26.AuthenticationRepository>(),
      ),
    );
    return this;
  }
}

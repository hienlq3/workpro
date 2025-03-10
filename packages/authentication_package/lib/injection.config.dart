// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_package/src/repositories/authentication_repository.dart'
    as _i530;
import 'package:authentication_package/src/screens/submit_code/bloc/submit_code_bloc.dart'
    as _i56;
import 'package:core_package/core_package.dart' as _i996;
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
    gh.singleton<_i530.AuthenticationRepository>(
        () => _i530.AuthenticationRepository(
              systemPropertyService: gh<_i996.SystemPropertyService>(),
              userService: gh<_i996.UserService>(),
            ));
    gh.singleton<_i56.SubmitCodeBloc>(() => _i56.SubmitCodeBloc(
        authenticationRepository: gh<_i530.AuthenticationRepository>()));
    return this;
  }
}

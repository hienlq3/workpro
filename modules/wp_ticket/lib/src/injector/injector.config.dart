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

import '../repositories/ticket_repository.dart' as _i589;
import '../screens/ticket_detail/bloc/ticket_detail_bloc.dart' as _i288;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i589.TicketRepository>(
      () => _i589.TicketRepository(ticketService: gh<_i250.TicketService>()),
    );
    gh.factory<_i288.TicketDetailBloc>(
      () => _i288.TicketDetailBloc(
        ticketRepository: gh<_i589.TicketRepository>(),
      ),
    );
    return this;
  }
}

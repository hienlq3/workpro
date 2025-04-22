import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/injector/injector.config.dart';

@InjectableInit(preferRelativeImports: true)
Future<GetIt> configCoreInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  return _initGetIt(getIt, env: env, environmentFilter: environmentFilter);
}

Future<GetIt> _initGetIt(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(environment: env, environmentFilter: environmentFilter);
}

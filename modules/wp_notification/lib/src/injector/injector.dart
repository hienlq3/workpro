import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

@InjectableInit(preferRelativeImports: true)
GetIt configNotificationInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(environmentFilter: environmentFilter, environment: env);
}

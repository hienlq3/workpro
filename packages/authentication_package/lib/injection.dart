import 'package:core_package/injection.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

@InjectableInit()
void configureAuthenticationDependencies() => getIt.init();

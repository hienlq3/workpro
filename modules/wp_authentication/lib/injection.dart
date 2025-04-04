import 'package:injectable/injectable.dart';
import 'package:wp_core/injection.dart';

import 'injection.config.dart';

@InjectableInit()
void configureAuthenticationDependencies() => getIt.init();

import 'package:injectable/injectable.dart';
import 'package:wp_authentication/injection.config.dart';
import 'package:wp_core/injection.dart';

@InjectableInit()
void configureAuthenticationDependencies() => getIt.init();

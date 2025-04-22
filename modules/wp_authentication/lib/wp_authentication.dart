import 'package:wp_authentication/src/injector/injector.dart';
import 'package:wp_core/wp_core.dart';

export 'src/authentication/bloc/authentication_bloc.dart';
export 'src/repositories/authentication_repository.dart';
export 'src/routing/auth_routes.dart';
export 'src/screens/more/view/more_page.dart';

class WpAuthentication {
  static void initialize() {
    configAuthenticationInjector(getIt);
  }
}

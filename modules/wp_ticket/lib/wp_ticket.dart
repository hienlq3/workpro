import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/injector/injector.dart';

export 'src/routing/ticket_routes.dart';

class WPTicket {
  static void initialize() {
    configTicketInjector(getIt);
  }
}

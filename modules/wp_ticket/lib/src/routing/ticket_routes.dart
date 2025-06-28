import 'package:go_router/go_router.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/screens/ticket_detail/view/ticket_detail_page.dart';

final List<GoRoute> ticketRoutes = [
  GoRoute(
    name: AppRoutes.kTicketDetail,
    path: '${AppRoutes.kTicketDetail}/:${AppRouteParams.ticketId}',
    builder: (context, state) {
      final ticketId = int.tryParse(
        state.pathParameters[AppRouteParams.ticketId]?.toString() ?? '',
      );
      return TicketDetailPage(ticketId: ticketId);
    },
  ),
];

import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class TicketService {
  TicketService({required BaseService baseService})
    : _baseService = baseService;
  final BaseService _baseService;

  Future<Map<String, dynamic>?> getTicketInfo({required int ticketId}) async {
    try {
      final response = await _baseService.get(
        '/rest/sms/latest/integration-ticket/$ticketId/ongoing',
      );
      return response.data;
    } on Exception {
      rethrow;
    }
  }
}

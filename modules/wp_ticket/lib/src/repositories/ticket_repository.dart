import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/models/template_model.dart';
import 'package:wp_ticket/src/models/ticket_detail_model.dart';

@singleton
class TicketRepository {
  TicketRepository({required TicketService ticketService})
    : _ticketService = ticketService;
  final TicketService _ticketService;

  Future<TicketDetailModel?> ticketDetailFetch({
    required int ticketId,
    required CancelToken cancelToken,
  }) async {
    try {
      final responseJson = await _ticketService.getTicketInfo(
        ticketId: ticketId,
        cancelToken: cancelToken,
      );
      if (responseJson != null) {
        final response = BaseResponseModel<TicketDetailModel>.fromJson(
          responseJson,
          (json) =>
              json != null
                  ? TicketDetailModel.fromJson(json as Map<String, dynamic>)
                  : const TicketDetailModel(),
        );
        return response.data;
      }
      return null;
    } on Exception {
      rethrow;
    }
  }

  Future<TemplateModel?> ticketTemplateFetch({
    required int ticketId,
    required CancelToken cancelToken,
  }) async {
    try {
      final responseJson = await _ticketService.getTicketTemplate(
        ticketId: ticketId,
        cancelToken: cancelToken,
      );
      if (responseJson != null) {
        final response = TicketDetailModel.fromJson(responseJson);
        return response.details;
      }
      return null;
    } on Exception {
      rethrow;
    }
  }
}

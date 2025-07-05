import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class TicketService {
  TicketService({required BaseService baseService})
    : _baseService = baseService;
  final BaseService _baseService;

  Future<Map<String, dynamic>?> getTicketInfo({
    required int ticketId,
    required CancelToken cancelToken,
  }) async {
    try {
      final response = await _baseService.get(
        '/rest/sms/latest/integration-ticket/$ticketId/ongoing',
        cancelToken: cancelToken,
      );
      return response.data;
    } on Exception {
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> getTicketTemplate({
    required int ticketId,
    bool getHidden = false,
    bool isClone = false,
    required CancelToken cancelToken,
  }) async {
    try {
      final response = await _baseService.get(
        '/rest/sms/latest/integration-ticket/detail',
        queryParameters: {
          'id': ticketId,
          'getHidden': getHidden,
          'isClone': isClone,
        },
        cancelToken: cancelToken,
      );
      return response.data;
    } on Exception {
      rethrow;
    }
  }
}

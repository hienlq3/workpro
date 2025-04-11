import 'package:injectable/injectable.dart';
import 'package:wp_core/src/service/base_service.dart';

@singleton
class MyApprovalService {
  MyApprovalService({required BaseService baseService})
    : _baseService = baseService;
  final BaseService _baseService;

  Future<Map<String, dynamic>?> getApprovalTickets({
    required String statusType,
    required int pageSize,
    required int currentPages,
  }) async {
    try {
      final response = await _baseService.post(
        '/rest/sms/latest/integration-my-approval/list',
        queryParameters: {
          'statusType': statusType,
          'pageSize': pageSize,
          'currentPages': currentPages,
        },
      );

      return response.data;
    } on Exception {
      rethrow;
    }
  }
}

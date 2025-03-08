import 'package:core_package/src/service/base_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class MyApprovalService {
  final BaseService _baseService;

  MyApprovalService({required BaseService baseService})
      : _baseService = baseService;

  Future<Map<String, dynamic>> getApprovalTickets({
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
    } on Exception catch (error) {
      throw error.toString();
    }
  }
}

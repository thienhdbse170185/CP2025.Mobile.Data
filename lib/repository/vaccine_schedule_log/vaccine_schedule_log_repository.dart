import 'package:data_layer/model/request/vaccine_schedule_log/vaccine_schedule_log_request.dart';
import 'package:data_layer/model/response/vaccine_schedule_log/vaccine_schedule_log_response.dart';
import 'package:data_layer/repository/vaccine_schedule_log/vaccine_schedule_log_api_client.dart';

class VaccineScheduleLogRepository {
  final VaccineScheduleLogApiClient _vaccineScheduleLogApiClient;
  const VaccineScheduleLogRepository(
      {required VaccineScheduleLogApiClient vaccineScheduleLogApiClient})
      : _vaccineScheduleLogApiClient = vaccineScheduleLogApiClient;

  Future<bool> create(VaccineScheduleLogRequest request) async {
    try {
      return await _vaccineScheduleLogApiClient.create(request);
    } catch (e) {
      rethrow;
    }
  }

  Future<VaccineScheduleLogResponse> getVaccineScheduleLogByTaskId(
      String taskId) async {
    try {
      return await _vaccineScheduleLogApiClient
          .getVaccineScheduleLogByTaskId(taskId);
    } catch (e) {
      rethrow;
    }
  }
}

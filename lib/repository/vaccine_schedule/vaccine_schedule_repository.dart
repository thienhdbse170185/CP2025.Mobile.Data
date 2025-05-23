import 'package:data_layer/model/request/vaccine_schedule/vaccine_schedule_request.dart';
import 'package:data_layer/model/response/vaccine_schedule/vaccine_schedule_by_id/vaccine_schedule_by_id_response.dart';
import 'package:data_layer/model/response/vaccine_schedule/vaccine_schedule_response.dart';
import 'package:data_layer/repository/vaccine_schedule/vaccine_schedule_api_client.dart';

class VaccineScheduleRepository {
  final VaccineScheduleApiClient _vaccineScheduleApiClient;
  const VaccineScheduleRepository(
      {required VaccineScheduleApiClient vaccineScheduleApiClient})
      : _vaccineScheduleApiClient = vaccineScheduleApiClient;

  Future<VaccineScheduleResponse> getVaccineScheduleByStageId(
      {required VaccineScheduleRequest request}) async {
    try {
      return await _vaccineScheduleApiClient.getVaccineScheduleByStageId(
        request: request,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<VaccineScheduleByIdResponse> getVaccineScheduleById(
      {required String id}) async {
    try {
      return await _vaccineScheduleApiClient.getVaccineScheduleById(id: id);
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:data_layer/model/request/egg_harvest/egg_harvest_request.dart';
import 'package:data_layer/model/response/egg_harvest/egg_harvest_response.dart';
import 'package:data_layer/repository/egg_harvest/egg_harvest_api_client.dart';

class EggHarvestRepository {
  final EggHarvestApiClient _apiClient;
  const EggHarvestRepository({required EggHarvestApiClient apiClient})
      : _apiClient = apiClient;

  Future<bool> create({required EggHarvestRequest request}) async {
    try {
      return await _apiClient.create(request: request);
    } catch (e) {
      rethrow;
    }
  }

  Future<EggHarvestResponse> getByTaskId({required String taskId}) async {
    try {
      return await _apiClient.getByTaskId(taskId: taskId);
    } catch (e) {
      rethrow;
    }
  }
}

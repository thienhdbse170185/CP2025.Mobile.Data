import 'package:data_layer/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:data_layer/repository/farming_batch/farming_batch_api_client.dart';

class FarmingBatchRepository {
  final FarmingBatchApiClient apiClient;
  const FarmingBatchRepository({required this.apiClient});

  Future<FarmingBatchDto> getFarmingBatchByCage(String cageId) async {
    try {
      return await apiClient.getFarmingBatchByCage(cageId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<FarmingBatchDto>> getFarmingBatchesByUserId(String userId) async {
    try {
      return await apiClient.getFarmingBatchesByUserId(userId);
    } catch (e) {
      rethrow;
    }
  }
}

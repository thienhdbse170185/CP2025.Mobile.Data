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

  Future<FarmingBatchDto> getFarmingBatchByCageDuedate(
      String cageId, String dueDateTask) async {
    try {
      return await apiClient.getFarmingBatchByCageDuedate(cageId, dueDateTask);
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

  Future<bool> createDeathReport(
      String cageId, String dueDateTask, int deathReport) async {
    try {
      return await apiClient.createDeathReport(
          cageId, dueDateTask, deathReport);
    } catch (e) {
      rethrow;
    }
  }
}

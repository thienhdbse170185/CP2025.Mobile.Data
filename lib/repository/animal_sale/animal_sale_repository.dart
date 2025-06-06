import 'package:data_layer/model/dto/sale_log_detail/sale_log_detail_dto.dart';
import 'package:data_layer/model/dto/task/sale_log/sale_log_dto.dart';
import 'package:data_layer/model/request/animal_sale/animal_sale_request.dart';
import 'package:data_layer/repository/animal_sale/animal_sale_api_client.dart';

class AnimalSaleRepository {
  final AnimalSaleApiClient _animalSaleApiClient;
  const AnimalSaleRepository({required AnimalSaleApiClient animalSaleApiClient})
      : _animalSaleApiClient = animalSaleApiClient;

  Future<bool> create(AnimalSaleRequest request) async {
    try {
      return await _animalSaleApiClient.create(request);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<SaleLogDto>> getSaleLogByGrowthStageId(
      {required String growthStageId}) async {
    try {
      return await _animalSaleApiClient.getSaleLogByGrowthStageId(
          growthStageId: growthStageId);
    } catch (e) {
      rethrow;
    }
  }

  Future<SaleLogDetailDto> getSaleLogByTaskId({required String taskId}) async {
    try {
      return await _animalSaleApiClient.getSaleLogByTaskId(taskId: taskId);
    } catch (e) {
      rethrow;
    }
  }
}

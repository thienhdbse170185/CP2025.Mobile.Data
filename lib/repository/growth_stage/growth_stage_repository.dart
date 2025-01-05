import 'package:data_layer/model/dto/growth_stage/growth_stage_dto.dart';
import 'package:data_layer/repository/growth_stage/growth_stage_api_client.dart';

class GrowthStageRepository {
  final GrowthStageApiClient apiClient;
  const GrowthStageRepository({required this.apiClient});

  Future<GrowthStageDto> getGrowthStageByCageId(String cageId) async {
    try {
      return apiClient.getGrowthStageByCageId(cageId);
    } catch (e) {
      rethrow;
    }
  }
}

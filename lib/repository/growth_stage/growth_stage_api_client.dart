import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/growth_stage/growth_stage_dto.dart';
import 'package:dio/dio.dart';

class GrowthStageApiClient {
  final Dio dio;
  const GrowthStageApiClient({required this.dio});

  Future<GrowthStageDto> getGrowthStageByCageId(String cageId) async {
    try {
      final response = await dio
          .get('${ApiEndpoints.growthStageInCage}/$cageId/active-growth-stage');
      if (response.statusCode == 200) {
        return GrowthStageDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load growth stage');
      }
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

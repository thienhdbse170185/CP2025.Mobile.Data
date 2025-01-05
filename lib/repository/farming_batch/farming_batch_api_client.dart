import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:dio/dio.dart';

class FarmingBatchApiClient {
  final Dio dio;
  const FarmingBatchApiClient({required this.dio});

  Future<FarmingBatchDto> getFarmingBatchByCage(String cageId) async {
    try {
      final response =
          await dio.get('${ApiEndpoints.farmingBatchByCage}/$cageId');
      if (response.statusCode == 200) {
        return FarmingBatchDto.fromJson(response.data['result']);
      }
      throw Exception('Failed to fetch farming batch by cage');
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

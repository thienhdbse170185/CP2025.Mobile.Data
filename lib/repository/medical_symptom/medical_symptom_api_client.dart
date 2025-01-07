import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/medical_symptom/medical_symptom.dart';
import 'package:dio/dio.dart';

class MedicalSymptomApiClient {
  final Dio dio;
  const MedicalSymptomApiClient({required this.dio});

  Future<List<MedicalSymptomDto>> getSymptomsByBatch(
      String userId, String? farmingBatchId) async {
    try {
      final response = await dio
          .get(ApiEndpoints.getMedicalSymptomsByBatch, queryParameters: {
        'staffId': userId,
        'farmBatchId': farmingBatchId,
      });
      if (response.statusCode == 200) {
        return (response.data['result'] as List)
            .map((e) => MedicalSymptomDto.fromJson(e))
            .toList();
      } else {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      log(e.toString());
      throw Exception(e.response?.data['message']);
    }
  }
}

import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/data_layer.dart';
import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:dio/dio.dart';

class SymptomApiClient {
  final Dio dio;
  SymptomApiClient({required this.dio});

  Future<bool> create(CreateSymptomRequest request) async {
    try {
      final response =
          await dio.post(ApiEndpoints.postSymptom, data: request.toJson());
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<SymptomDto>> getSymptoms() async {
    try {
      final response = await dio.get(ApiEndpoints.symptom);
      if (response.statusCode == 200) {
        return (response.data['result'] as List)
            .map((e) => SymptomDto.fromJson(e))
            .toList();
      }
      return [];
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

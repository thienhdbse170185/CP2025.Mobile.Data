import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:dio/dio.dart';

class HealthyApiClient {
  final Dio dio;
  HealthyApiClient({required this.dio});
  Future<bool> create(CreateSymptomRequest request) async {
    try {
      final data = request.toJson();
      log(data.toString());
      final response = await dio.post(ApiEndpoints.postSymptom, data: data);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

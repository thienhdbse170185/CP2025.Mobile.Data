import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
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

  Future<bool> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  Future read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  Future testConnect() {
    // TODO: implement testConnect
    throw UnimplementedError();
  }

  Future update(entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

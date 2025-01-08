import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/prescription/prescription.dart';
import 'package:dio/dio.dart';

class PrescriptionApiClient {
  final Dio dio;
  const PrescriptionApiClient({required this.dio});

  Future<PrescriptionDto> getPrescriptionById(String prescriptionId) async {
    try {
      final response = await dio
          .get('${ApiEndpoints.prescription}/$prescriptionId/prescription');
      if (response.statusCode == 200) {
        return PrescriptionDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to fetch prescription');
      }
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/data_layer.dart';
import 'package:dio/dio.dart';

class VaccineApiClient {
  final Dio dio;
  const VaccineApiClient({required this.dio});

  Future<VaccineDto> getVaccineById({required String id}) async {
    try {
      log('[VACCINE_API_CLIENT] Đang lấy thông tin Vaccine - id: $id...');
      final response = await dio.get('${ApiEndpoints.vaccine}/$id');
      if (response.statusCode == 200) {
        log('[VACCINE_API_CLIENT] Lấy thông tin Vaccine thành công');
        return VaccineDto.fromJson(response.data['result']);
      } else {
        throw Exception('get-vaccine-failure');
      }
    } on DioException catch (e) {
      log('[VACCINE_API_CLIENT] Lấy thông tin Vaccine thất bại!');
      log('Lỗi: ${e.toString()}');
      throw Exception('get-vaccine-failure');
    }
  }
}

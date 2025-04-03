import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/task/sale_log/sale_log_dto.dart';
import 'package:data_layer/model/request/animal_sale/animal_sale_request.dart';
import 'package:dio/dio.dart';

class AnimalSaleApiClient {
  final Dio dio;
  const AnimalSaleApiClient({required this.dio});

  Future<bool> create(AnimalSaleRequest request) async {
    try {
      log('[ANIMAL_SALE_API_CLIENT] Chuẩn bị tạo thông tin bán gia cầm');
      log('Request: ${request.toJson()}');
      final response =
          await dio.post(ApiEndpoints.animalSale, data: request.toJson());
      if (response.statusCode == 200) {
        log('[ANIMAL_SALE_API_CLIENT] Tạo thông tin bán gia cầm thành công!');
        return true;
      }
      return false;
    } on DioException catch (e) {
      log('[ANIMAL_SALE_API_CLIENT] Tạo thông tin bán gia cầm thất bại!');
      log('Lỗi: ${e.toString()}');
      rethrow;
    }
  }

  Future<List<SaleLogDto>> getSaleLogByGrowthStageId(
      {required String growthStageId}) async {
    try {
      log('[ANIMAL_SALE_API_CLIENT] Chuẩn bị lấy thông tin bán gia cầm theo ID giai đoạn phát triển');
      final response = await dio
          .get('${ApiEndpoints.growthStage}/growth-stage/$growthStageId/sales');
      if (response.statusCode == 200) {
        log('[ANIMAL_SALE_API_CLIENT] Lấy thông tin bán gia cầm thành công!');
        return (response.data['result'] as List)
            .map((saleLog) => SaleLogDto.fromJson(saleLog))
            .toList();
      }
      throw Exception('Lỗi không xác định!');
    } on DioException catch (e) {
      log('[ANIMAL_SALE_API_CLIENT] Lấy thông tin bán gia cầm thất bại!');
      log('Lỗi: ${e.toString()}');
      rethrow;
    }
  }
}

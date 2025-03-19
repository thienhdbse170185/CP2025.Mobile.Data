import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:data_layer/model/entity/cage/cage.dart';
import 'package:data_layer/model/response/cage/get_all/get_all_cage_response.dart';
import 'package:dio/dio.dart';

class CageApiClient {
  final Dio dio;
  const CageApiClient({required this.dio});

  Future<GetAllCageResponse> fetchAllCages() async {
    try {
      final response = await dio.get(ApiEndpoints.getCages);
      return GetAllCageResponse.fromJson(response.data['result']);
    } on DioException {
      rethrow;
    }
  }

  Future<Cage> fetchCageById(String id) async {
    try {
      final response = await dio.get('${ApiEndpoints.getCages}/$id');
      return Cage.fromJson(response.data['result']);
    } on DioException {
      rethrow;
    }
  }

  Future<CageAdminDto> getCageAdminById({required String cageId}) async {
    try {
      log('[CAGE_API_CLIENT] Đang call API lấy thông tin cage id $cageId');
      final response = await dio.get('${ApiEndpoints.getCages}/$cageId');
      log('[CAGE_API_CLIENT] Lấy thông tin cage id $cageId thành công');
      return CageAdminDto.fromJson(response.data['result']);
    } on DioException catch (e) {
      log('[CAGE_API_CLIENT] Lấy thông tin cage id $cageId thất bại');
      log('[CAGE_API_CLIENT] Error: $e');
      rethrow;
    }
  }

  Future<List<Cage>> fetchCagesByUserId(String userId) async {
    try {
      final response = await dio.get('${ApiEndpoints.getUsers}/$userId/cages');
      return (response.data['result'] as List)
          .map((e) => Cage.fromJson(e))
          .toList();
    } on DioException catch (e) {
      log(e.message.toString());
      rethrow;
    }
  }
}

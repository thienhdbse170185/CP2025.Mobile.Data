import 'package:data_layer/model/entity/cage/cage.dart';
import 'package:data_layer/model/response/cage/get_all/get_all_cage_response.dart';
import 'package:dio/dio.dart';

class CageApiClient {
  final Dio dio;
  const CageApiClient({required this.dio});

  Future<GetAllCageResponse> fetchAllCages() async {
    try {
      final response = await dio.get('http://192.168.1.67:8088/api/cages');
      return GetAllCageResponse.fromJson(response.data['result']);
    } on DioException catch (e) {
      rethrow;
    }
  }

  Future<Cage> fetchCageById(String id) async {
    try {
      final response = await dio.get('http://192.168.1.67:8088/api/cages/$id');
      return Cage.fromJson(response.data['result']);
    } on DioException catch (e) {
      rethrow;
    }
  }
}

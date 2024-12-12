import 'package:data_layer/model/entity/cage/cage.dart';
import 'package:data_layer/model/response/cage/get_all/get_all_cage_response.dart';
import 'package:data_layer/repository/cage/cage_api_client.dart';

class CageRepository {
  final CageApiClient cageApiClient;
  const CageRepository({required this.cageApiClient});

  Future<GetAllCageResponse> getAllCages() async {
    try {
      return await cageApiClient.fetchAllCages();
    } catch (e) {
      rethrow;
    }
  }

  Future<Cage> getCageById(String id) async {
    try {
      return await cageApiClient.fetchCageById(id);
    } catch (e) {
      rethrow;
    }
  }
}

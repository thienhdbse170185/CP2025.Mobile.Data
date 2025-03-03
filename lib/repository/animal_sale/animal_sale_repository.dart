import 'package:data_layer/model/request/animal_sale/animal_sale_request.dart';
import 'package:data_layer/repository/animal_sale/animal_sale_api_client.dart';

class AnimalSaleRepository {
  final AnimalSaleApiClient _animalSaleApiClient;
  const AnimalSaleRepository({required AnimalSaleApiClient animalSaleApiClient})
      : _animalSaleApiClient = animalSaleApiClient;

  Future<bool> create(AnimalSaleRequest request) async {
    try {
      return await _animalSaleApiClient.create(request);
    } catch (e) {
      rethrow;
    }
  }
}

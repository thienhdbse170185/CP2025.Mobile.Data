import 'package:data_layer/model/response/sale_type/sale_type_by_name_response.dart';
import 'package:data_layer/repository/sale_type/sale_type_api_client.dart';

class SaleTypeRepository {
  final SaleTypeApiClient _saleTypeApiClient;
  const SaleTypeRepository({required SaleTypeApiClient saleTypeApiClient})
      : _saleTypeApiClient = saleTypeApiClient;

  Future<SaleTypeByNameResponse> getByName(
      {required String saleTypeName}) async {
    try {
      return await _saleTypeApiClient.getByName(saleTypeName: saleTypeName);
    } catch (e) {
      rethrow;
    }
  }
}

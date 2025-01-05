import 'package:data_layer/model/dto/symptom/symptom.dart';
import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:data_layer/repository/symptom/symptom_api_client.dart';

class SymptomRepository {
  final SymptomApiClient apiClient;
  SymptomRepository({required this.apiClient});

  Future<List> getAll() async {
    throw UnimplementedError();
  }

  Future<bool> insert(CreateSymptomRequest request) async {
    try {
      await apiClient.create(request);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<SymptomDto>> getSymptoms() async {
    try {
      return await apiClient.getSymptoms();
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:data_layer/model/index.dart';
import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:data_layer/repository/healthy/healthy_api_client.dart';

class HealthyRepository {
  final HealthyApiClient apiClient;

  HealthyRepository({required this.apiClient});

  Future<MedicalSymptomDto> create(CreateSymptomRequest request) async {
    try {
      return await apiClient.create(request);
    } catch (e) {
      rethrow;
    }
  }
}

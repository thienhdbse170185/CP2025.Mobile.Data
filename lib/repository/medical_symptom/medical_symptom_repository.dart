import 'package:data_layer/model/response/medical_symptom/medical_symptom_response.dart';
import 'package:data_layer/repository/medical_symptom/medical_symptom_api_client.dart';

class MedicalSymptomRepository {
  final MedicalSymptomApiClient apiClient;
  const MedicalSymptomRepository({required this.apiClient});

  Future<List<MedicalSymptomResponse>?> getSymptomsByBatch(
      String userId, String? farmingBatchId) async {
    try {
      return await apiClient.getSymptomsByBatch(userId, farmingBatchId);
    } catch (e) {
      rethrow;
    }
  }
}

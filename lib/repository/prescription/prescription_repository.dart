import 'package:data_layer/model/dto/prescription/prescription.dart';
import 'package:data_layer/repository/prescription/prescription_api_client.dart';
import 'package:dio/dio.dart';

class PrescriptionRepository {
  final PrescriptionApiClient apiClient;
  const PrescriptionRepository({required this.apiClient});

  Future<PrescriptionDto> getPrescriptionById(String prescriptionId) async {
    try {
      return await apiClient.getPrescriptionById(prescriptionId);
    } on DioException {
      rethrow;
    }
  }
}

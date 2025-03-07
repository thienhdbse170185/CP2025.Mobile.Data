import 'package:data_layer/model/dto/prescription/prescription.dart';
import 'package:data_layer/model/request/prescription/update_status_prescription_request.dart';
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

  Future<bool> updatePrescriptionStatus(
      {required String prescriptionId,
      required UpdateStatusPrescriptionRequest request}) async {
    try {
      return await apiClient.updatePrescriptionStatus(
          prescriptionId: prescriptionId, request: request);
    } on DioException {
      rethrow;
    }
  }

  Future<bool> checkPrescriptionLastSession(
      {required String prescriptionId}) async {
    try {
      return await apiClient.checkPrescriptionLastSession(
          prescriptionId: prescriptionId);
    } on DioException {
      rethrow;
    }
  }
}

import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/response/medical_symptom/medical_symptom_response.dart';
import 'package:dio/dio.dart';

class MedicalSymptomApiClient {
  final Dio dio;
  const MedicalSymptomApiClient({required this.dio});

  Future<List<MedicalSymptomResponse>?> getSymptomsByBatch(
      String userId, String? farmingBatchId) async {
    try {
      log('[MEDICAL_SYMPTOM_API_CLIENT] Chuẩn bị thực hiện lấy báo cáo triệu chứng...');
      log('[MEDICAL_SYMPTOM_API_CLIENT] userId: $userId');
      log('[MEDICAL_SYMPTOM_API_CLIENT] farmingBatchId: $farmingBatchId');
      // Comment out the actual API call
      final response = await dio
          .get(ApiEndpoints.getMedicalSymptomsByBatch, queryParameters: {
        'staffId': userId,
        'farmBatchId': farmingBatchId,
      });
      if (response.statusCode == 200) {
        log('[MEDICAL_SYMPTOM_API_CLIENT] Lấy báo cáo triệu chứng thành công!');
        return (response.data['result'] as List)
            .map((e) => MedicalSymptomResponse.fromJson(e))
            .toList();
      } else {
        throw Exception(response.data['message']);
      }

      // Mock response data
      // final mockResponse = {
      //   "success": true,
      //   "result": [
      //     {
      //       "id": "e12b7361-e625-4e96-9e65-0443560e5196",
      //       "farmingBatchId": "cd5fcf41-abcb-44bc-bda3-19f53e8b9164",
      //       "prescriptionId": null,
      //       "symptoms": "Mắt chảy nước hoặc đỏ, Chán ăn, Nôn mửa",
      //       "diagnosis": "aaaaa",
      //       "createAt": "2025-01-05T18:03:31.3937412",
      //       "status": "Normal",
      //       "affectedQuantity": 5,
      //       "quantity": 500,
      //       "nameAnimal": null,
      //       "notes": "aaaaaaaaaaa",
      //       "pictures": [],
      //       "medicalSymptomDetails": null,
      //       "prescriptions": null
      //     },
      //     {
      //       "id": "c4ff5787-b371-4bea-a6cf-26c86af80cb0",
      //       "farmingBatchId": "cd5fcf41-abcb-44bc-bda3-19f53e8b9164",
      //       "prescriptionId": null,
      //       "symptoms": "Mắt chảy nước hoặc đỏ, Sốt cao",
      //       "diagnosis": null,
      //       "createAt": "2025-01-06T02:51:04.2791566",
      //       "status": "Pending",
      //       "affectedQuantity": 5,
      //       "quantity": 500,
      //       "nameAnimal": null,
      //       "notes": "999",
      //       "pictures": [],
      //       "medicalSymptomDetails": null,
      //       "prescriptions": null
      //     },
      //     {
      //       "id": "6cde748e-f548-4f17-b82b-cc823a7fcf75",
      //       "farmingBatchId": "cd5fcf41-abcb-44bc-bda3-19f53e8b9164",
      //       "prescriptionId": null,
      //       "symptoms":
      //           "Mắt chảy nước hoặc đỏ, Chán ăn, Khó thở hoặc thở gấp, Ho",
      //       "diagnosis": null,
      //       "createAt": "2025-01-07T04:19:38.9022608",
      //       "status": "Pending",
      //       "affectedQuantity": 3,
      //       "quantity": 500,
      //       "nameAnimal": null,
      //       "notes": "éc éc éc",
      //       "pictures": [],
      //       "medicalSymptomDetails": null,
      //       "prescriptions": null
      //     }
      //   ]
      // };

      // // Convert mock data to DTOs
      // return (mockResponse['result'] as List)
      //     .map((e) => MedicalSymptomDto.fromJson(e))
      //     .toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        log('[MEDICAL_SYMPTOM_API_CLIENT] Vụ nuôi này không có báo cáo triệu chứng.');
        return null;
      }
      log('[MEDICAL_SYMPTOM_API_CLIENT] Lỗi khi lấy báo cáo triệu chứng');
      log('[MEDICAL_SYMPTOM_API_CLIENT] Error: ${e.message}');
      throw Exception(e.response?.data['result']['message']);
    }
  }
}

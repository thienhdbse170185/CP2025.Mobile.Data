import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/medical_symptom/medical_symptom.dart';
import 'package:dio/dio.dart';

class MedicalSymptomApiClient {
  final Dio dio;
  const MedicalSymptomApiClient({required this.dio});

  Future<List<MedicalSymptomDto>> getSymptomsByBatch(
      String userId, String? farmingBatchId) async {
    try {
      // Comment out the actual API call
      final response = await dio
          .get(ApiEndpoints.getMedicalSymptomsByBatch, queryParameters: {
        'staffId': userId,
        'farmBatchId': farmingBatchId,
      });
      if (response.statusCode == 200) {
        return (response.data['result'] as List)
            .map((e) => MedicalSymptomDto.fromJson(e))
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
      log(e.toString());
      throw Exception(e.response?.data['message']);
    }
  }
}

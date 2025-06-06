import 'package:data_layer/model/dto/prescription/prescription.dart';
import 'package:data_layer/model/dto/symptom/symptom.dart';
import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_symptom.freezed.dart';
part 'medical_symptom.g.dart';

@freezed
class MedicalSymptomDto with _$MedicalSymptomDto {
  const factory MedicalSymptomDto({
    required String id,
    required String farmingBatchId,
    required String? symtoms,
    required String? diagnosis,
    required DateTime createAt,
    required String status,
    required int affectedQuantity,
    required int? quantity,
    required String? nameAnimal,
    required String notes,
    required List<PictureSymptom>? pictures,
    required List<SymptomDto>? medicalSymptomDetails,
    required List<PrescriptionDto>? prescriptions,
  }) = _MedicalSymptomDto;

  factory MedicalSymptomDto.fromJson(Map<String, dynamic> json) =>
      _$MedicalSymptomDtoFromJson(json);
}

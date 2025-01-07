import 'package:data_layer/model/dto/cage/cage_dto.dart';
import 'package:data_layer/model/dto/medical_symptom/medical_symptom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription.freezed.dart';
part 'prescription.g.dart';

@freezed
class PrescriptionDto with _$PrescriptionDto {
  const factory PrescriptionDto({
    required String id,
    required String medicalSymptomId,
    required String cageid,
    required DateTime prescribedDate,
    required String? cageType,
    required String notes,
    required int quantityAnimal,
    required String status,
    required int daysToTake,
    required double? price,
    required String doctorApproval,
    required DateTime? endDate,
    required String statusAnimal,
    required MedicalSymptomDto? medicalSymptom,
    required CageDto? cage,
  }) = _PrescriptionDto;

  factory PrescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionDtoFromJson(json);
}

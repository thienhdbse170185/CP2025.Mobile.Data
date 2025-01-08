import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication.freezed.dart';
part 'medication.g.dart';

@freezed
class MedicationDto with _$MedicationDto {
  const factory MedicationDto({
    required String medicationId,
    required String medicationName,
    required int dosage,
    required int duration,
    required bool morning,
    required bool afternoon,
    required bool evening,
    required bool noon,
  }) = _MedicationDto;

  factory MedicationDto.fromJson(Map<String, dynamic> json) =>
      _$MedicationDtoFromJson(json);
}

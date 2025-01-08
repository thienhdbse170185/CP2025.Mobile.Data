// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationDtoImpl _$$MedicationDtoImplFromJson(Map<String, dynamic> json) =>
    _$MedicationDtoImpl(
      medicationId: json['medicationId'] as String,
      medicationName: json['medicationName'] as String,
      dosage: (json['dosage'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      morning: json['morning'] as bool,
      afternoon: json['afternoon'] as bool,
      evening: json['evening'] as bool,
      noon: json['noon'] as bool,
    );

Map<String, dynamic> _$$MedicationDtoImplToJson(_$MedicationDtoImpl instance) =>
    <String, dynamic>{
      'medicationId': instance.medicationId,
      'medicationName': instance.medicationName,
      'dosage': instance.dosage,
      'duration': instance.duration,
      'morning': instance.morning,
      'afternoon': instance.afternoon,
      'evening': instance.evening,
      'noon': instance.noon,
    };

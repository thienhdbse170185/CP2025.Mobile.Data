// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionDtoImpl _$$PrescriptionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionDtoImpl(
      id: json['id'] as String,
      medicalSymptomId: json['medicalSymptomId'] as String,
      cageid: json['cageid'] as String,
      prescribedDate: DateTime.parse(json['prescribedDate'] as String),
      cageType: json['cageType'] as String?,
      notes: json['notes'] as String,
      quantityAnimal: (json['quantityAnimal'] as num).toInt(),
      status: json['status'] as String,
      daysToTake: (json['daysToTake'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble(),
      doctorApproval: json['doctorApproval'] as String,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      statusAnimal: json['statusAnimal'] as String,
      medicalSymptom: json['medicalSymptom'] == null
          ? null
          : MedicalSymptomDto.fromJson(
              json['medicalSymptom'] as Map<String, dynamic>),
      cage: json['cage'] == null
          ? null
          : CageDto.fromJson(json['cage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrescriptionDtoImplToJson(
        _$PrescriptionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicalSymptomId': instance.medicalSymptomId,
      'cageid': instance.cageid,
      'prescribedDate': instance.prescribedDate.toIso8601String(),
      'cageType': instance.cageType,
      'notes': instance.notes,
      'quantityAnimal': instance.quantityAnimal,
      'status': instance.status,
      'daysToTake': instance.daysToTake,
      'price': instance.price,
      'doctorApproval': instance.doctorApproval,
      'endDate': instance.endDate?.toIso8601String(),
      'statusAnimal': instance.statusAnimal,
      'medicalSymptom': instance.medicalSymptom,
      'cage': instance.cage,
    };

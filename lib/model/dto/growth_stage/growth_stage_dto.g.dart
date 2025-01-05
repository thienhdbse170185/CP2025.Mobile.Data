// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_stage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthStageDtoImpl _$$GrowthStageDtoImplFromJson(Map<String, dynamic> json) =>
    _$GrowthStageDtoImpl(
      id: json['id'] as String,
      farmingBatchId: json['farmingBatchId'] as String,
      name: json['name'] as String,
      weightAnimal: (json['weightAnimal'] as num).toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      ageStart: (json['ageStart'] as num).toInt(),
      ageEnd: (json['ageEnd'] as num).toInt(),
      ageStartDate: json['ageStartDate'] as String,
      ageEndDate: json['ageEndDate'] as String,
      status: json['status'] as String,
      recommendedWeightPerSession:
          (json['recommendedWeightPerSession'] as num).toDouble(),
      weightBasedOnBodyMass: (json['weightBasedOnBodyMass'] as num).toDouble(),
      taskDailies: json['taskDailies'] == null
          ? null
          : TaskByUserResponse.fromJson(
              json['taskDailies'] as Map<String, dynamic>),
      vaccineSchedules: (json['vaccineSchedules'] as List<dynamic>?)
          ?.map((e) => VaccineSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GrowthStageDtoImplToJson(
        _$GrowthStageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'farmingBatchId': instance.farmingBatchId,
      'name': instance.name,
      'weightAnimal': instance.weightAnimal,
      'quantity': instance.quantity,
      'ageStart': instance.ageStart,
      'ageEnd': instance.ageEnd,
      'ageStartDate': instance.ageStartDate,
      'ageEndDate': instance.ageEndDate,
      'status': instance.status,
      'recommendedWeightPerSession': instance.recommendedWeightPerSession,
      'weightBasedOnBodyMass': instance.weightBasedOnBodyMass,
      'taskDailies': instance.taskDailies,
      'vaccineSchedules': instance.vaccineSchedules,
    };

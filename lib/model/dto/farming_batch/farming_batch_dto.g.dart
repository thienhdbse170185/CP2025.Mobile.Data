// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farming_batch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmingBatchDtoImpl _$$FarmingBatchDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmingBatchDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      species: json['species'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      completeAt: json['completeAt'] == null
          ? null
          : DateTime.parse(json['completeAt'] as String),
      status: json['status'] as String,
      cleaningFrequency: (json['cleaningFrequency'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      cage: json['cage'] == null
          ? null
          : CageDto.fromJson(json['cage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FarmingBatchDtoImplToJson(
        _$FarmingBatchDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'startDate': instance.startDate.toIso8601String(),
      'completeAt': instance.completeAt?.toIso8601String(),
      'status': instance.status,
      'cleaningFrequency': instance.cleaningFrequency,
      'quantity': instance.quantity,
      'cage': instance.cage,
    };

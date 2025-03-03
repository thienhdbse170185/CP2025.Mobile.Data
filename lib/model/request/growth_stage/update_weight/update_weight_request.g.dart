// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_weight_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateWeightRequestImpl _$$UpdateWeightRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWeightRequestImpl(
      growthStageId: json['growthStageId'] as String,
      weightAnimal: (json['weightAnimal'] as num).toDouble(),
    );

Map<String, dynamic> _$$UpdateWeightRequestImplToJson(
        _$UpdateWeightRequestImpl instance) =>
    <String, dynamic>{
      'growthStageId': instance.growthStageId,
      'weightAnimal': instance.weightAnimal,
    };

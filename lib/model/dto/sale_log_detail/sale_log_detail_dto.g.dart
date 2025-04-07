// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_log_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleLogDetailDtoImpl _$$SaleLogDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaleLogDetailDtoImpl(
      growthStageId: json['growthStageId'] as String,
      growthStageName: json['growthStageName'] as String,
      saleDate: json['saleDate'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      staffId: json['staffId'] as String,
      staffName: json['staffName'] as String,
      saleTypeId: json['saleTypeId'] as String,
      saleTypeName: json['saleTypeName'] as String,
      logTime: json['logTime'] as String,
    );

Map<String, dynamic> _$$SaleLogDetailDtoImplToJson(
        _$SaleLogDetailDtoImpl instance) =>
    <String, dynamic>{
      'growthStageId': instance.growthStageId,
      'growthStageName': instance.growthStageName,
      'saleDate': instance.saleDate,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'total': instance.total,
      'staffId': instance.staffId,
      'staffName': instance.staffName,
      'saleTypeId': instance.saleTypeId,
      'saleTypeName': instance.saleTypeName,
      'logTime': instance.logTime,
    };

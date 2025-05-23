import 'package:data_layer/data_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farming_batch_dto.freezed.dart';
part 'farming_batch_dto.g.dart';

@freezed
class FarmingBatchDto with _$FarmingBatchDto {
  const factory FarmingBatchDto({
    required String id,
    required String? farmingbatchCode,
    required String name,
    required String? species,
    required String? startDate,
    required String? completeAt,
    required String? estimatedTimeStart,
    required String? endDate,
    required String status,
    required int cleaningFrequency,
    required int quantity,
    required int? affectedQuantity,
    required GrowthStageDto? growthStageDetails,
    required CageDto? cage,
  }) = _FarmingBatchDto;

  factory FarmingBatchDto.fromJson(Map<String, dynamic> json) =>
      _$FarmingBatchDtoFromJson(json);
}

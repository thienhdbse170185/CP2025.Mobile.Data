import 'package:data_layer/model/entity/vaccine_schedule/vaccine_schedule.dart';
import 'package:data_layer/model/response/task/task_by_user/task_by_user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_stage_dto.freezed.dart';
part 'growth_stage_dto.g.dart';

@freezed
class GrowthStageDto with _$GrowthStageDto {
  const factory GrowthStageDto({
    required String id,
    required String farmingBatchId,
    required String name,
    required double weightAnimal,
    required int? quantity,
    required int ageStart,
    required int ageEnd,
    required String? foodType,
    required String ageStartDate,
    required String ageEndDate,
    required String status,
    required int? affectQuantity,
    required double recommendedWeightPerSession,
    required double weightBasedOnBodyMass,
    required TaskByUserResponse? taskDailies,
    required List<VaccineSchedule>? vaccineSchedules,
  }) = _GrowthStageDto;

  factory GrowthStageDto.fromJson(Map<String, dynamic> json) =>
      _$GrowthStageDtoFromJson(json);
}

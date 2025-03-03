import 'package:data_layer/model/dto/vaccine_schedule/vaccine_schedule_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine_schedule_by_id_response.freezed.dart';
part 'vaccine_schedule_by_id_response.g.dart';

@freezed
class VaccineScheduleByIdResponse with _$VaccineScheduleByIdResponse {
  const factory VaccineScheduleByIdResponse({
    required bool success,
    required VaccineScheduleDto result,
  }) = _VaccineScheduleByIdResponse;

  factory VaccineScheduleByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$VaccineScheduleByIdResponseFromJson(json);
}

import 'package:data_layer/model/dto/task/vaccin_schedule_log/vaccin_schedule_log_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine_schedule_log_response.freezed.dart';
part 'vaccine_schedule_log_response.g.dart';

@freezed
class VaccineScheduleLogResponse with _$VaccineScheduleLogResponse {
  const factory VaccineScheduleLogResponse({
    required bool success,
    required VaccineScheduleLogDto result,
  }) = _VaccineScheduleLogResponse;

  factory VaccineScheduleLogResponse.fromJson(Map<String, dynamic> json) =>
      _$VaccineScheduleLogResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccin_schedule_log_dto.freezed.dart';
part 'vaccin_schedule_log_dto.g.dart';

@freezed
class VaccinScheduleLogDto with _$VaccinScheduleLogDto {
  const factory VaccinScheduleLogDto({
    required DateTime date,
    required String notes,
    required String photo,
    required String taskId,
  }) = _VaccinScheduleLogDto;

  factory VaccinScheduleLogDto.fromJson(Map<String, dynamic> json) =>
      _$VaccinScheduleLogDtoFromJson(json);
}

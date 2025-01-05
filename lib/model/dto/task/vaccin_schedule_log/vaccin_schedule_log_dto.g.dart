// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccin_schedule_log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccinScheduleLogDtoImpl _$$VaccinScheduleLogDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VaccinScheduleLogDtoImpl(
      date: json['date'] as String,
      notes: json['notes'] as String,
      photo: json['photo'] as String,
      taskId: json['taskId'] as String,
    );

Map<String, dynamic> _$$VaccinScheduleLogDtoImplToJson(
        _$VaccinScheduleLogDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'notes': instance.notes,
      'photo': instance.photo,
      'taskId': instance.taskId,
    };

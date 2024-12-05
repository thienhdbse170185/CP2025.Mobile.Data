import 'package:data_layer/model/entity/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_by_id_response.freezed.dart';
part 'task_by_id_response.g.dart';

@freezed
class TaskByIdResponse with _$TaskByIdResponse {
  const factory TaskByIdResponse({required Task task}) = _TaskByIdResponse;

  factory TaskByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskByIdResponseFromJson(json);
}

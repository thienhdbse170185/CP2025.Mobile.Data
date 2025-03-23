import 'package:data_layer/model/entity/task/tash_type/task_type.dart';
import 'package:data_layer/model/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String cageId,
    required String taskName,
    required String description,
    required String status,
    required String createdAt,
    required int priorityNum,
    required String dueDate,
    required int session,
    String? completedAt,
    String? cageAnimalName,
    bool? isWarning,
    required bool hasAnimalDesease,
    required bool isTreatmentTask,
    required String? prescriptionId,
    required User assignedToUser,
    required TaskType taskType,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

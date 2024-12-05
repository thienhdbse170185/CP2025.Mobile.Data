import 'package:freezed_annotation/freezed_annotation.dart';
import '../user/user.dart'; // Import the updated UserDto
import 'task_type.dart'; // Import the new TaskTypeDto

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
    required User assignedToUser,
    required TaskType taskType,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

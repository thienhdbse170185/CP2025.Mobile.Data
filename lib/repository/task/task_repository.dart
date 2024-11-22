import 'package:data_layer/repository/task/task_api_client.dart';

class TaskRepository {
  final TaskApiClient taskApiClient;
  const TaskRepository({required this.taskApiClient});
}

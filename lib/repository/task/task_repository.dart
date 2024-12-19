import 'package:data_layer/model/entity/task/next_task/next_task.dart';
import 'package:data_layer/model/entity/task/task.dart';
import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';
import 'package:data_layer/model/response/task/task_by_user/task_by_user_response.dart';
import 'package:data_layer/repository/data_client_interface.dart';
import 'package:data_layer/repository/repository_interface.dart';
import 'package:data_layer/repository/task/task_remote_data.dart';

class TaskRepository {
  final TaskRemoteData dataClient;
  const TaskRepository({required this.dataClient});

  Future<void> testConnect() async {
    try {
      await dataClient.testConnect();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> delete(String id) async {
    try {
      return await dataClient.delete(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<List> getAll() async {
    throw UnimplementedError();
  }

  Future<Task> getById(String id) async {
    try {
      return await dataClient.read(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> insert(item) async {
    try {
      await dataClient.create(item);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> update(String taskId, String statusId) async {
    try {
      await dataClient.update(taskId, statusId);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<TasksByCageResponse> getTasksByCageId(String cageId) async {
    try {
      final response = await (dataClient).getTasksByCageId(cageId);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NextTask>> getNextTask(String userId) async {
    try {
      return await (dataClient).getNextTask(userId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TaskByUserResponse>> getTasksByUserIdAndDate(
      String userId, String date, String? cageId) async {
    try {
      return await (dataClient).getTasksByUserIdAndDate(userId, date, cageId);
    } catch (e) {
      rethrow;
    }
  }
}

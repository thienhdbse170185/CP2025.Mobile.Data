import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/entity/task/next_task/next_task.dart';
import 'package:data_layer/model/entity/task/task.dart';
import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';
import 'package:data_layer/model/response/task/task_by_user/task_by_user_response.dart';
import 'package:dio/dio.dart';

class TaskRemoteData {
  final Dio dio;

  TaskRemoteData({required this.dio});

  Future<void> testConnect() async {
    try {
      final response = await dio.get(ApiEndpoints.testConnectAPI);
      if (response.statusCode == 200) {
        log('Connected to server');
      } else {
        log('Failed to connect to server');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<TasksByCageResponse> getTasksByCageId(String cageId) async {
    try {
      final response = await dio
          .get(ApiEndpoints.getTasks, queryParameters: {'CageId': cageId});
      if (response.statusCode == 200) {
        return TasksByCageResponse.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<TasksByCageResponse> fetchTasks() async {
    try {
      final response = await dio.get(ApiEndpoints.getTasks);
      if (response.statusCode == 200) {
        return TasksByCageResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load tasks');
      }
    } on DioException {
      rethrow;
    }
  }

  Future<List<NextTask>> getNextTask(String userId) async {
    try {
      final response = await dio
          .get(ApiEndpoints.getNextTask, queryParameters: {'userId': userId});
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((task) => NextTask.fromJson(task))
            .toList();
      } else {
        throw Exception('Failed to load next task');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<bool> create(entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  Future<bool> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  Future<Task> read(String id) async {
    try {
      final response = await dio.get('${ApiEndpoints.getTasks}/$id');
      if (response.statusCode == 200) {
        return Task.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load task');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<bool> update(String taskId, String statusId) async {
    try {
      final response =
          await dio.put('${ApiEndpoints.getTasks}/$taskId/status/$statusId');
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update task status');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TaskByUserResponse>> getTasksByUserIdAndDate(
      String userId, String date, String? cageId) async {
    try {
      final response = await dio.get(
        '${ApiEndpoints.getUsers}/$userId/tasks',
        queryParameters: {'filterDate': date, 'cageId': cageId},
      );
      if (response.statusCode == 200) {
        final result = response.data['result'];
        if (result is List) {
          return result
              .map((task) => TaskByUserResponse.fromJson(task))
              .toList();
        } else {
          throw Exception('Failed to load tasks: unexpected response format');
        }
      } else {
        throw Exception('Failed to load tasks');
      }
    } on DioException catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

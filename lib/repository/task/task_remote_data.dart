import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/dto/task/daily_food_usage_log/daily_food_usage_log_dto.dart';
import 'package:data_layer/model/dto/task/health_log/health_log_dto.dart';
import 'package:data_layer/model/dto/task/task_have_cage_name/task_have_cage_name.dart';
import 'package:data_layer/model/dto/task/vaccin_schedule_log/vaccin_schedule_log_dto.dart';
import 'package:data_layer/model/entity/task/next_task/next_task.dart';
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

  Future<TaskHaveCageName> read(String id) async {
    try {
      final response = await dio.get('${ApiEndpoints.getTasks}/$id');
      if (response.statusCode == 200) {
        return TaskHaveCageName.fromJson(response.data['result']);
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
      if (e.response?.statusCode == 404) {
        throw Exception('no-task-found');
      }
      rethrow;
    }
  }

  Future<bool> createDailyFoodUsageLog(
      String cageId, DailyFoodUsageLogDto request) async {
    try {
      final response = await dio.post(
          '${ApiEndpoints.dailyFoodUsageLog}/$cageId',
          data: request.toJson());
      if (response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Tạo log cho ăn thất bại!');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }

  Future<bool> createHealthLog(String cageId, HealthLogDto request) async {
    try {
      final response = await dio.post('${ApiEndpoints.healthLog}/$cageId',
          data: request.toJson());
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Tạo log sức khỏe thất bại!');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }

  Future<bool> createVaccinScheduleLog(
      String cageId, VaccinScheduleLogDto request) async {
    try {
      final response = await dio.post(
          '${ApiEndpoints.vaccineScheduleLog}/$cageId',
          data: request.toJson());
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Tạo log lịch tiêm chủng thất bại!');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }

  Future<DailyFoodUsageLogDto> getDailyFoodUsageLog(String taskId) async {
    try {
      final response =
          await dio.get('${ApiEndpoints.dailyFoodUsageLog}/task/$taskId');
      if (response.statusCode == 200) {
        return DailyFoodUsageLogDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load daily food usage log');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }

  Future<HealthLogDto> getHealthLog(String taskId) async {
    try {
      final response = await dio.get('${ApiEndpoints.healthLog}/task/$taskId');
      if (response.statusCode == 200) {
        return HealthLogDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load health log');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }

  Future<VaccinScheduleLogDto> getVaccinScheduleLog(String taskId) async {
    try {
      final response =
          await dio.get('${ApiEndpoints.vaccineScheduleLog}/task/$taskId');
      if (response.statusCode == 200) {
        return VaccinScheduleLogDto.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to load vaccin schedule log');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception('growstage-not-found');
      }
      rethrow;
    }
  }
}

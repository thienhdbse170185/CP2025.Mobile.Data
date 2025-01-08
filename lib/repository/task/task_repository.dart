import 'package:data_layer/model/dto/task/daily_food_usage_log/daily_food_usage_log_dto.dart';
import 'package:data_layer/model/dto/task/health_log/health_log_dto.dart';
import 'package:data_layer/model/dto/task/task_have_cage_name/task_have_cage_name.dart';
import 'package:data_layer/model/dto/task/vaccin_schedule_log/vaccin_schedule_log_dto.dart';
import 'package:data_layer/model/entity/task/next_task/next_task.dart';
import 'package:data_layer/model/response/task/task_by_user/task_by_user_response.dart';
import 'package:data_layer/repository/task/task_remote_data.dart';

class TaskRepository {
  final TaskRemoteData apiClient;
  const TaskRepository({required this.apiClient});

  Future<void> testConnect() async {
    try {
      await apiClient.testConnect();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> delete(String id) async {
    try {
      return await apiClient.delete(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<List> getAll() async {
    throw UnimplementedError();
  }

  Future<TaskHaveCageName> getById(String id) async {
    try {
      return await apiClient.read(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> insert(item) async {
    try {
      await apiClient.create(item);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> update(String taskId, String statusId) async {
    try {
      await apiClient.update(taskId, statusId);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TaskByUserResponse>> getTasksByCageId(
      String userId, String date, String cageId) async {
    try {
      final response =
          await apiClient.getTasksByUserIdAndDate(userId, date, cageId);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NextTask>> getNextTask(String userId) async {
    try {
      return await apiClient.getNextTask(userId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TaskByUserResponse>> getTasksByUserIdAndDate(
      String userId, String date, String? cageId) async {
    try {
      return await apiClient.getTasksByUserIdAndDate(userId, date, cageId);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> createDailyFoodUsageLog(
      String cageId, DailyFoodUsageLogDto request) {
    try {
      return apiClient.createDailyFoodUsageLog(cageId, request);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> createHealthLog(
      String prescriptionId, HealthLogDto request) async {
    try {
      await apiClient.createHealthLog(prescriptionId, request);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> createVaccinScheduleLog(
      String cageId, VaccinScheduleLogDto request) async {
    try {
      await apiClient.createVaccinScheduleLog(cageId, request);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<DailyFoodUsageLogDto> getDailyFoodUsageLog(String taskId) async {
    try {
      return await apiClient.getDailyFoodUsageLog(taskId);
    } catch (e) {
      rethrow;
    }
  }

  Future<HealthLogDto> getHealthLog(String taskId) async {
    try {
      return await apiClient.getHealthLog(taskId);
    } catch (e) {
      rethrow;
    }
  }

  Future<VaccinScheduleLogDto> getVaccinScheduleLog(String taskId) async {
    try {
      return await apiClient.getVaccinScheduleLog(taskId);
    } catch (e) {
      rethrow;
    }
  }
}

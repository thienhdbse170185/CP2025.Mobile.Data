import 'dart:developer';

import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';
import 'package:data_layer/repository/data_client_interface.dart';
import 'package:dio/dio.dart';

class TaskRemoteData implements IDataClient {
  final Dio dio;

  TaskRemoteData({required this.dio});

  @override
  Future<void> testConnect() async {
    try {
      final response = await dio.get('http://192.168.1.67:8088/api/tasks');
      if (response.statusCode == 200) {
        log('Connected to server');
      } else {
        log('Failed to connect to server');
      }
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<TasksByCageResponse> getTasksByCageId(String cageId) async {
    try {
      final response =
          await dio.get('http://192.168.1.67:8088/api/tasks?CageId=$cageId');
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
      final response = await dio.get('http://192.168.1.67:8088/api/tasks');
      if (response.statusCode == 200) {
        return TasksByCageResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load tasks');
      }
    } on DioException {
      rethrow;
    }
  }

  @override
  Future create(entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> read(String id) async {
    try {
      final response = await dio.get('http://192.168.1.67:8088/api/tasks/$id');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load task');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future update(entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

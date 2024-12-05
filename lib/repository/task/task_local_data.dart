import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';
import 'package:data_layer/repository/data_client_interface.dart';
import 'package:data_layer/model/example_data/task.dart';

class TaskLocalData implements IDataClient {
  @override
  Future<Map<String, dynamic>> create(entity) async {
    final date = entity['date'];
    if (tasksByDate.containsKey(date)) {
      tasksByDate[date]!.add(entity);
    } else {
      tasksByDate[date] = [entity];
    }
    return entity;
  }

  @override
  Future<bool> delete(String id) async {
    bool isDeleted = false;
    for (var date in tasksByDate.keys) {
      tasksByDate[date]!.removeWhere((task) {
        if (task['id'] == id) {
          isDeleted = true;
          return true;
        }
        return false;
      });
    }
    return isDeleted;
  }

  @override
  Future<Map<String, dynamic>?> read(String id) async {
    for (var date in tasksByDate.keys) {
      for (var task in tasksByDate[date]!) {
        if (task['id'] == id) {
          return task;
        }
      }
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>> update(entity) async {
    final id = entity['id'];
    for (var date in tasksByDate.keys) {
      for (var task in tasksByDate[date]!) {
        if (task['id'] == id) {
          task['title'] = entity['title'];
          task['status'] = entity['status'];
          task['location'] = entity['location'];
          task['date'] = entity['date'];
          return task;
        }
      }
    }
    return entity;
  }

  Future<List<Map<String, dynamic>>> getTasksByDate(String date) async {
    return tasksByDate[date] ?? [];
  }

  @override
  Future testConnect() {
    // TODO: implement testConnect
    throw UnimplementedError();
  }
  
  @override
  Future<TasksByCageResponse> getTasksByCageId(String cageId) {
    // TODO: implement getTasksByCageId
    throw UnimplementedError();
  }
}

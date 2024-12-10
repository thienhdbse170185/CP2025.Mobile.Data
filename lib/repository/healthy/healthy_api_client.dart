import 'package:data_layer/model/entity/task/next_task/next_task.dart';
import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';
import 'package:data_layer/repository/data_client_interface.dart';

class HealthyApiClient extends IDataClient {
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

  Future<List<NextTask>> getNextTask(String userId) {
    // TODO: implement getNextTask
    throw UnimplementedError();
  }

  Future<TasksByCageResponse> getTasksByCageId(String cageId) {
    // TODO: implement getTasksByCageId
    throw UnimplementedError();
  }

  @override
  Future read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future testConnect() {
    // TODO: implement testConnect
    throw UnimplementedError();
  }

  @override
  Future update(entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

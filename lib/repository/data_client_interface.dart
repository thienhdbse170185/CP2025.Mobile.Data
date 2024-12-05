import 'package:data_layer/model/entity/task/next_task.dart';
import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';

abstract class IDataClient<T> {
  Future testConnect();
  Future<T> create(T entity);
  Future<T> read(String id);
  Future<T> update(T entity);
  Future<bool> delete(String id);
  Future<TasksByCageResponse> getTasksByCageId(String cageId);
  Future<List<NextTask>> getNextTask(String userId);
}

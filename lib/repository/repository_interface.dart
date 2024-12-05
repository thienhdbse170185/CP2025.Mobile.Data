import 'package:data_layer/model/response/task/task_by_cage/tasks_by_cage_response.dart';

abstract class IRepository<T> {
  Future testConnect();
  Future<List<T>> getAll();
  Future<T?> getById(String id);
  Future<bool> insert(T item);
  Future<bool> update(T item);
  Future<bool> delete(String id);
  Future<TasksByCageResponse> getTasksByCageId(String cageId);
}

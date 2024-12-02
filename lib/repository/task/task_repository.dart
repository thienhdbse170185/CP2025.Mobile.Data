import 'package:data_layer/repository/data_client_interface.dart';
import 'package:data_layer/repository/repository_interface.dart';

class TaskRepository implements IRepository {
  final IDataClient dataClient;
  const TaskRepository({required this.dataClient});

  @override
  Future<bool> delete(String id) async {
    try {
      return await dataClient.delete(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List> getAll() async {
    throw UnimplementedError();
  }

  @override
  Future getById(String id) async {
    try {
      return await dataClient.read(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> insert(item) async {
    try {
      await dataClient.create(item);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> update(item) async {
    try {
      await dataClient.update(item);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}

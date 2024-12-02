import 'package:data_layer/repository/data_client_interface.dart';
import 'package:dio/dio.dart';

class TaskRemoteData implements IDataClient {
  final Dio dio;
  const TaskRemoteData({required this.dio});

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
  Future read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future update(entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

import 'package:data_layer/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:data_layer/repository/symptom/symptom_api_client.dart';

class SymptomRepository {
  final SymptomApiClient apiClient;
  SymptomRepository({required this.apiClient});

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

  Future getById(String id) async {
    try {
      return await apiClient.read(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> insert(CreateSymptomRequest request) async {
    try {
      await apiClient.create(request);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> update(item) async {
    try {
      await apiClient.update(item);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}

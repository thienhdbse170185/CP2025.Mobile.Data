import 'package:data_layer/api_endpoints.dart';
import 'package:dio/dio.dart';

class UserApiClient {
  final Dio dio;
  const UserApiClient({required this.dio});

  Future<String> getServerTime() async {
    try {
      final response = await dio.get(ApiEndpoints.getServerTime);
      if (response.statusCode == 200) {
        return response.data['result'];
      } else {
        throw Exception('Failed to get server time');
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }
}

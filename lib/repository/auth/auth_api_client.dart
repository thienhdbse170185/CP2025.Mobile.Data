import 'package:data_layer/model/entity/user/user.dart';
import 'package:dio/dio.dart';

class AuthApiClient {
  final Dio dio;
  const AuthApiClient({required this.dio});

  Future<User> login(String username, String password) async {
    final response = await dio.post('/login', data: {'username': username, 'password': password});
    return User.fromJson(response.data);
  }
}

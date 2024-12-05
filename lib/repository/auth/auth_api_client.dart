import 'package:data_layer/model/entity/user/user.dart';
import 'package:data_layer/repository/auth/auth_data_client.dart';
import 'package:dio/dio.dart';

class AuthApiClient implements IAuthDataClient {
  final Dio dio;
  const AuthApiClient({required this.dio});

  @override
  Future<User> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

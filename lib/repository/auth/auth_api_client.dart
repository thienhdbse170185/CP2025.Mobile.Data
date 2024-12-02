import 'package:data_layer/model/dto/user/user_dto.dart';
import 'package:data_layer/repository/auth/auth_data_client.dart';
import 'package:dio/dio.dart';

class AuthApiClient implements IAuthDataClient {
  final Dio dio;
  const AuthApiClient({required this.dio});

  @override
  Future<UserDto> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<UserDto> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

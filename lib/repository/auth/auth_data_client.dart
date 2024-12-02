import 'package:data_layer/data_layer.dart';

abstract class IAuthDataClient {
  Future<UserDto> login(String email, String password);
  Future<void> logout();
  Future<UserDto> getUserInfo();
}

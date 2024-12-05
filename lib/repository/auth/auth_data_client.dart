import 'package:data_layer/data_layer.dart';

abstract class IAuthDataClient {
  Future<User> login(String email, String password);
  Future<void> logout();
  Future<User> getUserInfo();
}

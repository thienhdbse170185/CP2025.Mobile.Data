import 'package:data_layer/repository/auth/auth_api_client.dart';
import 'package:data_layer/model/entity/user/user.dart';

class AuthRepository {
  final AuthApiClient authApiClient;
  const AuthRepository({required this.authApiClient});

  Future<User> login(String username, String password) async {
    return await authApiClient.login(username, password);
  }
}

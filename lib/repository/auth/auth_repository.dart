import 'package:data_layer/model/response/auth/login.dart';
import 'package:data_layer/repository/auth/auth_api_client.dart';

class AuthRepository {
  final AuthApiClient authApiClient;
  const AuthRepository({required this.authApiClient});

  Future<LoginResponse> login(String username, String password) async {
    try {
      return await authApiClient.login(username, password);
    } catch (e) {
      rethrow;
    }
  }
}

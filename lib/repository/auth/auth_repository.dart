import 'package:data_layer/repository/auth/auth_api_client.dart';

class AuthRepository {
  final AuthApiClient authApiClient;
  const AuthRepository({required this.authApiClient});
}

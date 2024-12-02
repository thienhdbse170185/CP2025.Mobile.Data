import 'package:data_layer/data_layer.dart';
import 'package:data_layer/repository/auth/auth_data_client.dart';

class AuthRepository {
  // Remove the authApiClient dependency
  final IAuthDataClient dataClient;
  const AuthRepository({required this.dataClient});

  Future<int> login(String username, String password) async {
    // Temporary local login logic
    UserDto user = await dataClient.login(username, password);
    return user.id;
  }
}

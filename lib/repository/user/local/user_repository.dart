import 'package:data_layer/repository/user/user_api_client.dart';

class UserRepository {
  final UserApiClient userApiClient;
  const UserRepository({required this.userApiClient});

  Future<String> getServerTime() async {
    try {
      return userApiClient.getServerTime();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

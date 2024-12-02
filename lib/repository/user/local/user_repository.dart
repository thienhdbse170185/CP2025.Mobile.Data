import 'package:data_layer/model/dto/user/user_dto.dart';
import 'package:data_layer/repository/user/user_api_client.dart';
import 'package:data_layer/model/example_data/user.dart';

class UserRepository {
  final UserApiClient userApiClient;
  const UserRepository({required this.userApiClient});

  UserDto? getUserByEmail(String email) {
    return sampleUsers.firstWhere((user) => user.email == email);
  }
}

import 'package:data_layer/model/dto/user/user_dto.dart';
import 'package:data_layer/repository/auth/auth_data_client.dart';

class AuthLocalData implements IAuthDataClient {
  @override
  Future<UserDto> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<UserDto> login(String email, String password) {
    if (email == 'staff@gmail.com' && password == '123456') {
      return Future.value(UserDto(
        id: 1,
        email: email,
        name: 'Staff User',
        role: Role.FarmStaff,
      ));
    } else {
      throw Exception('Login failed');
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

import 'package:data_layer/model/entity/user/user.dart';
import 'package:data_layer/repository/auth/auth_data_client.dart';

class AuthLocalData implements IAuthDataClient {
  @override
  Future<User> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // if (email == 'staff@gmail.com' && password == '123456') {
    //   return Future.value(UserDto(
    //     id: 1,
    //     email: email,
    //     name: 'Staff User',
    //     role: Role.FarmStaff,
    //   ));
    // } else {
    //   throw Exception('Login failed');
    // }
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

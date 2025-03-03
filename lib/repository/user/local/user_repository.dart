import 'package:data_layer/repository/user/user_api_client.dart';

class UserRepository {
  final UserApiClient userApiClient;
  const UserRepository({required this.userApiClient});

  Future<String> getServerTime() async {
    try {
      return await userApiClient.getServerTime();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> updateDeviceToken(String userId, String deviceToken) async {
    try {
      return await userApiClient.updateDeviceToken(userId, deviceToken);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> sendOTP(String email, bool isResend) async {
    try {
      return await userApiClient.sendOTP(email, isResend);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> updatePassword(
      {required String userId,
      required String oldPassword,
      required String newPassword}) async {
    try {
      return await userApiClient.updatePassword(
          userId: userId, oldPassword: oldPassword, newPassword: newPassword);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> verifyOTP({required String email, required String otp}) async {
    try {
      return await userApiClient.verifyOTP(email: email, otp: otp);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

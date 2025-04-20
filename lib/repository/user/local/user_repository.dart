import 'package:data_layer/model/dto/user/user_dto.dart';
import 'package:data_layer/model/request/user/update_user_info/update_user_info_request.dart';
import 'package:data_layer/model/response/server_time/get_server_time_response.dart';
import 'package:data_layer/repository/user/user_api_client.dart';

class UserRepository {
  final UserApiClient userApiClient;
  const UserRepository({required this.userApiClient});

  Future<GetServerTimeResponse> getServerTime() async {
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

  Future<bool> sendOTP(String email, String username, bool isResend) async {
    try {
      return await userApiClient.sendOTP(email, username, isResend);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> sendOTPSms(
      String phoneNumber, String username, bool isResend) async {
    try {
      return await userApiClient.sendOTPSms(phoneNumber, username, isResend);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserDto> getUserProfileByUserId(String userId) async {
    try {
      return await userApiClient.getUserProfileByUserId(userId);
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

  Future<bool> updateUserInfo(
      String userId, UpdateUserInfoRequest request) async {
    try {
      return await userApiClient.updateUserInfo(userId, request);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

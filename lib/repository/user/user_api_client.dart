import 'dart:developer';

import 'package:data_layer/api_endpoints.dart';
import 'package:data_layer/model/response/server_time/get_server_time_response.dart';
import 'package:dio/dio.dart';

class UserApiClient {
  final Dio dio;
  const UserApiClient({required this.dio});

  Future<GetServerTimeResponse> getServerTime() async {
    try {
      final response = await dio.get(ApiEndpoints.getServerTime);
      if (response.statusCode == 200) {
        return GetServerTimeResponse.fromJson(response.data['result']);
      } else {
        throw Exception('Failed to get server time');
      }
    } on DioException catch (e) {
      log('[UserApiClient] error - getServerTime: ${e.toString()}');
      throw Exception(e.toString());
    }
  }

  Future<bool> updateDeviceToken(String userId, String deviceToken) async {
    try {
      final response = await dio.put('${ApiEndpoints.getUsers}/$userId/device',
          data: {'deviceId': deviceToken});
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update device token');
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> sendOTP(String email, String username, bool isResend) async {
    try {
      final request = {
        'email': email,
        'username': username,
        'isResend': isResend,
      };
      final response =
          await dio.post('${ApiEndpoints.getUsers}/otp/send', data: request);
      if (response.statusCode == 200) {
        log('[Server Send_OTP]: Server đã gửi OTP đến email $email');
        return true;
      } else {
        throw Exception('Failed to send OTP');
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> updatePassword({
    required String userId,
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      final request = {
        'currentPassword': oldPassword,
        'newPassword': newPassword,
      };
      final response = await dio.put(
          '${ApiEndpoints.getUsers}/$userId/update-password',
          data: request);
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update password');
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> verifyOTP({required String email, required String otp}) async {
    try {
      final request = {
        'email': email,
        'otp': otp,
      };
      final response =
          await dio.post('${ApiEndpoints.getUsers}/otp/verify', data: request);
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to verify OTP');
      }
    } on DioException catch (e) {
      throw Exception(e.toString());
    }
  }
}

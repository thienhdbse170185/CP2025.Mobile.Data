import 'dart:io';

import 'package:data_layer/model/response/upload_image/upload_image_response.dart';
import 'package:data_layer/repository/upload_image/upload_image_api_client.dart';

class UploadImageRepository {
  final UploadImageApiClient _uploadImageApiClient;
  const UploadImageRepository(
      {required UploadImageApiClient uploadImageApiClient})
      : _uploadImageApiClient = uploadImageApiClient;

  Future<UploadImageResponse> uploadImage({required File file}) async {
    try {
      return _uploadImageApiClient.uploadImage(file: file);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> deleteImage({required String imageId}) async {
    try {
      return _uploadImageApiClient.deleteImage(imageId: imageId);
    } catch (e) {
      rethrow;
    }
  }
}

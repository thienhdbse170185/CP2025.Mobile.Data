import 'package:data_layer/data_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_multiple_image_response.freezed.dart';
part 'upload_multiple_image_response.g.dart';

@freezed
class UploadMultipleImageResponse with _$UploadMultipleImageResponse {
  factory UploadMultipleImageResponse({
    required String message,
    required List<UploadImageDto> images,
  }) = _UploadMultipleImageResponse;

  factory UploadMultipleImageResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadMultipleImageResponseFromJson(json);
}

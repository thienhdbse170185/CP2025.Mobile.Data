import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_symptom_request.freezed.dart';
part 'create_symptom_request.g.dart';

@freezed
class CreateSymptomRequest with _$CreateSymptomRequest {
  const factory CreateSymptomRequest(
      {required String farmingBatchId,
      required String symptoms,
      required String status,
      required int affectedQuantity,
      required String notes,
      required List<PictureSymptom> pictures}) = _CreateSymptomRequest;

  factory CreateSymptomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSymptomRequestFromJson(json);
}

@freezed
class PictureSymptom with _$PictureSymptom {
  const factory PictureSymptom(
      {required String image,
      required DateTime dateCaptured}) = _PictureSymptom;

  factory PictureSymptom.fromJson(Map<String, dynamic> json) =>
      _$PictureSymptomFromJson(json);
}

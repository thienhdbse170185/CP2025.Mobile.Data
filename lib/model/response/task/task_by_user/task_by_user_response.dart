import 'package:data_layer/model/dto/cage/cage_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_by_user_response.freezed.dart';
part 'task_by_user_response.g.dart';

@freezed
class TaskByUserResponse with _$TaskByUserResponse {
  const factory TaskByUserResponse({
    required String sessionName,
    required List<CageDto> cages,
  }) = _TaskByUserResponse;

  factory TaskByUserResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskByUserResponseFromJson(json);
}

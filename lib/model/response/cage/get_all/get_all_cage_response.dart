import 'package:data_layer/model/entity/cage/cage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_cage_response.freezed.dart';
part 'get_all_cage_response.g.dart';

@freezed
class GetAllCageResponse with _$GetAllCageResponse {
  const factory GetAllCageResponse({required List<Cage> items}) =
      _GetAllCageResponse;

  factory GetAllCageResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCageResponseFromJson(json);
}

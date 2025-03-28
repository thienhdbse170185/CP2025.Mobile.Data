import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_sale_request.freezed.dart';
part 'animal_sale_request.g.dart';

@freezed
class AnimalSaleRequest with _$AnimalSaleRequest {
  const factory AnimalSaleRequest({
    required String growthStageId,
    required String saleDate,
    required int unitPrice,
    required int quantity,
    required String staffId,
    required String saleTypeId,
  }) = _AnimalSaleRequest;

  factory AnimalSaleRequest.fromJson(Map<String, dynamic> json) =>
      _$AnimalSaleRequestFromJson(json);
}

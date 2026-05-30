import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_region.dart';

part 'address_delivery_area.freezed.dart';
part 'address_delivery_area.g.dart';

@freezed
abstract class AddressDeliveryArea with _$AddressDeliveryArea {
  const factory AddressDeliveryArea({
    required int id,
    required String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_en') String? nameEn,
    @JsonKey(name: 'delivery_fee') String? deliveryFee,
    DeliveryRegion? region,
  }) = _AddressDeliveryArea;

  factory AddressDeliveryArea.fromJson(Map<String, dynamic> json) =>
      _$AddressDeliveryAreaFromJson(json);
}

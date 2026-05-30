import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_shipping.freezed.dart';
part 'order_shipping.g.dart';

@freezed
abstract class OrderShipping with _$OrderShipping {
  const factory OrderShipping({
    String? label,
    @JsonKey(name: 'recipient_name') String? recipientName,
    @JsonKey(name: 'recipient_phone') String? recipientPhone,
    @JsonKey(name: 'address_line1') String? addressLine1,
    @JsonKey(name: 'address_line2') String? addressLine2,
    String? city,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'delivery_region_code') String? deliveryRegionCode,
    @JsonKey(name: 'delivery_area_code') String? deliveryAreaCode,
  }) = _OrderShipping;

  factory OrderShipping.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingFromJson(json);

  const OrderShipping._();

  String summaryLine() {
    return [
      addressLine1,
      addressLine2,
      city,
      areaName,
    ].whereType<String>().where((part) => part.isNotEmpty).join(', ');
  }
}

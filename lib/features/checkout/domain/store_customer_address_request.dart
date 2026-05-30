import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_customer_address_request.freezed.dart';
part 'store_customer_address_request.g.dart';

@freezed
abstract class StoreCustomerAddressRequest with _$StoreCustomerAddressRequest {
  const factory StoreCustomerAddressRequest({
    @JsonKey(name: 'delivery_area_id') required int deliveryAreaId,
    @JsonKey(name: 'address_line1') required String addressLine1,
    @JsonKey(name: 'address_line2') String? addressLine2,
    String? city,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? label,
    @JsonKey(name: 'recipient_name') String? recipientName,
    @JsonKey(name: 'recipient_phone') String? recipientPhone,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
  }) = _StoreCustomerAddressRequest;

  factory StoreCustomerAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$StoreCustomerAddressRequestFromJson(json);
}

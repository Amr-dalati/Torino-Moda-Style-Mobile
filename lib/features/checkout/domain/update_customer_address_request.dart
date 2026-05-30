import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_customer_address_request.freezed.dart';
part 'update_customer_address_request.g.dart';

@freezed
abstract class UpdateCustomerAddressRequest with _$UpdateCustomerAddressRequest {
  const factory UpdateCustomerAddressRequest({
    @JsonKey(name: 'delivery_area_id') int? deliveryAreaId,
    @JsonKey(name: 'address_line1') String? addressLine1,
    @JsonKey(name: 'address_line2') String? addressLine2,
    String? city,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? label,
    @JsonKey(name: 'recipient_name') String? recipientName,
    @JsonKey(name: 'recipient_phone') String? recipientPhone,
    @JsonKey(name: 'is_default') bool? isDefault,
  }) = _UpdateCustomerAddressRequest;

  factory UpdateCustomerAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerAddressRequestFromJson(json);
}

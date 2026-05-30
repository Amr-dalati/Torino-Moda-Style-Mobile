import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_delivery_area.dart';

part 'customer_address.freezed.dart';
part 'customer_address.g.dart';

@freezed
abstract class CustomerAddress with _$CustomerAddress {
  const factory CustomerAddress({
    required int id,
    String? label,
    @JsonKey(name: 'recipient_name') String? recipientName,
    @JsonKey(name: 'recipient_phone') String? recipientPhone,
    @JsonKey(name: 'address_line1') required String addressLine1,
    @JsonKey(name: 'address_line2') String? addressLine2,
    String? city,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
    @JsonKey(name: 'delivery_area') AddressDeliveryArea? deliveryArea,
  }) = _CustomerAddress;

  factory CustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressFromJson(json);

  const CustomerAddress._();

  String summaryLine({required bool preferArabic}) {
    final area = deliveryArea?.displayName(preferArabic: preferArabic) ?? areaName;
    return [addressLine1, ?city, ?area]
        .whereType<String>()
        .join(', ');
  }

  String displayName({required bool preferArabic}) {
    if (label != null && label!.isNotEmpty) return label!;
    return summaryLine(preferArabic: preferArabic);
  }
}

extension AddressDeliveryAreaDisplay on AddressDeliveryArea {
  String displayName({required bool preferArabic}) {
    if (preferArabic) {
      return (nameAr?.isNotEmpty ?? false) ? nameAr! : (nameEn ?? code);
    }
    return (nameEn?.isNotEmpty ?? false) ? nameEn! : (nameAr ?? code);
  }
}

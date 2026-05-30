// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_customer_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreCustomerAddressRequest _$StoreCustomerAddressRequestFromJson(
  Map<String, dynamic> json,
) => _StoreCustomerAddressRequest(
  deliveryAreaId: (json['delivery_area_id'] as num).toInt(),
  addressLine1: json['address_line1'] as String,
  addressLine2: json['address_line2'] as String?,
  city: json['city'] as String?,
  areaName: json['area_name'] as String?,
  postalCode: json['postal_code'] as String?,
  label: json['label'] as String?,
  recipientName: json['recipient_name'] as String?,
  recipientPhone: json['recipient_phone'] as String?,
  isDefault: json['is_default'] as bool? ?? false,
);

Map<String, dynamic> _$StoreCustomerAddressRequestToJson(
  _StoreCustomerAddressRequest instance,
) => <String, dynamic>{
  'delivery_area_id': instance.deliveryAreaId,
  'address_line1': instance.addressLine1,
  'address_line2': instance.addressLine2,
  'city': instance.city,
  'area_name': instance.areaName,
  'postal_code': instance.postalCode,
  'label': instance.label,
  'recipient_name': instance.recipientName,
  'recipient_phone': instance.recipientPhone,
  'is_default': instance.isDefault,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderShipping _$OrderShippingFromJson(Map<String, dynamic> json) =>
    _OrderShipping(
      label: json['label'] as String?,
      recipientName: json['recipient_name'] as String?,
      recipientPhone: json['recipient_phone'] as String?,
      addressLine1: json['address_line1'] as String?,
      addressLine2: json['address_line2'] as String?,
      city: json['city'] as String?,
      areaName: json['area_name'] as String?,
      postalCode: json['postal_code'] as String?,
      deliveryRegionCode: json['delivery_region_code'] as String?,
      deliveryAreaCode: json['delivery_area_code'] as String?,
    );

Map<String, dynamic> _$OrderShippingToJson(_OrderShipping instance) =>
    <String, dynamic>{
      'label': instance.label,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'city': instance.city,
      'area_name': instance.areaName,
      'postal_code': instance.postalCode,
      'delivery_region_code': instance.deliveryRegionCode,
      'delivery_area_code': instance.deliveryAreaCode,
    };

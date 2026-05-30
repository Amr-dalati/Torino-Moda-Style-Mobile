// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerAddress _$CustomerAddressFromJson(Map<String, dynamic> json) =>
    _CustomerAddress(
      id: (json['id'] as num).toInt(),
      label: json['label'] as String?,
      recipientName: json['recipient_name'] as String?,
      recipientPhone: json['recipient_phone'] as String?,
      addressLine1: json['address_line1'] as String,
      addressLine2: json['address_line2'] as String?,
      city: json['city'] as String?,
      areaName: json['area_name'] as String?,
      postalCode: json['postal_code'] as String?,
      isDefault: json['is_default'] as bool? ?? false,
      deliveryArea: json['delivery_area'] == null
          ? null
          : AddressDeliveryArea.fromJson(
              json['delivery_area'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CustomerAddressToJson(_CustomerAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'city': instance.city,
      'area_name': instance.areaName,
      'postal_code': instance.postalCode,
      'is_default': instance.isDefault,
      'delivery_area': instance.deliveryArea,
    };

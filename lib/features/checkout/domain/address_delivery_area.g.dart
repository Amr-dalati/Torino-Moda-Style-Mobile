// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_delivery_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDeliveryArea _$AddressDeliveryAreaFromJson(Map<String, dynamic> json) =>
    _AddressDeliveryArea(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      deliveryFee: json['delivery_fee'] as String?,
      region: json['region'] == null
          ? null
          : DeliveryRegion.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressDeliveryAreaToJson(
  _AddressDeliveryArea instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name_ar': instance.nameAr,
  'name_en': instance.nameEn,
  'delivery_fee': instance.deliveryFee,
  'region': instance.region,
};

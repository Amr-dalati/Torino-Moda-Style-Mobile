// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryArea _$DeliveryAreaFromJson(Map<String, dynamic> json) =>
    _DeliveryArea(
      id: (json['id'] as num).toInt(),
      regionId: (json['region_id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      deliveryFee: json['delivery_fee'] as String,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$DeliveryAreaToJson(_DeliveryArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'region_id': instance.regionId,
      'code': instance.code,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'delivery_fee': instance.deliveryFee,
      'is_active': instance.isActive,
    };

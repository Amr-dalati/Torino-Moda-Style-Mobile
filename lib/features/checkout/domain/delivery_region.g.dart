// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryRegion _$DeliveryRegionFromJson(Map<String, dynamic> json) =>
    _DeliveryRegion(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$DeliveryRegionToJson(_DeliveryRegion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'is_active': instance.isActive,
    };

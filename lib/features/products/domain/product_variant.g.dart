// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    _ProductVariant(
      id: (json['id'] as num).toInt(),
      phoenixId: json['phoenix_id'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      color: json['color'] == null
          ? null
          : ProductColor.fromJson(json['color'] as Map<String, dynamic>),
      size: json['size'] == null
          ? null
          : ProductSize.fromJson(json['size'] as Map<String, dynamic>),
      salePrice: _priceFromJson(json['sale_price']),
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$ProductVariantToJson(_ProductVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoenix_id': instance.phoenixId,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'color': instance.color,
      'size': instance.size,
      'sale_price': instance.salePrice,
      'is_active': instance.isActive,
    };

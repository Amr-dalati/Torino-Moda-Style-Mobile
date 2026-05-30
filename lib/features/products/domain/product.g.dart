// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  phoenixId: json['phoenix_id'] as String?,
  productCode: json['product_code'] as String,
  barcode: json['barcode'] as String?,
  nameAr: json['name_ar'] as String?,
  nameEn: json['name_en'] as String?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  brand: json['brand'] == null
      ? null
      : Brand.fromJson(json['brand'] as Map<String, dynamic>),
  salePrice: _priceFromJson(json['sale_price']),
  isActive: json['is_active'] as bool? ?? true,
  variantsCount: (json['variants_count'] as num?)?.toInt(),
  variants: (json['variants'] as List<dynamic>?)
      ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'phoenix_id': instance.phoenixId,
  'product_code': instance.productCode,
  'barcode': instance.barcode,
  'name_ar': instance.nameAr,
  'name_en': instance.nameEn,
  'category': instance.category,
  'brand': instance.brand,
  'sale_price': instance.salePrice,
  'is_active': instance.isActive,
  'variants_count': instance.variantsCount,
  'variants': instance.variants,
};

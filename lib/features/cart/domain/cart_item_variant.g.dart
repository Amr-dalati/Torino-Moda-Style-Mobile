// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItemVariantProduct _$CartItemVariantProductFromJson(
  Map<String, dynamic> json,
) => _CartItemVariantProduct(
  id: (json['id'] as num).toInt(),
  productCode: json['product_code'] as String,
  nameEn: json['name_en'] as String?,
  nameAr: json['name_ar'] as String?,
  salePrice: _priceFromJson(json['sale_price']),
);

Map<String, dynamic> _$CartItemVariantProductToJson(
  _CartItemVariantProduct instance,
) => <String, dynamic>{
  'id': instance.id,
  'product_code': instance.productCode,
  'name_en': instance.nameEn,
  'name_ar': instance.nameAr,
  'sale_price': instance.salePrice,
};

_CartItemVariantColor _$CartItemVariantColorFromJson(
  Map<String, dynamic> json,
) => _CartItemVariantColor(
  code: json['code'] as String,
  nameEn: json['name_en'] as String?,
  nameAr: json['name_ar'] as String?,
);

Map<String, dynamic> _$CartItemVariantColorToJson(
  _CartItemVariantColor instance,
) => <String, dynamic>{
  'code': instance.code,
  'name_en': instance.nameEn,
  'name_ar': instance.nameAr,
};

_CartItemVariantSize _$CartItemVariantSizeFromJson(Map<String, dynamic> json) =>
    _CartItemVariantSize(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CartItemVariantSizeToJson(
  _CartItemVariantSize instance,
) => <String, dynamic>{'code': instance.code, 'name': instance.name};

_CartItemVariant _$CartItemVariantFromJson(Map<String, dynamic> json) =>
    _CartItemVariant(
      id: (json['id'] as num).toInt(),
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      salePrice: _priceFromJson(json['sale_price']),
      color: json['color'] == null
          ? null
          : CartItemVariantColor.fromJson(
              json['color'] as Map<String, dynamic>,
            ),
      size: json['size'] == null
          ? null
          : CartItemVariantSize.fromJson(json['size'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : CartItemVariantProduct.fromJson(
              json['product'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CartItemVariantToJson(_CartItemVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'sale_price': instance.salePrice,
      'color': instance.color,
      'size': instance.size,
      'product': instance.product,
    };

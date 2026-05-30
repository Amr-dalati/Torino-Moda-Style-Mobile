// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  id: (json['id'] as num).toInt(),
  productVariantId: (json['product_variant_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  unitPriceSnapshot: json['unit_price_snapshot'] as String,
  lineTotal: json['line_total'] as String,
  productCode: json['product_code'] as String,
  variantSku: json['variant_sku'] as String?,
  variantBarcode: json['variant_barcode'] as String?,
  productNameEn: json['product_name_en'] as String?,
  productNameAr: json['product_name_ar'] as String?,
  colorCode: json['color_code'] as String?,
  sizeCode: json['size_code'] as String?,
);

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_variant_id': instance.productVariantId,
      'quantity': instance.quantity,
      'unit_price_snapshot': instance.unitPriceSnapshot,
      'line_total': instance.lineTotal,
      'product_code': instance.productCode,
      'variant_sku': instance.variantSku,
      'variant_barcode': instance.variantBarcode,
      'product_name_en': instance.productNameEn,
      'product_name_ar': instance.productNameAr,
      'color_code': instance.colorCode,
      'size_code': instance.sizeCode,
    };

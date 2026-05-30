// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  id: (json['id'] as num).toInt(),
  productVariantId: (json['product_variant_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  unitPriceSnapshot: json['unit_price_snapshot'] as String,
  lineTotal: json['line_total'] as String,
  variant: json['variant'] == null
      ? null
      : CartItemVariant.fromJson(json['variant'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'id': instance.id,
  'product_variant_id': instance.productVariantId,
  'quantity': instance.quantity,
  'unit_price_snapshot': instance.unitPriceSnapshot,
  'line_total': instance.lineTotal,
  'variant': instance.variant,
};

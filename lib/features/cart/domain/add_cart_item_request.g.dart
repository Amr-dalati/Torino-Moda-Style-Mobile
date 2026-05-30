// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cart_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCartItemRequest _$AddCartItemRequestFromJson(Map<String, dynamic> json) =>
    _AddCartItemRequest(
      productVariantId: (json['product_variant_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddCartItemRequestToJson(_AddCartItemRequest instance) =>
    <String, dynamic>{
      'product_variant_id': instance.productVariantId,
      'quantity': instance.quantity,
    };

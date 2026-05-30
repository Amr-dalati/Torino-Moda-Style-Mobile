// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutOrder _$CheckoutOrderFromJson(Map<String, dynamic> json) =>
    _CheckoutOrder(
      id: (json['id'] as num).toInt(),
      orderNumber: json['order_number'] as String,
      orderStatus: json['order_status'] as String,
      paymentStatus: json['payment_status'] as String,
      subtotal: json['subtotal'] as String,
      deliveryFee: json['delivery_fee'] as String,
      discountTotal: json['discount_total'] as String,
      total: json['total'] as String,
      currency: json['currency'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CheckoutOrderToJson(_CheckoutOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'order_status': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'subtotal': instance.subtotal,
      'delivery_fee': instance.deliveryFee,
      'discount_total': instance.discountTotal,
      'total': instance.total,
      'currency': instance.currency,
      'created_at': instance.createdAt?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: (json['id'] as num).toInt(),
  orderNumber: json['order_number'] as String,
  orderStatus: json['order_status'] as String,
  paymentStatus: json['payment_status'] as String,
  subtotal: json['subtotal'] as String,
  deliveryFee: json['delivery_fee'] as String,
  discountTotal: json['discount_total'] as String,
  total: json['total'] as String,
  currency: json['currency'] as String,
  shipping: json['shipping'] == null
      ? null
      : OrderShipping.fromJson(json['shipping'] as Map<String, dynamic>),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  payments:
      (json['payments'] as List<dynamic>?)
          ?.map((e) => OrderPayment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'order_number': instance.orderNumber,
  'order_status': instance.orderStatus,
  'payment_status': instance.paymentStatus,
  'subtotal': instance.subtotal,
  'delivery_fee': instance.deliveryFee,
  'discount_total': instance.discountTotal,
  'total': instance.total,
  'currency': instance.currency,
  'shipping': instance.shipping,
  'items': instance.items,
  'payments': instance.payments,
  'created_at': instance.createdAt?.toIso8601String(),
};

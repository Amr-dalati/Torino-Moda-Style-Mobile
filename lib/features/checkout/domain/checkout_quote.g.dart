// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutQuote _$CheckoutQuoteFromJson(Map<String, dynamic> json) =>
    _CheckoutQuote(
      subtotal: json['subtotal'] as String,
      deliveryFee: json['delivery_fee'] as String,
      discountTotal: json['discount_total'] as String,
      total: json['total'] as String,
    );

Map<String, dynamic> _$CheckoutQuoteToJson(_CheckoutQuote instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'delivery_fee': instance.deliveryFee,
      'discount_total': instance.discountTotal,
      'total': instance.total,
    };

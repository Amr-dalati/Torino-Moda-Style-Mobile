// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutPayment _$CheckoutPaymentFromJson(Map<String, dynamic> json) =>
    _CheckoutPayment(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      amount: json['amount'] as String,
      currency: json['currency'] as String,
      merchantReference: json['merchant_reference'] as String,
      checkoutUrl: json['checkout_url'] as String?,
      gatewayPaymentId: json['gateway_payment_id'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
    );

Map<String, dynamic> _$CheckoutPaymentToJson(_CheckoutPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'amount': instance.amount,
      'currency': instance.currency,
      'merchant_reference': instance.merchantReference,
      'checkout_url': instance.checkoutUrl,
      'gateway_payment_id': instance.gatewayPaymentId,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'paid_at': instance.paidAt?.toIso8601String(),
    };

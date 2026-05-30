// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderPayment _$OrderPaymentFromJson(Map<String, dynamic> json) =>
    _OrderPayment(
      id: (json['id'] as num).toInt(),
      provider: json['provider'] as String?,
      method: json['method'] as String?,
      amount: json['amount'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      merchantReference: json['merchant_reference'] as String,
      gatewayPaymentId: json['gateway_payment_id'] as String?,
      checkoutUrl: json['checkout_url'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
    );

Map<String, dynamic> _$OrderPaymentToJson(_OrderPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'method': instance.method,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': instance.status,
      'merchant_reference': instance.merchantReference,
      'gateway_payment_id': instance.gatewayPaymentId,
      'checkout_url': instance.checkoutUrl,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'paid_at': instance.paidAt?.toIso8601String(),
    };

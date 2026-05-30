// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatestPayment _$LatestPaymentFromJson(Map<String, dynamic> json) =>
    _LatestPayment(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      merchantReference: json['merchant_reference'] as String,
    );

Map<String, dynamic> _$LatestPaymentToJson(_LatestPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'merchant_reference': instance.merchantReference,
    };

_PaymentStatusResponse _$PaymentStatusResponseFromJson(
  Map<String, dynamic> json,
) => _PaymentStatusResponse(
  orderStatus: json['order_status'] as String,
  paymentStatus: json['payment_status'] as String,
  latestPayment: json['latest_payment'] == null
      ? null
      : LatestPayment.fromJson(json['latest_payment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentStatusResponseToJson(
  _PaymentStatusResponse instance,
) => <String, dynamic>{
  'order_status': instance.orderStatus,
  'payment_status': instance.paymentStatus,
  'latest_payment': instance.latestPayment,
};

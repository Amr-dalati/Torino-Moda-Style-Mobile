// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutResult _$CheckoutResultFromJson(Map<String, dynamic> json) =>
    _CheckoutResult(
      order: CheckoutOrder.fromJson(json['order'] as Map<String, dynamic>),
      payment: CheckoutPayment.fromJson(
        json['payment'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CheckoutResultToJson(_CheckoutResult instance) =>
    <String, dynamic>{'order': instance.order, 'payment': instance.payment};

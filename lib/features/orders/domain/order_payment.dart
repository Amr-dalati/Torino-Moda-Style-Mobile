import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment.freezed.dart';
part 'order_payment.g.dart';

@freezed
abstract class OrderPayment with _$OrderPayment {
  const factory OrderPayment({
    required int id,
    String? provider,
    String? method,
    required String amount,
    required String currency,
    required String status,
    @JsonKey(name: 'merchant_reference') required String merchantReference,
    @JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,
    @JsonKey(name: 'checkout_url') String? checkoutUrl,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
  }) = _OrderPayment;

  factory OrderPayment.fromJson(Map<String, dynamic> json) =>
      _$OrderPaymentFromJson(json);
}

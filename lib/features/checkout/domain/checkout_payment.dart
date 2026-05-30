import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_payment.freezed.dart';
part 'checkout_payment.g.dart';

@freezed
abstract class CheckoutPayment with _$CheckoutPayment {
  const factory CheckoutPayment({
    required int id,
    required String status,
    required String amount,
    required String currency,
    @JsonKey(name: 'merchant_reference') required String merchantReference,
    @JsonKey(name: 'checkout_url') String? checkoutUrl,
    @JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
  }) = _CheckoutPayment;

  factory CheckoutPayment.fromJson(Map<String, dynamic> json) =>
      _$CheckoutPaymentFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_response.freezed.dart';
part 'payment_status_response.g.dart';

@freezed
abstract class LatestPayment with _$LatestPayment {
  const factory LatestPayment({
    required int id,
    required String status,
    @JsonKey(name: 'merchant_reference') required String merchantReference,
  }) = _LatestPayment;

  factory LatestPayment.fromJson(Map<String, dynamic> json) =>
      _$LatestPaymentFromJson(json);
}

@freezed
abstract class PaymentStatusResponse with _$PaymentStatusResponse {
  const factory PaymentStatusResponse({
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @JsonKey(name: 'latest_payment') LatestPayment? latestPayment,
  }) = _PaymentStatusResponse;

  factory PaymentStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusResponseFromJson(json);
}

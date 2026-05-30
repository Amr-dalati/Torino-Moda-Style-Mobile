import 'package:freezed_annotation/freezed_annotation.dart';

import 'checkout_order.dart';
import 'checkout_payment.dart';

part 'checkout_result.freezed.dart';
part 'checkout_result.g.dart';

@freezed
abstract class CheckoutResult with _$CheckoutResult {
  const factory CheckoutResult({
    required CheckoutOrder order,
    required CheckoutPayment payment,
  }) = _CheckoutResult;

  factory CheckoutResult.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResultFromJson(json);
}

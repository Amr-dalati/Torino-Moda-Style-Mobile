import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_quote.freezed.dart';
part 'checkout_quote.g.dart';

@freezed
abstract class CheckoutQuote with _$CheckoutQuote {
  const factory CheckoutQuote({
    required String subtotal,
    @JsonKey(name: 'delivery_fee') required String deliveryFee,
    @JsonKey(name: 'discount_total') required String discountTotal,
    required String total,
  }) = _CheckoutQuote;

  factory CheckoutQuote.fromJson(Map<String, dynamic> json) =>
      _$CheckoutQuoteFromJson(json);
}

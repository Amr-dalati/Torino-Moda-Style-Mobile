import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_order.freezed.dart';
part 'checkout_order.g.dart';

@freezed
abstract class CheckoutOrder with _$CheckoutOrder {
  const factory CheckoutOrder({
    required int id,
    @JsonKey(name: 'order_number') required String orderNumber,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    required String subtotal,
    @JsonKey(name: 'delivery_fee') required String deliveryFee,
    @JsonKey(name: 'discount_total') required String discountTotal,
    required String total,
    required String currency,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CheckoutOrder;

  factory CheckoutOrder.fromJson(Map<String, dynamic> json) =>
      _$CheckoutOrderFromJson(json);
}

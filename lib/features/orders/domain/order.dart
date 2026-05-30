import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_item.dart';
import 'order_payment.dart';
import 'order_shipping.dart';
import 'order_status.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required int id,
    @JsonKey(name: 'order_number') required String orderNumber,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    required String subtotal,
    @JsonKey(name: 'delivery_fee') required String deliveryFee,
    @JsonKey(name: 'discount_total') required String discountTotal,
    required String total,
    required String currency,
    OrderShipping? shipping,
    @Default([]) List<OrderItem> items,
    @Default([]) List<OrderPayment> payments,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  const Order._();

  OrderStatus get status => OrderStatus.fromApi(orderStatus);

  PaymentStatus get paymentStatusEnum => PaymentStatus.fromApi(paymentStatus);

  OrderPayment? get latestPayment => payments.isEmpty ? null : payments.first;
}

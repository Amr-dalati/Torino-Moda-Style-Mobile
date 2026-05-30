import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item.dart';
import 'cart_summary.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required int id,
    required String status,
    required String subtotal,
    required String currency,
    @Default([]) List<CartItem> items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  const Cart._();

  CartSummary toSummary() => CartSummary(
        itemCount: items.fold<int>(0, (sum, item) => sum + item.quantity),
        subtotal: subtotal,
        currency: currency,
      );

  bool get isEmpty => items.isEmpty;
}

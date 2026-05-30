import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_summary.freezed.dart';

@freezed
abstract class CartSummary with _$CartSummary {
  const factory CartSummary({
    required int itemCount,
    required String subtotal,
    required String currency,
  }) = _CartSummary;

  const CartSummary._();

  bool get hasItems => itemCount > 0;

  String get badgeLabel => itemCount > 99 ? '99+' : itemCount.toString();
}

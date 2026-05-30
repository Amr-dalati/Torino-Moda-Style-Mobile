import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/cart_summary.dart';
import 'cart_controller.dart';

part 'cart_summary_provider.g.dart';

@riverpod
CartSummary? cartSummary(Ref ref) {
  final cart = ref.watch(cartControllerProvider);
  return cart.when(
    data: (value) => value.toSummary(),
    loading: () => cart.valueOrNull?.toSummary(),
    error: (error, stackTrace) => cart.valueOrNull?.toSummary(),
  );
}

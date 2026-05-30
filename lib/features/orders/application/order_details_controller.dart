import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/error/app_error.dart';
import '../domain/order.dart';
import 'orders_providers.dart';

part 'order_details_controller.g.dart';

@riverpod
class OrderDetailsController extends _$OrderDetailsController {
  @override
  Future<Order> build(int orderId) {
    return ref.read(ordersRepositoryProvider).getOrder(orderId);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(ordersRepositoryProvider).getOrder(orderId),
    );
  }

  Future<void> refreshQuiet() async {
    try {
      final order = await ref.read(ordersRepositoryProvider).getOrder(orderId);
      state = AsyncData(order);
    } on AppError {
      // Keep previous order snapshot during polling.
    }
  }
}

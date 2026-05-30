import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/error/app_error.dart';
import '../domain/payment_status_response.dart';
import 'orders_providers.dart';

part 'payment_status_controller.g.dart';

@riverpod
class PaymentStatusController extends _$PaymentStatusController {
  @override
  Future<PaymentStatusResponse> build(int orderId) {
    return ref.read(ordersRepositoryProvider).getPaymentStatus(orderId);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(ordersRepositoryProvider).getPaymentStatus(orderId),
    );
  }

  /// Silent refresh for polling — keeps prior data on transient errors.
  Future<PaymentStatusResponse?> refreshQuiet() async {
    try {
      final result = await ref.read(ordersRepositoryProvider).getPaymentStatus(orderId);
      state = AsyncData(result);
      return result;
    } on AppError {
      return state.valueOrNull;
    }
  }
}

import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/error/app_error.dart';
import '../domain/payment_status_helpers.dart';
import '../domain/payment_status_response.dart';
import 'order_details_controller.dart';
import 'orders_list_controller.dart';
import 'payment_status_controller.dart';
import 'payment_status_polling_state.dart';

part 'payment_status_polling_controller.g.dart';

const paymentPollInterval = Duration(seconds: 5);

@riverpod
class PaymentStatusPollingController extends _$PaymentStatusPollingController {
  Timer? _timer;

  @override
  PaymentStatusPollingState build(int orderId) {
    ref.onDispose(_stopTimer);
    return const PaymentStatusPollingState();
  }

  void evaluateFromStatus(PaymentStatusResponse status) {
    if (shouldPollPaymentStatus(status)) {
      startPolling();
    } else {
      stopPolling();
    }
  }

  void startPolling() {
    if (_timer != null) return;
    state = state.copyWith(isPolling: true);
    _timer = Timer.periodic(paymentPollInterval, (_) => _pollTick());
  }

  void stopPolling() {
    _stopTimer();
    state = state.copyWith(isPolling: false, isChecking: false);
  }

  Future<void> _pollTick() async {
    if (state.isChecking || _timer == null) return;
    state = state.copyWith(isChecking: true);
    try {
      final status = await ref
          .read(paymentStatusControllerProvider(orderId).notifier)
          .refreshQuiet();
      if (_timer == null) return;
      if (status != null) {
        state = state.copyWith(
          isChecking: false,
          lastCheckedAt: DateTime.now(),
        );
        if (!shouldPollPaymentStatus(status)) {
          stopPolling();
          await ref.read(orderDetailsControllerProvider(orderId).notifier).refreshQuiet();
          ref.invalidate(ordersListControllerProvider);
        }
      } else {
        state = state.copyWith(isChecking: false);
      }
    } on RateLimitError {
      if (_timer == null) return;
      state = state.copyWith(isChecking: false);
      stopPolling();
    } on AppError {
      if (_timer == null) return;
      state = state.copyWith(isChecking: false);
    }
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}

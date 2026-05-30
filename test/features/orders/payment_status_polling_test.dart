import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/orders/application/payment_status_polling_controller.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_response.dart';

void main() {
  test('evaluateFromStatus starts polling for pending payment', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    container
        .read(paymentStatusPollingControllerProvider(1).notifier)
        .evaluateFromStatus(
          const PaymentStatusResponse(
            orderStatus: 'awaiting_payment',
            paymentStatus: 'pending',
          ),
        );

    expect(container.read(paymentStatusPollingControllerProvider(1)).isPolling, isTrue);
  });

  test('evaluateFromStatus does not start polling for paid order', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    container
        .read(paymentStatusPollingControllerProvider(1).notifier)
        .evaluateFromStatus(
          const PaymentStatusResponse(
            orderStatus: 'paid',
            paymentStatus: 'paid',
          ),
        );

    expect(container.read(paymentStatusPollingControllerProvider(1)).isPolling, isFalse);
  });

  test('evaluateFromStatus stops polling when payment becomes paid', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(paymentStatusPollingControllerProvider(1).notifier);
    notifier.startPolling();
    expect(container.read(paymentStatusPollingControllerProvider(1)).isPolling, isTrue);

    notifier.evaluateFromStatus(
      const PaymentStatusResponse(
        orderStatus: 'paid',
        paymentStatus: 'paid',
      ),
    );

    expect(container.read(paymentStatusPollingControllerProvider(1)).isPolling, isFalse);
  });
}

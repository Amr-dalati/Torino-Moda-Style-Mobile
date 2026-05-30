import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_helpers.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_response.dart';

void main() {
  group('shouldPollPaymentStatus', () {
    test('polls when payment pending', () {
      expect(
        shouldPollPaymentStatus(
          const PaymentStatusResponse(
            orderStatus: 'awaiting_payment',
            paymentStatus: 'pending',
          ),
        ),
        isTrue,
      );
    });

    test('does not poll when paid', () {
      expect(
        shouldPollPaymentStatus(
          const PaymentStatusResponse(
            orderStatus: 'paid',
            paymentStatus: 'paid',
          ),
        ),
        isFalse,
      );
    });

    test('does not poll when failed or expired', () {
      expect(
        shouldPollPaymentStatus(
          const PaymentStatusResponse(
            orderStatus: 'awaiting_payment',
            paymentStatus: 'failed',
          ),
        ),
        isFalse,
      );
      expect(
        shouldPollPaymentStatus(
          const PaymentStatusResponse(
            orderStatus: 'awaiting_payment',
            paymentStatus: 'expired',
          ),
        ),
        isFalse,
      );
    });

    test('does not poll when order cancelled', () {
      expect(
        shouldPollPaymentStatus(
          const PaymentStatusResponse(
            orderStatus: 'cancelled',
            paymentStatus: 'pending',
          ),
        ),
        isFalse,
      );
    });
  });
}

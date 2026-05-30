import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/checkout/application/checkout_controller.dart';
import 'package:torino_moda_style_f/features/checkout/application/checkout_providers.dart';
import 'package:torino_moda_style_f/features/checkout/data/repositories/checkout_repository.dart';
import 'package:torino_moda_style_f/features/checkout/data/sources/checkout_remote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_quote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_quote_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_result.dart';

class _FakeCheckoutRemote implements CheckoutRemote {
  @override
  Future<CheckoutQuote> quote(CheckoutQuoteRequest request) async {
    return const CheckoutQuote(
      subtotal: '200.00',
      deliveryFee: '25.00',
      discountTotal: '0.00',
      total: '225.00',
    );
  }

  @override
  Future<CheckoutResult> checkout(CheckoutRequest request) async {
    return CheckoutResult.fromJson({
      'order': {
        'id': 9,
        'order_number': 'TMS-9',
        'order_status': 'awaiting_payment',
        'payment_status': 'pending',
        'subtotal': '200.00',
        'delivery_fee': '25.00',
        'discount_total': '0.00',
        'total': '225.00',
        'currency': 'EGP',
      },
      'payment': {
        'id': 9,
        'status': 'pending',
        'amount': '225.00',
        'currency': 'EGP',
        'merchant_reference': 'mr_9',
      },
    });
  }
}

void main() {
  test('CheckoutQuoteController loads quote for address', () async {
    final container = ProviderContainer(
      overrides: [
        checkoutRepositoryProvider.overrideWithValue(
          CheckoutRepository(remote: _FakeCheckoutRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final notifier = container.read(checkoutQuoteControllerProvider.notifier);
    await notifier.loadQuote(3);

    final quote = container.read(checkoutQuoteControllerProvider).value;
    expect(quote?.total, '225.00');
    expect(container.read(selectedCheckoutAddressIdProvider), 3);
  });

  test('CheckoutSubmitController submits checkout', () async {
    final container = ProviderContainer(
      overrides: [
        checkoutRepositoryProvider.overrideWithValue(
          CheckoutRepository(remote: _FakeCheckoutRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final result =
        await container.read(checkoutSubmitControllerProvider.notifier).submit(3);

    expect(result.order.orderNumber, 'TMS-9');
    expect(container.read(checkoutSubmitControllerProvider).value?.payment.status, 'pending');
  });
}

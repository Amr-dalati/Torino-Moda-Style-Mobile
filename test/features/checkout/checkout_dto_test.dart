import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_quote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_result.dart';
import 'package:torino_moda_style_f/features/checkout/domain/customer_address.dart';
import 'package:torino_moda_style_f/features/checkout/domain/delivery_area.dart';
import 'package:torino_moda_style_f/features/checkout/domain/delivery_region.dart';

void main() {
  group('DeliveryRegion', () {
    test('parses from JSON', () {
      final region = DeliveryRegion.fromJson({
        'id': 1,
        'code': 'CAI',
        'name_ar': 'القاهرة',
        'name_en': 'Cairo',
        'is_active': true,
      });

      expect(region.id, 1);
      expect(region.displayName(preferArabic: false), 'Cairo');
      expect(region.displayName(preferArabic: true), 'القاهرة');
    });
  });

  group('DeliveryArea', () {
    test('parses from JSON', () {
      final area = DeliveryArea.fromJson({
        'id': 10,
        'region_id': 1,
        'code': 'CAI-NASR',
        'name_ar': 'مدينة نصر',
        'name_en': 'Nasr City',
        'delivery_fee': '50.00',
        'is_active': true,
      });

      expect(area.regionId, 1);
      expect(area.deliveryFee, '50.00');
    });
  });

  group('CustomerAddress', () {
    test('parses nested delivery area', () {
      final address = CustomerAddress.fromJson({
        'id': 5,
        'address_line1': 'Street 1',
        'is_default': true,
        'delivery_area': {
          'id': 10,
          'code': 'CAI-NASR',
          'name_en': 'Nasr City',
          'delivery_fee': '50.00',
        },
      });

      expect(address.id, 5);
      expect(address.deliveryArea?.deliveryFee, '50.00');
      expect(address.displayName(preferArabic: false), contains('Street 1'));
    });
  });

  group('CheckoutQuote', () {
    test('parses quote totals', () {
      final quote = CheckoutQuote.fromJson({
        'subtotal': '2598.00',
        'delivery_fee': '50.00',
        'discount_total': '0.00',
        'total': '2648.00',
      });

      expect(quote.subtotal, '2598.00');
      expect(quote.deliveryFee, '50.00');
      expect(quote.total, '2648.00');
    });
  });

  group('CheckoutResult', () {
    test('parses order and payment', () {
      final result = CheckoutResult.fromJson({
        'order': {
          'id': 1,
          'order_number': 'TMS-2026-000001',
          'order_status': 'awaiting_payment',
          'payment_status': 'pending',
          'subtotal': '1299.00',
          'delivery_fee': '50.00',
          'discount_total': '0.00',
          'total': '1349.00',
          'currency': 'EGP',
        },
        'payment': {
          'id': 1,
          'status': 'pending',
          'amount': '1349.00',
          'currency': 'EGP',
          'merchant_reference': 'mr_TMS-2026-000001',
          'checkout_url': 'https://pay.example/checkout',
        },
      });

      expect(result.order.orderNumber, 'TMS-2026-000001');
      expect(result.order.orderStatus, 'awaiting_payment');
      expect(result.payment.status, 'pending');
      expect(result.payment.merchantReference, 'mr_TMS-2026-000001');
      expect(result.payment.checkoutUrl, isNotNull);
    });
  });
}

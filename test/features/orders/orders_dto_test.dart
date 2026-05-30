import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/orders/domain/order.dart';
import 'package:torino_moda_style_f/features/orders/domain/order_item.dart';
import 'package:torino_moda_style_f/features/orders/domain/order_status.dart';
import 'package:torino_moda_style_f/features/orders/domain/payment_status_response.dart';

void main() {
  group('Order', () {
    test('parses order with items and payments', () {
      final order = Order.fromJson({
        'id': 1,
        'order_number': 'TMS-2026-000001',
        'order_status': 'awaiting_payment',
        'payment_status': 'pending',
        'subtotal': '1299.00',
        'delivery_fee': '50.00',
        'discount_total': '0.00',
        'total': '1349.00',
        'currency': 'EGP',
        'created_at': '2026-05-30T12:00:00.000000Z',
        'shipping': {
          'address_line1': 'Street 1',
          'recipient_name': 'Jane',
        },
        'items': [
          {
            'id': 10,
            'product_variant_id': 5,
            'quantity': 1,
            'unit_price_snapshot': '1299.00',
            'line_total': '1299.00',
            'product_code': 'TMS-001',
            'product_name_en': 'Test Product',
          },
        ],
        'payments': [
          {
            'id': 1,
            'status': 'pending',
            'amount': '1349.00',
            'currency': 'EGP',
            'merchant_reference': 'mr_TMS-2026-000001',
          },
        ],
      });

      expect(order.orderNumber, 'TMS-2026-000001');
      expect(order.status, OrderStatus.awaitingPayment);
      expect(order.paymentStatusEnum, PaymentStatus.pending);
      expect(order.items, hasLength(1));
      expect(order.latestPayment?.merchantReference, 'mr_TMS-2026-000001');
    });
  });

  group('OrderItem', () {
    test('displayName prefers locale', () {
      const item = OrderItem(
        id: 1,
        productVariantId: 2,
        quantity: 1,
        unitPriceSnapshot: '10.00',
        lineTotal: '10.00',
        productCode: 'TMS-001',
        productNameEn: 'Shirt',
        productNameAr: 'قميص',
      );

      expect(item.displayName(preferArabic: true), 'قميص');
      expect(item.displayName(preferArabic: false), 'Shirt');
    });
  });

  group('PaymentStatusResponse', () {
    test('parses payment status payload', () {
      final response = PaymentStatusResponse.fromJson({
        'order_status': 'awaiting_payment',
        'payment_status': 'pending',
        'latest_payment': {
          'id': 1,
          'status': 'pending',
          'merchant_reference': 'mr_1',
        },
      });

      expect(response.paymentStatus, 'pending');
      expect(response.latestPayment?.merchantReference, 'mr_1');
    });
  });
}

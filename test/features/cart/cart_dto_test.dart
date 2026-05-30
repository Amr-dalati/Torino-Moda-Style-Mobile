import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart.dart';

void main() {
  test('Cart.fromJson parses empty active cart', () {
    final cart = Cart.fromJson({
      'id': 1,
      'status': 'active',
      'subtotal': '0.00',
      'currency': 'SAR',
      'items': [],
    });

    expect(cart.isEmpty, isTrue);
    expect(cart.toSummary().itemCount, 0);
    expect(cart.toSummary().subtotal, '0.00');
  });

  test('Cart.fromJson parses cart with item and variant', () {
    final cart = Cart.fromJson({
      'id': 2,
      'status': 'active',
      'subtotal': '2598.00',
      'currency': 'SAR',
      'items': [
        {
          'id': 10,
          'product_variant_id': 5,
          'quantity': 2,
          'unit_price_snapshot': '1299.00',
          'line_total': '2598.00',
          'variant': {
            'id': 5,
            'sku': 'SKU-1',
            'product': {
              'id': 1,
              'product_code': 'TMS-SHOE-001',
              'name_en': 'Classic Shoe',
            },
          },
        },
      ],
    });

    expect(cart.items, hasLength(1));
    expect(cart.items.first.quantity, 2);
    expect(cart.toSummary().itemCount, 2);
    expect(cart.items.first.displayTitle(preferArabic: false), 'Classic Shoe');
  });
}

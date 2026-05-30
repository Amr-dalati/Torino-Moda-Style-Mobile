import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';

void main() {
  test('BarcodeLookupResult parses product and variant', () {
    final result = BarcodeLookupResult.fromJson({
      'product': {
        'id': 1,
        'product_code': 'TMS-SHOE-001',
        'name_en': 'Shoe',
      },
      'variant': {
        'id': 10,
        'product_id': 1,
        'sku': 'SKU-10',
        'barcode': '6281001001018',
        'sale_price': '1299.00',
        'is_active': true,
      },
    });

    expect(result.product.id, 1);
    expect(result.variant?.barcode, '6281001001018');
  });

  test('BarcodeLookupResult allows null variant', () {
    final result = BarcodeLookupResult.fromJson({
      'product': {
        'id': 1,
        'product_code': 'TMS-SHOE-001',
      },
      'variant': null,
    });

    expect(result.product.productCode, 'TMS-SHOE-001');
    expect(result.variant, isNull);
  });
}

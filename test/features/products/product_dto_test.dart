import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';

void main() {
  test('Product.fromJson parses list item payload', () {
    final product = Product.fromJson({
      'id': 1,
      'phoenix_id': 'phx-1',
      'product_code': 'TMS-SHOE-001',
      'barcode': '6281001001001',
      'name_en': 'Classic Shoe',
      'name_ar': 'حذاء كلاسيك',
      'sale_price': '199.99',
      'is_active': true,
      'variants_count': 2,
    });

    expect(product.id, 1);
    expect(product.productCode, 'TMS-SHOE-001');
    expect(product.salePrice, closeTo(199.99, 0.01));
    expect(product.variantsCount, 2);
    expect(product.displayName(preferArabic: false), 'Classic Shoe');
  });

  test('Product.fromJson parses detail payload with nested data', () {
    final product = Product.fromJson({
      'id': 1,
      'product_code': 'TMS-SHOE-001',
      'name_en': 'Classic Shoe',
      'category': {
        'id': 10,
        'code': 'SHOES',
        'name_en': 'Shoes',
        'name_ar': 'أحذية',
      },
      'brand': {'id': 5, 'code': 'TMS', 'name': 'Torino'},
      'variants': [
        {
          'id': 100,
          'sku': 'SKU-1',
          'barcode': '6281001001018',
          'sale_price': 199.99,
          'is_active': true,
          'color': {'id': 1, 'code': 'BLK', 'name_en': 'Black', 'name_ar': 'أسود'},
          'size': {'id': 2, 'code': '42', 'name': '42'},
        },
      ],
    });

    expect(product.category?.code, 'SHOES');
    expect(product.brand?.name, 'Torino');
    expect(product.variants, hasLength(1));
    expect(product.variants!.first.color?.code, 'BLK');
    expect(product.variants!.first.size?.name, '42');
  });
}

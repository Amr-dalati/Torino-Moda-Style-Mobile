import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';

class _FakeProductRemote implements ProductRemote {
  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) async {
    if (barcode == 'missing') {
      throw const NotFoundError(message: 'Product not found.');
    }
    return BarcodeLookupResult(
      product: const Product(id: 1, productCode: 'TMS-001', nameEn: 'Shoe'),
      variant: null,
    );
  }

  @override
  Future<PaginatedResult<Product>> getProducts({int page = 1, int perPage = 20}) =>
      throw UnimplementedError();

  @override
  Future<Product> getProduct(int id) => throw UnimplementedError();

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) =>
      throw UnimplementedError();
}

void main() {
  test('ProductRepository lookupByBarcode returns result', () async {
    final repo = ProductRepository(remote: _FakeProductRemote());
    final result = await repo.lookupByBarcode('6281001001018');
    expect(result.product.id, 1);
  });

  test('ProductRepository lookupByBarcode propagates not found', () async {
    final repo = ProductRepository(remote: _FakeProductRemote());
    expect(() => repo.lookupByBarcode('missing'), throwsA(isA<NotFoundError>()));
  });
}

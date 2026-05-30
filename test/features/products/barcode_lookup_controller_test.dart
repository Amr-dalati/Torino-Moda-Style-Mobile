import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/products/application/barcode_lookup_controller.dart';
import 'package:torino_moda_style_f/features/products/application/product_providers.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';

class _FakeProductRemote implements ProductRemote {
  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) async {
    if (barcode == 'missing') throw const NotFoundError();
    return const BarcodeLookupResult(
      product: Product(id: 5, productCode: 'TMS-005', nameEn: 'Bag'),
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
  test('BarcodeLookupController lookup succeeds', () async {
    final container = ProviderContainer(
      overrides: [
        productRepositoryProvider.overrideWithValue(
          ProductRepository(remote: _FakeProductRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final result =
        await container.read(barcodeLookupControllerProvider.notifier).lookup('6281');

    expect(result.product.id, 5);
  });

  test('BarcodeLookupController lookup throws on not found', () async {
    final container = ProviderContainer(
      overrides: [
        productRepositoryProvider.overrideWithValue(
          ProductRepository(remote: _FakeProductRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    expect(
      () => container.read(barcodeLookupControllerProvider.notifier).lookup('missing'),
      throwsA(isA<NotFoundError>()),
    );
  });
}

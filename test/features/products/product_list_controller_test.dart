import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/products/application/product_list_controller.dart';
import 'package:torino_moda_style_f/features/products/application/product_providers.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';

class _FakeProductRemote implements ProductRemote {
  @override
  Future<PaginatedResult<Product>> getProducts({int page = 1, int perPage = 20}) async {
    return PaginatedResult(
      items: const [Product(id: 1, productCode: 'X', nameEn: 'Product X')],
      meta: const PaginatedMeta(
        currentPage: 1,
        perPage: 20,
        total: 1,
        lastPage: 1,
      ),
    );
  }

  @override
  Future<Product> getProduct(int id) => throw UnimplementedError();

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) =>
      throw UnimplementedError();

  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) =>
      throw UnimplementedError();
}

void main() {
  test('ProductListController loads products successfully', () async {
    final container = ProviderContainer(
      overrides: [
        productRepositoryProvider.overrideWithValue(
          ProductRepository(remote: _FakeProductRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final state = await container.read(productListControllerProvider.future);

    expect(state.products, hasLength(1));
    expect(state.products.first.productCode, 'X');
  });
}

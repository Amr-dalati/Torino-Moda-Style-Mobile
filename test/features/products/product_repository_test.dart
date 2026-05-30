import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';

class _FakeProductRemote implements ProductRemote {
  PaginatedResult<Product>? listResult;
  Product? detailProduct;
  AppError? listError;
  AppError? detailError;

  @override
  Future<PaginatedResult<Product>> getProducts({int page = 1, int perPage = 20}) async {
    if (listError != null) throw listError!;
    return listResult!;
  }

  @override
  Future<Product> getProduct(int id) async {
    if (detailError != null) throw detailError!;
    return detailProduct!;
  }

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    if (listError != null) throw listError!;
    return listResult!;
  }

  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) =>
      throw UnimplementedError();
}

void main() {
  group('ProductRepository', () {
    late _FakeProductRemote remote;
    late ProductRepository repository;

    setUp(() {
      remote = _FakeProductRemote();
      repository = ProductRepository(remote: remote);
    });

    test('listProducts returns paginated products', () async {
      remote.listResult = PaginatedResult(
        items: const [
          Product(id: 1, productCode: 'A', nameEn: 'A'),
        ],
        meta: const PaginatedMeta(
          currentPage: 1,
          perPage: 20,
          total: 1,
          lastPage: 1,
        ),
      );

      final result = await repository.listProducts();
      expect(result.items, hasLength(1));
    });

    test('getProduct throws NotFoundError from remote', () async {
      remote.detailError = const NotFoundError(message: 'Product not found.');
      expect(
        () => repository.getProduct(999),
        throwsA(isA<NotFoundError>()),
      );
    });
  });
}

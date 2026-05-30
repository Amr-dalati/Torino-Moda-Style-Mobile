import '../../../../core/network/api/paginated_result.dart';
import '../../domain/barcode_lookup_result.dart';
import '../../domain/product.dart';
import '../sources/product_remote.dart';

class ProductRepository {
  ProductRepository({required ProductRemote remote}) : _remote = remote;

  final ProductRemote _remote;

  Future<PaginatedResult<Product>> listProducts({
    int page = 1,
    int perPage = 20,
  }) {
    return _remote.getProducts(page: page, perPage: perPage);
  }

  Future<Product> getProduct(int id) {
    return _remote.getProduct(id);
  }

  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) {
    return _remote.searchProducts(query: query, page: page, perPage: perPage);
  }

  Future<BarcodeLookupResult> lookupByBarcode(String barcode) {
    return _remote.lookupByBarcode(barcode);
  }
}

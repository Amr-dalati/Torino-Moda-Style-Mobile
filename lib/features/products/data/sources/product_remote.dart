import '../../../../core/network/api/paginated_result.dart';
import '../../domain/barcode_lookup_result.dart';
import '../../domain/product.dart';

abstract class ProductRemote {
  Future<PaginatedResult<Product>> getProducts({
    int page,
    int perPage,
  });

  Future<Product> getProduct(int id);

  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page,
    int perPage,
  });

  Future<BarcodeLookupResult> lookupByBarcode(String barcode);
}

import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/api/paginated_envelope_parser.dart';
import '../../../../core/network/api/paginated_result.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/barcode_lookup_result.dart';
import '../../domain/product.dart';
import 'product_remote.dart';

class ProductRemoteDataSource implements ProductRemote {
  ProductRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<PaginatedResult<Product>> getProducts({
    int page = 1,
    int perPage = 20,
  }) async {
    return _fetchPaginated(
      '/products',
      queryParameters: _pageParams(page: page, perPage: perPage),
    );
  }

  @override
  Future<Product> getProduct(int id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/products/$id');
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => Product.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    return _fetchPaginated(
      '/products/search',
      queryParameters: {
        'q': query,
        ..._pageParams(page: page, perPage: perPage),
      },
    );
  }

  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) async {
    try {
      final trimmed = barcode.trim();
      final encoded = Uri.encodeComponent(trimmed);
      final response = await _dio.get<Map<String, dynamic>>('/products/barcode/$encoded');
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) =>
            BarcodeLookupResult.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Future<PaginatedResult<Product>> _fetchPaginated(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
      );
      return PaginatedEnvelopeParser.parseDataOrThrow(
        response,
        decodeItem: Product.fromJson,
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Map<String, dynamic> _pageParams({required int page, required int perPage}) {
    return {
      'per_page': perPage,
      if (page > 1) 'page': page,
    };
  }

  Never _mapDio(DioException e) {
    if (e.error is AppError) throw e.error! as AppError;
    throw ApiErrorMapper.map(e);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_envelope_parser.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';

void main() {
  test('PaginatedEnvelopeParser parses product list envelope', () {
    final response = Response<dynamic>(
      requestOptions: RequestOptions(path: '/products'),
      statusCode: 200,
      data: {
        'success': true,
        'message': 'OK',
        'data': [
          {
            'id': 1,
            'product_code': 'TMS-SHOE-001',
            'name_en': 'Classic Shoe',
            'is_active': true,
          },
        ],
        'meta': {
          'current_page': 1,
          'per_page': 20,
          'total': 1,
          'last_page': 1,
        },
        'errors': null,
      },
    );

    final result = PaginatedEnvelopeParser.parseDataOrThrow(
      response,
      decodeItem: Product.fromJson,
    );

    expect(result.items, hasLength(1));
    expect(result.items.first.productCode, 'TMS-SHOE-001');
    expect(result.meta.currentPage, 1);
    expect(result.hasMore, isFalse);
  });
}

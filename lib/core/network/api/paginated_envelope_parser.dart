import 'package:dio/dio.dart';

import '../error/app_error.dart';
import 'api_envelope_parser.dart';
import 'paginated_meta.dart';
import 'paginated_result.dart';

class PaginatedEnvelopeParser {
  const PaginatedEnvelopeParser._();

  static PaginatedResult<T> parseDataOrThrow<T>(
    Response<dynamic> response, {
    required T Function(Map<String, dynamic> json) decodeItem,
  }) {
    final body = response.data;
    if (body is! Map<String, dynamic>) {
      throw const UnknownError(message: 'Invalid API response format');
    }

    final envelope = ApiEnvelopeParser.parse<List<dynamic>>(
      body,
      decodeData: (json) => json as List<dynamic>,
    );

    if (!envelope.success) {
      throw ApiEnvelopeParser.envelopeToAppError(
        envelope,
        statusCode: response.statusCode,
      );
    }

    final rawItems = envelope.data ?? const [];
    final items = rawItems
        .map((item) => decodeItem(item as Map<String, dynamic>))
        .toList();

    final metaMap = envelope.meta;
    if (metaMap == null) {
      throw const UnknownError(message: 'Missing pagination meta');
    }

    final meta = PaginatedMeta.fromJson(metaMap);
    return PaginatedResult<T>(items: items, meta: meta);
  }
}

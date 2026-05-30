import 'package:dio/dio.dart';

import '../api/api_envelope_parser.dart';
import 'app_error.dart';

class ApiErrorMapper {
  static AppError map(DioException e) {
    if (e.error is AppError) {
      return e.error! as AppError;
    }

    final status = e.response?.statusCode;
    final data = e.response?.data;

    if (data is Map<String, dynamic>) {
      try {
        final envelope = ApiEnvelopeParser.parse<dynamic>(
          data,
          decodeData: (json) => json,
        );
        if (!envelope.success) {
          return ApiEnvelopeParser.envelopeToAppError(
            envelope,
            statusCode: status,
          );
        }
      } catch (_) {
        // Fall through to status-based mapping.
      }
    }

    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      return const TimeoutError();
    }

    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.unknown && e.response == null) {
      return const NetworkError();
    }

    if (status == 401) return const UnauthorizedError();
    if (status == 403) return const ForbiddenError();
    if (status == 404) return const NotFoundError();
    if (status == 429) return const RateLimitError();
    if (status != null && status >= 500) return const ServerError();

    return UnknownError(message: e.message ?? 'Unknown error');
  }
}

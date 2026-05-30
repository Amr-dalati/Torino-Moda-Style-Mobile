import 'package:dio/dio.dart';

import '../error/app_error.dart';
import 'api_envelope.dart';

class ApiEnvelopeParser {
  const ApiEnvelopeParser._();

  static ApiEnvelope<T> parse<T>(
    dynamic body, {
    required T Function(Object? json) decodeData,
  }) {
    if (body is! Map<String, dynamic>) {
      throw const UnknownError(message: 'Invalid API response format');
    }

    final success = body['success'] == true;
    final message = body['message']?.toString() ?? (success ? 'OK' : 'Request failed');
    final rawData = body['data'];
    final meta = body['meta'] is Map<String, dynamic> ? body['meta'] as Map<String, dynamic> : null;
    final errors = _errorsFromJson(body['errors']);

    T? data;
    if (rawData != null) {
      data = decodeData(rawData);
    }

    return ApiEnvelope<T>(
      success: success,
      message: message,
      data: data,
      meta: meta,
      errors: errors,
    );
  }

  static T parseDataOrThrow<T>(
    Response<dynamic> response, {
    required T Function(Object? json) decodeData,
  }) {
    final envelope = parse<T>(response.data, decodeData: decodeData);
    if (!envelope.success) {
      throw envelopeToAppError(
        envelope,
        statusCode: response.statusCode,
      );
    }
    if (envelope.data == null) {
      throw AppError.fromMessage(envelope.message);
    }
    return envelope.data as T;
  }

  static AppError envelopeToAppError(
    ApiEnvelope<dynamic> envelope, {
    int? statusCode,
  }) {
    if (envelope.hasValidationErrors) {
      return ValidationError(
        message: envelope.message,
        fieldErrors: envelope.errors!,
      );
    }

    if (statusCode == 401) return UnauthorizedError(message: envelope.message);
    if (statusCode == 403) return ForbiddenError(message: envelope.message);
    if (statusCode == 404) return NotFoundError(message: envelope.message);
    if (statusCode == 429) return RateLimitError(message: envelope.message);
    if (statusCode != null && statusCode >= 500) {
      return ServerError(message: envelope.message);
    }
    return AppError.fromMessage(envelope.message);
  }

  static Map<String, List<String>>? _errorsFromJson(Object? json) {
    if (json == null) return null;
    if (json is! Map) return null;

    return json.map((key, value) {
      final messages = <String>[];
      if (value is List) {
        for (final item in value) {
          if (item != null) messages.add(item.toString());
        }
      } else if (value != null) {
        messages.add(value.toString());
      }
      return MapEntry(key.toString(), messages);
    });
  }
}

import 'package:flutter/foundation.dart';

@immutable
sealed class AppError implements Exception {
  const AppError({required this.message});
  final String message;

  factory AppError.fromMessage(String message) => UnknownError(message: message);
}

final class NetworkError extends AppError {
  const NetworkError({super.message = 'Network error'});
}

final class TimeoutError extends AppError {
  const TimeoutError({super.message = 'Request timeout'});
}

final class UnauthorizedError extends AppError {
  const UnauthorizedError({super.message = 'Unauthorized'});
}

final class ForbiddenError extends AppError {
  const ForbiddenError({super.message = 'Forbidden'});
}

final class NotFoundError extends AppError {
  const NotFoundError({super.message = 'Not found'});
}

final class ValidationError extends AppError {
  const ValidationError({
    required super.message,
    required this.fieldErrors,
  });

  final Map<String, List<String>> fieldErrors;

  String? firstFor(String field) {
    final messages = fieldErrors[field];
    if (messages == null || messages.isEmpty) return null;
    return messages.first;
  }
}

final class RateLimitError extends AppError {
  const RateLimitError({super.message = 'Too many requests'});
}

final class ServerError extends AppError {
  const ServerError({super.message = 'Server error'});
}

final class UnknownError extends AppError {
  const UnknownError({super.message = 'Unknown error'});
}

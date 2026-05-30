import 'package:flutter/material.dart';

import '../../core/network/error/app_error.dart';
import '../../l10n/app_localizations.dart';

String appErrorMessage(AppError error) => error.message;

String localizedAppErrorMessage(AppLocalizations l10n, AppError error) {
  if (error is ValidationError) return error.message;

  final fallback = switch (error) {
    NetworkError() => l10n.networkError,
    TimeoutError() => l10n.timeoutError,
    UnauthorizedError() => l10n.unauthorizedError,
    ForbiddenError() => l10n.forbiddenError,
    NotFoundError() => l10n.notFoundError,
    RateLimitError() => l10n.rateLimitError,
    ServerError() => l10n.serverError,
    UnknownError() => l10n.unknownError,
    AppError() => l10n.unknownError,
  };

  if (error.message.isEmpty || error.message == _defaultEnglishMessage(error)) {
    return fallback;
  }
  return error.message;
}

String _defaultEnglishMessage(AppError error) {
  return switch (error) {
    NetworkError() => 'Network error',
    TimeoutError() => 'Request timeout',
    UnauthorizedError() => 'Unauthorized',
    ForbiddenError() => 'Forbidden',
    NotFoundError() => 'Not found',
    RateLimitError() => 'Too many requests',
    ServerError() => 'Server error',
    UnknownError() => 'Unknown error',
    AppError() => 'Unknown error',
  };
}

void showAppErrorSnackBar(BuildContext context, AppError error) {
  final l10n = AppLocalizations.of(context)!;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(content: Text(localizedAppErrorMessage(l10n, error))),
    );
}

Map<String, String?> validationFieldErrors(AppError error) {
  if (error is! ValidationError) return const {};
  return error.fieldErrors.map(
    (key, value) => MapEntry(key, value.isEmpty ? null : value.first),
  );
}

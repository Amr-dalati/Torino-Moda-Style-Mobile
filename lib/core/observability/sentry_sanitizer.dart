import 'package:sentry_flutter/sentry_flutter.dart';

/// Redacts sensitive data from Sentry events and breadcrumbs.
class SentrySanitizer {
  SentrySanitizer._();

  static const _sensitiveHeaderKeys = {
    'authorization',
    'cookie',
    'set-cookie',
    'x-api-key',
  };

  static const _sensitiveDataKeys = {
    'authorization',
    'token',
    'password',
    'phone',
    'email',
    'name',
    'address',
    'customer',
  };

  static SentryEvent? beforeSend(SentryEvent event, Hint hint) {
    final request = event.request;
    if (request == null) return _scrubContexts(event);

    return _scrubContexts(
      event.copyWith(
        request: SentryRequest(
          url: request.url,
          method: request.method,
          headers: _sanitizeStringMap(request.headers),
          queryString: request.queryString,
          env: request.env,
        ),
      ),
    );
  }

  static Breadcrumb? beforeBreadcrumb(Breadcrumb? breadcrumb, Hint hint) {
    if (breadcrumb == null) return null;
    final data = breadcrumb.data;
    if (data == null) return breadcrumb;
    return breadcrumb.copyWith(data: _sanitizeDynamicMap(data));
  }

  static SentryEvent _scrubContexts(SentryEvent event) {
    final contexts = event.contexts;
    if (contexts.isEmpty) return event;

    final scrubbed = Contexts();
    for (final entry in contexts.entries) {
      final value = entry.value;
      if (value is Map<String, dynamic>) {
        scrubbed[entry.key] = _sanitizeDynamicMap(value);
      } else {
        scrubbed[entry.key] = value;
      }
    }
    return event.copyWith(contexts: scrubbed);
  }

  static Map<String, String>? _sanitizeStringMap(Map<String, String>? input) {
    if (input == null) return null;
    final output = <String, String>{};
    for (final entry in input.entries) {
      if (_isSensitiveKey(entry.key)) {
        output[entry.key] = '[Filtered]';
      } else {
        output[entry.key] = entry.value;
      }
    }
    return output;
  }

  static Map<String, dynamic> _sanitizeDynamicMap(Map<String, dynamic> input) {
    final output = <String, dynamic>{};
    for (final entry in input.entries) {
      if (_isSensitiveKey(entry.key)) {
        output[entry.key] = '[Filtered]';
      } else if (entry.value is Map<String, dynamic>) {
        output[entry.key] = _sanitizeDynamicMap(entry.value as Map<String, dynamic>);
      } else {
        output[entry.key] = entry.value;
      }
    }
    return output;
  }

  static bool _isSensitiveKey(String key) {
    final lower = key.toLowerCase();
    for (final sensitive in _sensitiveDataKeys) {
      if (lower.contains(sensitive)) return true;
    }
    for (final header in _sensitiveHeaderKeys) {
      if (lower == header) return true;
    }
    return false;
  }
}

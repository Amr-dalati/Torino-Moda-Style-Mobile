import 'package:flutter_test/flutter_test.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:torino_moda_style_f/core/observability/sentry_sanitizer.dart';

void main() {
  group('SentrySanitizer', () {
    test('beforeSend filters authorization header', () {
      final event = SentryEvent(
        request: SentryRequest(
          url: 'https://api.example.com/api/products',
          method: 'GET',
          headers: {
            'authorization': 'Bearer secret-token',
            'accept': 'application/json',
          },
        ),
      );

      final sanitized = SentrySanitizer.beforeSend(event, Hint());

      expect(sanitized!.request!.headers['authorization'], '[Filtered]');
      expect(sanitized.request!.headers['accept'], 'application/json');
    });

    test('beforeBreadcrumb filters sensitive keys', () {
      final breadcrumb = Breadcrumb(
        message: 'http',
        data: {
          'phone': '+10000000000',
          'feature': 'checkout',
        },
      );

      final sanitized = SentrySanitizer.beforeBreadcrumb(breadcrumb, Hint());

      expect(sanitized?.data?['phone'], '[Filtered]');
      expect(sanitized?.data?['feature'], 'checkout');
    });
  });
}

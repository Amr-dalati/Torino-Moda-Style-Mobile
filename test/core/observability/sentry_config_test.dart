import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/config/app_env.dart';
import 'package:torino_moda_style_f/core/observability/sentry_config.dart';

void main() {
  group('SentryConfig', () {
    test('dev is disabled even when DSN is provided', () {
      expect(
        SentryConfig.isEnabledFor(
          AppEnv.dev,
          'https://examplePublicKey@o0.ingest.sentry.io/0',
        ),
        isFalse,
      );
    });

    test('staging is disabled without DSN', () {
      expect(SentryConfig.isEnabledFor(AppEnv.staging, ''), isFalse);
    });

    test('staging is enabled with DSN', () {
      expect(
        SentryConfig.isEnabledFor(
          AppEnv.staging,
          'https://examplePublicKey@o0.ingest.sentry.io/0',
        ),
        isTrue,
      );
    });

    test('prod is enabled with HTTPS DSN', () {
      expect(
        SentryConfig.isEnabledFor(
          AppEnv.prod,
          'https://examplePublicKey@o0.ingest.sentry.io/0',
        ),
        isTrue,
      );
    });

    test('shouldWarnMissingDsn for staging without DSN', () {
      expect(SentryConfig.shouldWarnMissingDsn(AppEnv.staging, ''), isTrue);
    });

    test('shouldWarnMissingDsn is false for dev', () {
      expect(SentryConfig.shouldWarnMissingDsn(AppEnv.dev, ''), isFalse);
    });
  });
}

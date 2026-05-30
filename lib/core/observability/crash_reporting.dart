import 'package:sentry_flutter/sentry_flutter.dart';

import '../config/app_env.dart';
import '../network/error/app_error.dart';
import 'crash_reporting_policy.dart';
import 'sentry_config.dart';

/// Non-fatal error reporting to Sentry when enabled.
class CrashReporting {
  CrashReporting._();

  static bool get isEnabled => SentryConfig.isEnabledFor(
        AppEnv.parse(AppEnv.fromEnvironment),
      );

  /// Reports unexpected [AppError] types (e.g. server/unknown).
  static Future<void> captureAppError(
    AppError error, {
    required String feature,
    Map<String, String>? tags,
  }) async {
    if (!isEnabled || !CrashReportingPolicy.shouldReport(error)) return;

    await Sentry.captureException(
      error,
      stackTrace: StackTrace.current,
      withScope: (scope) {
        _applyScope(scope, feature: feature, tags: tags);
        scope.setTag('error_type', error.runtimeType.toString());
      },
    );
  }

  /// Reports a structured non-fatal event without free-form user PII.
  static Future<void> captureEvent({
    required String message,
    required String feature,
    SentryLevel level = SentryLevel.warning,
    Map<String, String>? tags,
  }) async {
    if (!isEnabled) return;

    await Sentry.captureMessage(
      message,
      level: level,
      withScope: (scope) {
        _applyScope(scope, feature: feature, tags: tags);
      },
    );
  }

  static void _applyScope(
    Scope scope, {
    required String feature,
    Map<String, String>? tags,
  }) {
    scope.setTag('feature', feature);
    tags?.forEach(scope.setTag);
  }
}

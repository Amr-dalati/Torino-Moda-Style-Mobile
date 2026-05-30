import '../config/app_env.dart';

/// Compile-time Sentry configuration from `--dart-define`.
class SentryConfig {
  SentryConfig._();

  static const String dsnDefineKey = 'SENTRY_DSN';

  /// DSN from `--dart-define=SENTRY_DSN=...` (never commit real values).
  static const String dsnFromEnvironment = String.fromEnvironment(
    dsnDefineKey,
    defaultValue: '',
  );

  /// Whether Sentry should be initialized for [appEnv] and [dsn].
  ///
  /// - `dev`: always disabled (even if a DSN is passed).
  /// - `staging` / `prod`: enabled only when [dsn] is non-empty.
  static bool isEnabledFor(AppEnv appEnv, [String? dsn]) {
    if (appEnv == AppEnv.dev) return false;
    return (dsn ?? dsnFromEnvironment).trim().isNotEmpty;
  }

  /// Warn when staging/prod builds have no DSN configured.
  static bool shouldWarnMissingDsn(AppEnv appEnv, [String? dsn]) {
    if (appEnv == AppEnv.dev) return false;
    return (dsn ?? dsnFromEnvironment).trim().isEmpty;
  }

  static String resolvedDsn([String? dsn]) => (dsn ?? dsnFromEnvironment).trim();
}

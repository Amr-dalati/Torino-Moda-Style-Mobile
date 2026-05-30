/// Deployment environment passed via `--dart-define=APP_ENV=...`.
enum AppEnv {
  dev,
  staging,
  prod;

  static const String defineKey = 'APP_ENV';

  static const String defaultDefineValue = 'dev';

  /// Compile-time value from `--dart-define=APP_ENV=...`.
  static const String fromEnvironment = String.fromEnvironment(
    defineKey,
    defaultValue: defaultDefineValue,
  );

  static AppEnv parse(String raw) {
    switch (raw.trim().toLowerCase()) {
      case 'dev':
        return AppEnv.dev;
      case 'staging':
        return AppEnv.staging;
      case 'prod':
      case 'production':
        return AppEnv.prod;
      default:
        throw EnvValidationException(
          'Invalid APP_ENV "$raw". Expected dev, staging, or prod.',
        );
    }
  }
}

/// Thrown when [API_BASE_URL] or [APP_ENV] configuration is invalid.
class EnvValidationException implements Exception {
  const EnvValidationException(this.message);

  final String message;

  @override
  String toString() => 'EnvValidationException: $message';
}

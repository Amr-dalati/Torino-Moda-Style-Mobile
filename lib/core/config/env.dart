import 'package:flutter/foundation.dart';

import 'app_env.dart';
import 'env_validation.dart';

export 'app_env.dart' show AppEnv, EnvValidationException;
export 'env_validation.dart' show EnvValidation;

@immutable
class Env {
  const Env({
    required this.baseUrl,
    required this.appEnv,
    this.connectTimeout = const Duration(seconds: 15),
    this.receiveTimeout = const Duration(seconds: 30),
  });

  /// Resolved from `--dart-define=API_BASE_URL=...`.
  static const String defaultBaseUrl = EnvValidation.defaultBaseUrl;

  /// Resolved from `--dart-define=APP_ENV=...` (default: dev).
  static const String defaultAppEnvRaw = AppEnv.fromEnvironment;

  /// Loads and validates compile-time defines for the current build mode.
  factory Env.load({bool? profileOrRelease}) {
    final appEnv = AppEnv.parse(AppEnv.fromEnvironment);
    final baseUrl = EnvValidation.defaultBaseUrl;

    EnvValidation.validate(
      baseUrl: baseUrl,
      appEnv: appEnv,
      profileOrRelease: profileOrRelease,
    );

    return Env(
      baseUrl: baseUrl.trim(),
      appEnv: appEnv,
    );
  }

  /// API root including `/api` suffix (e.g. `http://127.0.0.1:8000/api`).
  final String baseUrl;

  final AppEnv appEnv;

  final Duration connectTimeout;

  final Duration receiveTimeout;
}

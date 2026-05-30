import 'package:flutter/foundation.dart';

import 'app_env.dart';

/// Validates compile-time environment defines and builds runtime config input.
class EnvValidation {
  EnvValidation._();

  static const apiBaseUrlDefineKey = 'API_BASE_URL';

  static const defaultBaseUrl = String.fromEnvironment(
    apiBaseUrlDefineKey,
    defaultValue: 'http://127.0.0.1:8000/api',
  );

  /// Validates [baseUrl] and [appEnv] for the current or simulated build mode.
  ///
  /// [profileOrRelease] defaults to Flutter's compile-time profile/release flags.
  /// Tests should pass explicit values to simulate release builds.
  static void validate({
    required String baseUrl,
    required AppEnv appEnv,
    bool? profileOrRelease,
  }) {
    final trimmedUrl = baseUrl.trim();
    if (trimmedUrl.isEmpty) {
      throw const EnvValidationException('API_BASE_URL must not be empty.');
    }

    final uri = Uri.tryParse(trimmedUrl);
    if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
      throw EnvValidationException(
        'Invalid API_BASE_URL "$baseUrl". Expected a full URL including scheme and host.',
      );
    }

    _validateApiPath(uri);
    _validateScheme(
      uri: uri,
      appEnv: appEnv,
      profileOrRelease: profileOrRelease ?? _isProfileOrRelease,
    );
  }

  static void _validateApiPath(Uri uri) {
    final path = uri.path;
    if (path == '/api' || path.endsWith('/api')) return;
    throw EnvValidationException(
      'API_BASE_URL must include the /api suffix (e.g. https://api.example.com/api). '
      'Got path "${uri.path}".',
    );
  }

  static void _validateScheme({
    required Uri uri,
    required AppEnv appEnv,
    bool profileOrRelease = false,
  }) {
    final scheme = uri.scheme.toLowerCase();
    final isHttps = scheme == 'https';
    final isHttp = scheme == 'http';

    if (!isHttps && !isHttp) {
      throw EnvValidationException(
        'API_BASE_URL must use http or https. Got scheme "$scheme".',
      );
    }

    if (appEnv == AppEnv.staging || appEnv == AppEnv.prod) {
      if (!isHttps) {
        throw EnvValidationException(
          'APP_ENV=${appEnv.name} requires HTTPS. '
          'Set --dart-define=API_BASE_URL=https://...',
        );
      }
      return;
    }

    // APP_ENV=dev
    if (isHttps) return;

    final devHostAllowed = isDevAllowedHttpHost(uri.host);
    if (!devHostAllowed) {
      throw EnvValidationException(
        'APP_ENV=dev allows HTTP only for localhost, 127.0.0.1, 10.0.2.2, or private LAN IPs. '
        'Host "${uri.host}" is not allowed over HTTP.',
      );
    }

    if (profileOrRelease) {
      // Release/profile + dev + allowed HTTP host is permitted.
      return;
    }

    if (kDebugMode) {
      debugPrint(
        'WARNING: Using HTTP API_BASE_URL in debug ($uri). '
        'Use HTTPS for staging/production builds.',
      );
    }
  }

  /// Whether [host] may use plain HTTP when `APP_ENV=dev`.
  static bool isDevAllowedHttpHost(String host) {
    final normalized = host.toLowerCase();
    if (normalized == 'localhost' ||
        normalized == '127.0.0.1' ||
        normalized == '10.0.2.2' ||
        normalized == '::1') {
      return true;
    }
    return _isPrivateLanIpv4(normalized);
  }

  static bool _isPrivateLanIpv4(String host) {
    final parts = host.split('.');
    if (parts.length != 4) return false;

    final octets = <int>[];
    for (final part in parts) {
      final value = int.tryParse(part);
      if (value == null || value < 0 || value > 255) return false;
      octets.add(value);
    }

    if (octets[0] == 10) return true;
    if (octets[0] == 192 && octets[1] == 168) return true;
    if (octets[0] == 172 && octets[1] >= 16 && octets[1] <= 31) return true;
    return false;
  }

  static bool get _isProfileOrRelease {
    return kReleaseMode || kProfileMode;
  }
}

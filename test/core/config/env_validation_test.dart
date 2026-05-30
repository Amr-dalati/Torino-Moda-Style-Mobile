import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/config/app_env.dart';
import 'package:torino_moda_style_f/core/config/env_validation.dart';

void main() {
  group('EnvValidation', () {
    test('dev allows localhost HTTP', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://127.0.0.1:8000/api',
          appEnv: AppEnv.dev,
        ),
        returnsNormally,
      );
    });

    test('dev allows Android emulator host HTTP', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://10.0.2.2:8000/api',
          appEnv: AppEnv.dev,
        ),
        returnsNormally,
      );
    });

    test('dev allows private LAN HTTP', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://192.168.1.42:8000/api',
          appEnv: AppEnv.dev,
        ),
        returnsNormally,
      );
    });

    test('dev rejects public HTTP host', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://api.example.com/api',
          appEnv: AppEnv.dev,
          profileOrRelease: true,
        ),
        throwsA(isA<EnvValidationException>()),
      );
    });

    test('staging rejects HTTP', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://staging-api.example.com/api',
          appEnv: AppEnv.staging,
        ),
        throwsA(
          isA<EnvValidationException>().having(
            (e) => e.message,
            'message',
            contains('requires HTTPS'),
          ),
        ),
      );
    });

    test('prod rejects HTTP', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://api.example.com/api',
          appEnv: AppEnv.prod,
        ),
        throwsA(isA<EnvValidationException>()),
      );
    });

    test('prod accepts HTTPS', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'https://api.example.com/api',
          appEnv: AppEnv.prod,
          profileOrRelease: true,
        ),
        returnsNormally,
      );
    });

    test('staging accepts HTTPS in release mode', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'https://staging-api.example.com/api',
          appEnv: AppEnv.staging,
          profileOrRelease: true,
        ),
        returnsNormally,
      );
    });

    test('dev allows localhost HTTP in release mode', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'http://127.0.0.1:8000/api',
          appEnv: AppEnv.dev,
          profileOrRelease: true,
        ),
        returnsNormally,
      );
    });

    test('API_BASE_URL must include /api suffix', () {
      expect(
        () => EnvValidation.validate(
          baseUrl: 'https://api.example.com',
          appEnv: AppEnv.prod,
        ),
        throwsA(
          isA<EnvValidationException>().having(
            (e) => e.message,
            'message',
            contains('/api'),
          ),
        ),
      );
    });

    test('AppEnv.parse accepts dev staging prod', () {
      expect(AppEnv.parse('dev'), AppEnv.dev);
      expect(AppEnv.parse('staging'), AppEnv.staging);
      expect(AppEnv.parse('prod'), AppEnv.prod);
      expect(AppEnv.parse('production'), AppEnv.prod);
    });

    test('AppEnv.parse rejects unknown values', () {
      expect(() => AppEnv.parse('qa'), throwsA(isA<EnvValidationException>()));
    });
  });

  group('isDevAllowedHttpHost', () {
    test('allows common dev hosts', () {
      expect(EnvValidation.isDevAllowedHttpHost('localhost'), isTrue);
      expect(EnvValidation.isDevAllowedHttpHost('127.0.0.1'), isTrue);
      expect(EnvValidation.isDevAllowedHttpHost('10.0.2.2'), isTrue);
      expect(EnvValidation.isDevAllowedHttpHost('192.168.0.5'), isTrue);
    });

    test('rejects public hosts', () {
      expect(EnvValidation.isDevAllowedHttpHost('api.example.com'), isFalse);
    });
  });
}

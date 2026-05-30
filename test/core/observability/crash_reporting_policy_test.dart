import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';
import 'package:torino_moda_style_f/core/observability/crash_reporting_policy.dart';

void main() {
  group('CrashReportingPolicy', () {
    test('reports server and unknown errors', () {
      expect(CrashReportingPolicy.shouldReport(const ServerError()), isTrue);
      expect(CrashReportingPolicy.shouldReport(const UnknownError()), isTrue);
    });

    test('does not report validation auth not found or rate limit', () {
      expect(
        CrashReportingPolicy.shouldReport(
          const ValidationError(message: 'x', fieldErrors: {}),
        ),
        isFalse,
      );
      expect(CrashReportingPolicy.shouldReport(const UnauthorizedError()), isFalse);
      expect(CrashReportingPolicy.shouldReport(const NotFoundError()), isFalse);
      expect(CrashReportingPolicy.shouldReport(const RateLimitError()), isFalse);
      expect(CrashReportingPolicy.shouldReport(const NetworkError()), isFalse);
    });
  });
}

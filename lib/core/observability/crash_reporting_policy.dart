import '../network/error/app_error.dart';

/// Which [AppError] types may be reported as non-fatal events.
class CrashReportingPolicy {
  CrashReportingPolicy._();

  static bool shouldReport(AppError error) {
    return switch (error) {
      ServerError() => true,
      UnknownError() => true,
      ValidationError() => false,
      UnauthorizedError() => false,
      ForbiddenError() => false,
      NotFoundError() => false,
      RateLimitError() => false,
      NetworkError() => false,
      TimeoutError() => false,
    };
  }
}

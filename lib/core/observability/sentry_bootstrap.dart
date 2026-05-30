import 'package:flutter/widgets.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../config/env.dart';
import 'app_release.dart';
import 'sentry_config.dart';
import 'sentry_sanitizer.dart';

/// Starts the app with optional Sentry crash reporting.
Future<void> runWithObservability({
  required Env env,
  required Widget app,
}) async {
  if (SentryConfig.shouldWarnMissingDsn(env.appEnv)) {
    debugPrint(
      'WARNING: APP_ENV=${env.appEnv.name} but SENTRY_DSN is not set. '
      'Crash reporting is disabled.',
    );
  }

  if (!SentryConfig.isEnabledFor(env.appEnv)) {
    runApp(app);
    return;
  }

  await SentryFlutter.init(
    (options) {
      options.dsn = SentryConfig.resolvedDsn();
      options.environment = env.appEnv.name;
      options.release = AppRelease.label;
      options.sendDefaultPii = false;
      options.attachScreenshot = false;
      options.beforeSend = SentrySanitizer.beforeSend;
      options.beforeBreadcrumb = SentrySanitizer.beforeBreadcrumb;
    },
    appRunner: () => runApp(
      SentryWidget(child: app),
    ),
  );
}

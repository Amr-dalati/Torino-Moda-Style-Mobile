import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'core/config/env.dart';
import 'core/observability/sentry_bootstrap.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Fail fast on invalid APP_ENV / API_BASE_URL before building the widget tree.
  final env = Env.load();

  await runWithObservability(
    env: env,
    app: const ProviderScope(
      child: App(),
    ),
  );
}

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'core/config/env.dart';

void bootstrap() {
  WidgetsFlutterBinding.ensureInitialized();

  // Fail fast on invalid APP_ENV / API_BASE_URL before building the widget tree.
  Env.load();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}


import 'package:flutter/widgets.dart';

import 'package:torino_moda_style_f/l10n/app_localizations.dart';

extension L10nBuildContextX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

class AppL10n {
  static const supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];
}


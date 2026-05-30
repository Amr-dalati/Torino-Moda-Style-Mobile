import 'package:flutter/material.dart';

import 'color_schemes.dart';
import 'typography.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.light,
      textTheme: AppTypography.textTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.dark,
      textTheme: AppTypography.textTheme,
    );
  }
}


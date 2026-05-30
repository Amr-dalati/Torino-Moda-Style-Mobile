/// Release label for crash reporting. Keep in sync with [pubspec.yaml] `version`.
class AppRelease {
  AppRelease._();

  static const package = 'torino_moda_style_f';
  static const version = '1.0.0';
  static const build = '1';

  static String get label => '$package@$version+$build';
}

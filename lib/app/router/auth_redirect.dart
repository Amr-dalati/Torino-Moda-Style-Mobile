import '../../features/auth/domain/auth_session.dart';
import 'route_names.dart';

/// Pure redirect logic shared by [AppRouter] and tests.
String? authRedirect({
  required AuthSession auth,
  required String location,
}) {
  if (auth.status == AuthStatus.unknown || auth.status == AuthStatus.loading) {
    return location == RouteNames.splash ? null : RouteNames.splash;
  }

  final isAuthed = auth.isAuthenticated;
  final isAuthRoute =
      location == RouteNames.login || location == RouteNames.register;
  final isSplash = location == RouteNames.splash;

  if (!isAuthed) {
    if (isAuthRoute) return null;
    if (isSplash) return RouteNames.login;
    return RouteNames.login;
  }

  if (isAuthRoute || isSplash) return RouteNames.products;

  // Legacy home path → catalog.
  if (location == RouteNames.home) return RouteNames.products;

  return null;
}

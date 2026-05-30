import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/app/router/auth_redirect.dart';
import 'package:torino_moda_style_f/app/router/route_names.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';

void main() {
  group('authRedirect', () {
    test('unknown session stays on splash', () {
      expect(
        authRedirect(auth: AuthSession.unknown, location: RouteNames.splash),
        isNull,
      );
      expect(
        authRedirect(auth: AuthSession.unknown, location: RouteNames.home),
        RouteNames.splash,
      );
    });

    test('unauthenticated user on products goes to login', () {
      expect(
        authRedirect(
          auth: AuthSession.unauthenticated,
          location: RouteNames.products,
        ),
        RouteNames.login,
      );
    });

    test('authenticated user on login goes to products', () {
      expect(
        authRedirect(
          auth: AuthSession.authenticated(
            const Customer(id: 1, name: 'A', phone: '+1'),
          ),
          location: RouteNames.login,
        ),
        RouteNames.products,
      );
    });

    test('authenticated user on home redirects to products', () {
      expect(
        authRedirect(
          auth: AuthSession.authenticated(
            const Customer(id: 1, name: 'A', phone: '+1'),
          ),
          location: RouteNames.home,
        ),
        RouteNames.products,
      );
    });

    test('unauthenticated user on splash goes to login', () {
      expect(
        authRedirect(
          auth: AuthSession.unauthenticated,
          location: RouteNames.splash,
        ),
        RouteNames.login,
      );
    });

    test('unauthenticated can access register', () {
      expect(
        authRedirect(
          auth: AuthSession.unauthenticated,
          location: RouteNames.register,
        ),
        isNull,
      );
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/app/router/auth_refresh_listenable.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';

void main() {
  test('AuthRefreshListenable notifies when auth status changes', () {
    final listenable = AuthRefreshListenable(AuthSession.unknown);
    var notifications = 0;
    listenable.addListener(() => notifications++);

    listenable.update(AuthSession.loading);
    expect(notifications, 1);

    listenable.update(AuthSession.unauthenticated);
    expect(notifications, 2);

    listenable.update(AuthSession.unauthenticated);
    expect(notifications, 2);
  });

  test('AuthRefreshListenable notifies when customer changes', () {
    final listenable = AuthRefreshListenable(
      AuthSession.authenticated(const Customer(id: 1, name: 'A', phone: '+1')),
    );
    var notifications = 0;
    listenable.addListener(() => notifications++);

    listenable.update(
      AuthSession.authenticated(const Customer(id: 2, name: 'B', phone: '+2')),
    );
    expect(notifications, 1);
  });
}

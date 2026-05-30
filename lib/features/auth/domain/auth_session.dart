import 'package:flutter/foundation.dart';

import 'customer.dart';

enum AuthStatus { unknown, loading, unauthenticated, authenticated }

@immutable
class AuthSession {
  const AuthSession({
    required this.status,
    this.customer,
  });

  final AuthStatus status;
  final Customer? customer;

  static const unknown = AuthSession(status: AuthStatus.unknown);
  static const loading = AuthSession(status: AuthStatus.loading);
  static const unauthenticated = AuthSession(status: AuthStatus.unauthenticated);

  bool get isAuthenticated => status == AuthStatus.authenticated;

  AuthSession copyWith({
    AuthStatus? status,
    Customer? customer,
    bool clearCustomer = false,
  }) {
    return AuthSession(
      status: status ?? this.status,
      customer: clearCustomer ? null : (customer ?? this.customer),
    );
  }

  static AuthSession authenticated(Customer customer) {
    return AuthSession(
      status: AuthStatus.authenticated,
      customer: customer,
    );
  }
}

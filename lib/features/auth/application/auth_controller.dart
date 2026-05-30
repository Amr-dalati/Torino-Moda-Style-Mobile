import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/error/app_error.dart';
import '../domain/auth_session.dart';
import '../domain/customer.dart';
import '../domain/login_request.dart';
import '../domain/register_request.dart';
import 'auth_providers.dart';
import 'session_cleanup.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  bool _restoreInFlight = false;

  @override
  AuthSession build() => AuthSession.unknown;

  Future<void> restoreSession() async {
    if (_restoreInFlight) return;
    if (state.status == AuthStatus.authenticated) return;

    _restoreInFlight = true;
    state = AuthSession.loading;
    try {
      final session = await ref.read(authRepositoryProvider).restoreSession();
      state = session;
    } on AppError catch (e) {
      if (e is UnauthorizedError || e is ForbiddenError) {
        state = AuthSession.unauthenticated;
      } else {
        // Transient failure — token remains in storage for a later retry.
        state = AuthSession.unauthenticated;
      }
    } finally {
      _restoreInFlight = false;
    }
  }

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    try {
      final session = await ref.read(authRepositoryProvider).login(
            LoginRequest(phone: phone.trim(), password: password),
          );
      state = session;
    } on AppError {
      if (!state.isAuthenticated) {
        state = AuthSession.unauthenticated;
      }
      rethrow;
    }
  }

  Future<void> register({
    required String name,
    required String phone,
    required String password,
    String? email,
  }) async {
    final trimmedEmail = email?.trim();
    try {
      final session = await ref.read(authRepositoryProvider).register(
            RegisterRequest(
              name: name.trim(),
              phone: phone.trim(),
              password: password,
              email: trimmedEmail == null || trimmedEmail.isEmpty ? null : trimmedEmail,
            ),
          );
      state = session;
    } on AppError {
      if (!state.isAuthenticated) {
        state = AuthSession.unauthenticated;
      }
      rethrow;
    }
  }

  Future<void> logout() async {
    state = AuthSession.loading;
    try {
      await ref.read(authRepositoryProvider).logout();
    } finally {
      invalidateUserScopedProviders(ref);
      state = AuthSession.unauthenticated;
    }
  }

  /// Clears local session after a 401/403 on an authenticated API call.
  Future<void> handleUnauthorized() async {
    if (state.status == AuthStatus.unauthenticated) return;
    try {
      await ref.read(authTokenStorageProvider).clear();
    } finally {
      invalidateUserScopedProviders(ref);
      state = AuthSession.unauthenticated;
    }
  }

  void updateCustomer(Customer customer) {
    if (state.isAuthenticated) {
      state = AuthSession.authenticated(customer);
    }
  }
}

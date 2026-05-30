import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';
import 'package:torino_moda_style_f/core/storage/secure_store.dart';
import 'package:torino_moda_style_f/features/auth/data/repositories/auth_repository.dart';
import 'package:torino_moda_style_f/features/auth/data/sources/auth_remote.dart';
import 'package:torino_moda_style_f/features/auth/data/storage/auth_token_storage.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_response.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';
import 'package:torino_moda_style_f/features/auth/domain/login_request.dart';
import 'package:torino_moda_style_f/features/auth/domain/register_request.dart';
import 'package:torino_moda_style_f/features/profile/domain/update_profile_request.dart';

class _FakeAuthRemote implements AuthRemote {
  AuthResponse? loginResponse;
  AppError? loginError;
  Customer? meCustomer;
  AppError? meError;
  int logoutCalls = 0;

  @override
  Future<AuthResponse> login(LoginRequest request) async {
    if (loginError != null) throw loginError!;
    return loginResponse!;
  }

  @override
  Future<AuthResponse> register(RegisterRequest request) async {
    throw UnimplementedError();
  }

  @override
  Future<Customer> me() async {
    if (meError != null) throw meError!;
    return meCustomer!;
  }

  @override
  Future<Customer> updateProfile(UpdateProfileRequest request) async =>
      throw UnimplementedError();

  @override
  Future<void> logout() async {
    logoutCalls++;
  }
}

void main() {
  group('AuthRepository', () {
    late AuthTokenStorage tokenStorage;
    late _FakeAuthRemote remote;
    late AuthRepository repository;

    setUp(() {
      tokenStorage = AuthTokenStorage(InMemorySecureStorage());
      remote = _FakeAuthRemote();
      repository = AuthRepository(remote: remote, storage: tokenStorage);
    });

    test('login persists token and returns authenticated session', () async {
      const customer = Customer(id: 1, name: 'Jane', phone: '+10000000009');
      remote.loginResponse = const AuthResponse(token: 'tok', customer: customer);

      final session = await repository.login(
        const LoginRequest(phone: '+10000000009', password: 'password123'),
      );

      expect(session.isAuthenticated, isTrue);
      expect(session.customer?.name, 'Jane');
      expect(await tokenStorage.readToken(), 'tok');
    });

    test('restoreSession clears invalid token on 401', () async {
      await tokenStorage.saveSession(
        token: 'stale',
        customer: const Customer(id: 1, name: 'Jane', phone: '+1'),
      );
      remote.meError = const UnauthorizedError();

      final session = await repository.restoreSession();

      expect(session.status, AuthStatus.unauthenticated);
      expect(await tokenStorage.readToken(), isNull);
    });
  });
}

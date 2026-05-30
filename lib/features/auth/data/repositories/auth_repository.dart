import '../../../../core/network/error/app_error.dart';
import '../../domain/auth_response.dart';
import '../../domain/auth_session.dart';
import '../../domain/login_request.dart';
import '../../domain/register_request.dart';
import '../../domain/customer.dart';
import '../../../profile/domain/update_profile_request.dart';
import '../sources/auth_remote.dart';
import '../storage/auth_token_storage.dart';

class AuthRepository {
  AuthRepository({
    required AuthRemote remote,
    required AuthTokenStorage storage,
  })  : _remote = remote,
        _storage = storage;

  final AuthRemote _remote;
  final AuthTokenStorage _storage;

  Future<AuthSession> restoreSession() async {
    final token = await _storage.readToken();
    if (token == null || token.isEmpty) {
      await _storage.clear();
      return AuthSession.unauthenticated;
    }

    try {
      final customer = await _remote.me();
      await _storage.saveSession(token: token, customer: customer);
      return AuthSession.authenticated(customer);
    } on UnauthorizedError {
      await _storage.clear();
      return AuthSession.unauthenticated;
    } on ForbiddenError {
      await _storage.clear();
      return AuthSession.unauthenticated;
    }
  }

  Future<AuthSession> login(LoginRequest request) async {
    final response = await _remote.login(request);
    await _persistAuthResponse(response);
    return AuthSession.authenticated(response.customer);
  }

  Future<AuthSession> register(RegisterRequest request) async {
    final response = await _remote.register(request);
    await _persistAuthResponse(response);
    return AuthSession.authenticated(response.customer);
  }

  Future<Customer> fetchProfile() => _remote.me();

  Future<Customer> updateProfile(UpdateProfileRequest request) async {
    final customer = await _remote.updateProfile(request);
    final token = await _storage.readToken();
    if (token != null && token.isNotEmpty) {
      await _storage.saveSession(token: token, customer: customer);
    }
    return customer;
  }

  Future<void> logout() async {
    final token = await _storage.readToken();
    if (token != null && token.isNotEmpty) {
      try {
        await _remote.logout();
      } on AppError {
        // Clear local session even if backend logout fails.
      }
    }
    await _storage.clear();
  }

  Future<void> _persistAuthResponse(AuthResponse response) async {
    await _storage.saveSession(
      token: response.token,
      customer: response.customer,
    );
  }
}

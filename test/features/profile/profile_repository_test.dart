import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/storage/secure_store.dart';
import 'package:torino_moda_style_f/features/auth/data/repositories/auth_repository.dart';
import 'package:torino_moda_style_f/features/auth/data/sources/auth_remote.dart';
import 'package:torino_moda_style_f/features/auth/data/storage/auth_token_storage.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_response.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';
import 'package:torino_moda_style_f/features/auth/domain/login_request.dart';
import 'package:torino_moda_style_f/features/auth/domain/register_request.dart';
import 'package:torino_moda_style_f/features/profile/domain/update_profile_request.dart';

class _FakeAuthRemote implements AuthRemote {
  Customer profile = const Customer(id: 1, name: 'Jane', phone: '+10000000001', email: 'j@x.com');

  @override
  Future<Customer> me() async => profile;

  @override
  Future<Customer> updateProfile(UpdateProfileRequest request) async {
    profile = Customer(
      id: profile.id,
      name: request.name ?? profile.name,
      phone: request.phone ?? profile.phone,
      email: request.email ?? profile.email,
    );
    return profile;
  }

  @override
  Future<AuthResponse> login(LoginRequest request) => throw UnimplementedError();

  @override
  Future<AuthResponse> register(RegisterRequest request) => throw UnimplementedError();

  @override
  Future<void> logout() async {}
}

void main() {
  test('AuthRepository updateProfile persists customer', () async {
    final storage = AuthTokenStorage(InMemorySecureStorage());
    await storage.saveSession(
      token: 'tok',
      customer: const Customer(id: 1, name: 'Jane', phone: '+1'),
    );
    final remote = _FakeAuthRemote();
    final repository = AuthRepository(remote: remote, storage: storage);

    final updated = await repository.updateProfile(
      const UpdateProfileRequest(name: 'Janet', phone: '+10000000002'),
    );

    expect(updated.name, 'Janet');
    expect((await storage.readCustomer())?.name, 'Janet');
  });
}

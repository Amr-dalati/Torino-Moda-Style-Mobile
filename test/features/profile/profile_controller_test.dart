import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/storage/secure_store.dart';
import 'package:torino_moda_style_f/features/auth/application/auth_providers.dart';
import 'package:torino_moda_style_f/features/auth/data/repositories/auth_repository.dart';
import 'package:torino_moda_style_f/features/auth/data/sources/auth_remote.dart';
import 'package:torino_moda_style_f/features/auth/data/storage/auth_token_storage.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_response.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';
import 'package:torino_moda_style_f/features/auth/domain/login_request.dart';
import 'package:torino_moda_style_f/features/auth/domain/register_request.dart';
import 'package:torino_moda_style_f/features/profile/application/profile_controller.dart';
import 'package:torino_moda_style_f/features/profile/domain/update_profile_request.dart';

class _FakeAuthRemote implements AuthRemote {
  Customer customer = const Customer(id: 1, name: 'Jane', phone: '+1');

  @override
  Future<Customer> me() async => customer;

  @override
  Future<Customer> updateProfile(UpdateProfileRequest request) async {
    customer = Customer(
      id: customer.id,
      name: request.name ?? customer.name,
      phone: request.phone ?? customer.phone,
      email: request.email,
    );
    return customer;
  }

  @override
  Future<AuthResponse> login(LoginRequest request) => throw UnimplementedError();

  @override
  Future<AuthResponse> register(RegisterRequest request) => throw UnimplementedError();

  @override
  Future<void> logout() async {}
}

void main() {
  test('ProfileController loads and updates profile', () async {
    final remote = _FakeAuthRemote();
    final container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(
          AuthRepository(
            remote: remote,
            storage: AuthTokenStorage(InMemorySecureStorage()),
          ),
        ),
      ],
    );
    addTearDown(container.dispose);

    final customer = await container.read(profileControllerProvider.future);
    expect(customer.name, 'Jane');

    final updated = await container
        .read(profileControllerProvider.notifier)
        .updateProfile(const UpdateProfileRequest(name: 'Janet'));
    expect(updated.name, 'Janet');
  });
}

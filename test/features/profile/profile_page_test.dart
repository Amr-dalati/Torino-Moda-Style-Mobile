import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/core/storage/secure_store.dart';
import 'package:torino_moda_style_f/features/auth/application/auth_controller.dart';
import 'package:torino_moda_style_f/features/auth/application/auth_providers.dart';
import 'package:torino_moda_style_f/features/auth/data/repositories/auth_repository.dart';
import 'package:torino_moda_style_f/features/auth/data/sources/auth_remote.dart';
import 'package:torino_moda_style_f/features/auth/data/storage/auth_token_storage.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_response.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';
import 'package:torino_moda_style_f/features/auth/domain/customer.dart';
import 'package:torino_moda_style_f/features/auth/domain/login_request.dart';
import 'package:torino_moda_style_f/features/auth/domain/register_request.dart';
import 'package:torino_moda_style_f/features/profile/application/profile_controller.dart';
import 'package:torino_moda_style_f/features/profile/domain/update_profile_request.dart';
import 'package:torino_moda_style_f/features/profile/presentation/profile_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';

class _FakeAuthRemote implements AuthRemote {
  @override
  Future<Customer> me() async =>
      const Customer(id: 1, name: 'Jane Doe', phone: '+10000000001', email: 'j@example.com');

  @override
  Future<Customer> updateProfile(UpdateProfileRequest request) => throw UnimplementedError();

  @override
  Future<AuthResponse> login(LoginRequest request) => throw UnimplementedError();

  @override
  Future<AuthResponse> register(RegisterRequest request) => throw UnimplementedError();

  @override
  Future<void> logout() async {}
}

class _TestProfileController extends ProfileController {
  @override
  Future<Customer> build() async =>
      const Customer(id: 1, name: 'Jane Doe', phone: '+10000000001', email: 'j@example.com');
}

class _TestAuthController extends AuthController {
  @override
  AuthSession build() => AuthSession.authenticated(
        const Customer(id: 1, name: 'Jane Doe', phone: '+10000000001'),
      );
}

void main() {
  testWidgets('ProfilePage shows customer name', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authControllerProvider.overrideWith(_TestAuthController.new),
          authRepositoryProvider.overrideWithValue(
            AuthRepository(
              remote: _FakeAuthRemote(),
              storage: AuthTokenStorage(InMemorySecureStorage()),
            ),
          ),
          profileControllerProvider.overrideWith(_TestProfileController.new),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppL10n.supportedLocales,
          home: ProfilePage(onLogout: () async {}),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Jane Doe'), findsOneWidget);
  });
}

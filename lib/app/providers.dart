import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/auth/application/auth_controller.dart';
import '../features/auth/domain/auth_session.dart';
import 'router/app_router.dart';
import 'router/auth_refresh_listenable.dart';

export '../core/network/dio_provider.dart' show dioProvider;
export '../core/storage/storage_providers.dart' show localStoreProvider, secureStoreProvider;
export '../features/auth/domain/auth_session.dart' show AuthSession, AuthStatus;

/// Connectivity stream.
final connectivityProvider = StreamProvider<List<ConnectivityResult>>((ref) {
  final connectivity = Connectivity();
  return connectivity.onConnectivityChanged;
});

final isOnlineProvider = Provider<bool>((ref) {
  final value = ref.watch(connectivityProvider);
  return value.maybeWhen(
    data: (results) => results.isNotEmpty && !results.contains(ConnectivityResult.none),
    orElse: () => true,
  );
});

/// Theme mode (placeholder, can be persisted later).
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

/// Locale (placeholder, can be persisted later).
final localeProvider = StateProvider<Locale?>((ref) => null);

/// Auth session (real customer auth).
final authSessionProvider = Provider<AuthSession>((ref) {
  return ref.watch(authControllerProvider);
});

/// Stable listenable for GoRouter refresh — avoids recreating the router on auth changes.
final authRefreshListenableProvider = Provider<AuthRefreshListenable>((ref) {
  final listenable = AuthRefreshListenable(ref.read(authSessionProvider));
  ref.listen(authSessionProvider, (_, next) => listenable.update(next));
  ref.onDispose(listenable.dispose);
  return listenable;
});

/// App router with auth-aware redirects (single GoRouter instance).
final appRouterProvider = Provider<AppRouter>((ref) {
  final authRefresh = ref.watch(authRefreshListenableProvider);
  return AppRouter(
    authRefresh: authRefresh,
    onLogoutRequested: () async {
      await ref.read(authControllerProvider.notifier).logout();
    },
  );
});

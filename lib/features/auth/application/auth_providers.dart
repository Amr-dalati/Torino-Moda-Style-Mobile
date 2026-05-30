import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../../../core/storage/storage_providers.dart';
import '../data/repositories/auth_repository.dart';
import '../data/sources/auth_remote_data_source.dart';
import '../data/storage/auth_token_storage.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
AuthTokenStorage authTokenStorage(Ref ref) {
  return AuthTokenStorage(ref.watch(secureStoreProvider));
}

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    remote: ref.watch(authRemoteDataSourceProvider),
    storage: ref.watch(authTokenStorageProvider),
  );
}

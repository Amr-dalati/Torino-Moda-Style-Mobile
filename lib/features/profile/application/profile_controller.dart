import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth/application/auth_controller.dart';
import '../../auth/application/auth_providers.dart';
import '../../auth/domain/customer.dart';
import '../domain/update_profile_request.dart';

part 'profile_controller.g.dart';

@Riverpod(keepAlive: true)
class ProfileController extends _$ProfileController {
  @override
  Future<Customer> build() {
    return ref.read(authRepositoryProvider).fetchProfile();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).fetchProfile(),
    );
  }

  Future<Customer> updateProfile(UpdateProfileRequest request) async {
    final updated = await ref.read(authRepositoryProvider).updateProfile(request);
    ref.read(authControllerProvider.notifier).updateCustomer(updated);
    state = AsyncData(updated);
    return updated;
  }
}

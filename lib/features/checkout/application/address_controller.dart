import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/customer_address.dart';
import '../domain/store_customer_address_request.dart';
import '../domain/update_customer_address_request.dart';
import 'checkout_providers.dart';

part 'address_controller.g.dart';

@Riverpod(keepAlive: true)
class AddressController extends _$AddressController {
  @override
  Future<List<CustomerAddress>> build() {
    return ref.read(addressRepositoryProvider).listAddresses();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(addressRepositoryProvider).listAddresses(),
    );
  }

  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request) async {
    final created = await ref.read(addressRepositoryProvider).createAddress(request);
    await refresh();
    return created;
  }

  Future<void> deleteAddress(int id) async {
    await ref.read(addressRepositoryProvider).deleteAddress(id);
    await refresh();
  }

  Future<void> setDefaultAddress(int id) async {
    await ref.read(addressRepositoryProvider).setDefaultAddress(id);
    await refresh();
  }

  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  ) async {
    final updated = await ref.read(addressRepositoryProvider).updateAddress(id, request);
    await refresh();
    return updated;
  }
}

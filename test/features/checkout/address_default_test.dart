import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/checkout/data/repositories/address_repository.dart';
import 'package:torino_moda_style_f/features/checkout/data/sources/address_remote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/customer_address.dart';
import 'package:torino_moda_style_f/features/checkout/domain/store_customer_address_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/update_customer_address_request.dart';

class _FakeAddressRemote implements AddressRemote {
  final List<CustomerAddress> addresses = [
    const CustomerAddress(id: 1, addressLine1: 'A', isDefault: false),
    const CustomerAddress(id: 2, addressLine1: 'B', isDefault: true),
  ];

  int defaultCalls = 0;

  @override
  Future<List<CustomerAddress>> listAddresses() async => addresses;

  @override
  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request) =>
      throw UnimplementedError();

  @override
  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  ) =>
      throw UnimplementedError();

  @override
  Future<void> deleteAddress(int id) async {}

  @override
  Future<CustomerAddress> setDefaultAddress(int id) async {
    defaultCalls++;
    return addresses.firstWhere((a) => a.id == id);
  }
}

void main() {
  test('AddressRepository setDefaultAddress delegates to remote', () async {
    final remote = _FakeAddressRemote();
    final repository = AddressRepository(remote: remote);

    await repository.setDefaultAddress(1);

    expect(remote.defaultCalls, 1);
  });
}

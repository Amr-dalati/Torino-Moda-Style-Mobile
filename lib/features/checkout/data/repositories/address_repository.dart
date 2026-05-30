import '../../domain/customer_address.dart';
import '../../domain/store_customer_address_request.dart';
import '../../domain/update_customer_address_request.dart';
import '../sources/address_remote.dart';

class AddressRepository {
  AddressRepository({required AddressRemote remote}) : _remote = remote;

  final AddressRemote _remote;

  Future<List<CustomerAddress>> listAddresses() => _remote.listAddresses();

  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request) =>
      _remote.createAddress(request);

  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  ) =>
      _remote.updateAddress(id, request);

  Future<void> deleteAddress(int id) => _remote.deleteAddress(id);

  Future<CustomerAddress> setDefaultAddress(int id) =>
      _remote.setDefaultAddress(id);
}

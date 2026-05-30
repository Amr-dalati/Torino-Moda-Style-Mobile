import '../../domain/customer_address.dart';
import '../../domain/store_customer_address_request.dart';
import '../../domain/update_customer_address_request.dart';

abstract class AddressRemote {
  Future<List<CustomerAddress>> listAddresses();
  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request);
  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  );
  Future<void> deleteAddress(int id);
  Future<CustomerAddress> setDefaultAddress(int id);
}

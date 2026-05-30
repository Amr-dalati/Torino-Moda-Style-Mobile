import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/checkout/data/repositories/address_repository.dart';
import 'package:torino_moda_style_f/features/checkout/data/repositories/checkout_repository.dart';
import 'package:torino_moda_style_f/features/checkout/data/repositories/delivery_repository.dart';
import 'package:torino_moda_style_f/features/checkout/data/sources/address_remote.dart';
import 'package:torino_moda_style_f/features/checkout/data/sources/checkout_remote.dart';
import 'package:torino_moda_style_f/features/checkout/data/sources/delivery_remote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_quote.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_quote_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/checkout_result.dart';
import 'package:torino_moda_style_f/features/checkout/domain/customer_address.dart';
import 'package:torino_moda_style_f/features/checkout/domain/delivery_area.dart';
import 'package:torino_moda_style_f/features/checkout/domain/delivery_region.dart';
import 'package:torino_moda_style_f/features/checkout/domain/store_customer_address_request.dart';
import 'package:torino_moda_style_f/features/checkout/domain/update_customer_address_request.dart';

class _FakeDeliveryRemote implements DeliveryRemote {
  @override
  Future<List<DeliveryRegion>> listRegions() async => [
        const DeliveryRegion(id: 1, code: 'CAI', nameEn: 'Cairo'),
      ];

  @override
  Future<List<DeliveryArea>> listAreas({int? regionId}) async => [
        const DeliveryArea(
          id: 10,
          regionId: 1,
          code: 'CAI-NASR',
          nameEn: 'Nasr City',
          deliveryFee: '50.00',
        ),
      ];
}

class _FakeAddressRemote implements AddressRemote {
  final List<CustomerAddress> addresses = [
    const CustomerAddress(id: 1, addressLine1: 'Street 1', isDefault: true),
  ];

  @override
  Future<List<CustomerAddress>> listAddresses() async => addresses;

  @override
  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request) async {
    return CustomerAddress(id: 2, addressLine1: request.addressLine1);
  }

  @override
  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  ) =>
      throw UnimplementedError();

  @override
  Future<void> deleteAddress(int id) async {
    addresses.removeWhere((a) => a.id == id);
  }

  @override
  Future<CustomerAddress> setDefaultAddress(int id) async {
    return addresses.firstWhere((a) => a.id == id);
  }
}

class _FakeCheckoutRemote implements CheckoutRemote {
  @override
  Future<CheckoutQuote> quote(CheckoutQuoteRequest request) async {
    return const CheckoutQuote(
      subtotal: '100.00',
      deliveryFee: '50.00',
      discountTotal: '0.00',
      total: '150.00',
    );
  }

  @override
  Future<CheckoutResult> checkout(CheckoutRequest request) async {
    return CheckoutResult.fromJson({
      'order': {
        'id': 1,
        'order_number': 'TMS-1',
        'order_status': 'awaiting_payment',
        'payment_status': 'pending',
        'subtotal': '100.00',
        'delivery_fee': '50.00',
        'discount_total': '0.00',
        'total': '150.00',
        'currency': 'EGP',
      },
      'payment': {
        'id': 1,
        'status': 'pending',
        'amount': '150.00',
        'currency': 'EGP',
        'merchant_reference': 'mr_1',
      },
    });
  }
}

void main() {
  test('DeliveryRepository lists regions and areas', () async {
    final repo = DeliveryRepository(remote: _FakeDeliveryRemote());

    final regions = await repo.listRegions();
    final areas = await repo.listAreas(regionId: 1);

    expect(regions, hasLength(1));
    expect(areas.first.deliveryFee, '50.00');
  });

  test('AddressRepository lists and creates addresses', () async {
    final remote = _FakeAddressRemote();
    final repo = AddressRepository(remote: remote);

    expect(await repo.listAddresses(), hasLength(1));
    final created = await repo.createAddress(
      const StoreCustomerAddressRequest(
        deliveryAreaId: 10,
        addressLine1: 'New street',
      ),
    );
    expect(created.addressLine1, 'New street');
  });

  test('CheckoutRepository quotes and checks out', () async {
    final repo = CheckoutRepository(remote: _FakeCheckoutRemote());

    final quote = await repo.quote(addressId: 1);
    final result = await repo.checkout(addressId: 1);

    expect(quote.total, '150.00');
    expect(result.order.orderNumber, 'TMS-1');
    expect(result.payment.status, 'pending');
  });
}

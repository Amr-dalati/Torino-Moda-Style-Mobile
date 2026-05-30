import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../data/repositories/address_repository.dart';
import '../data/repositories/checkout_repository.dart';
import '../data/repositories/delivery_repository.dart';
import '../data/sources/address_remote_data_source.dart';
import '../data/sources/checkout_remote_data_source.dart';
import '../data/sources/delivery_remote_data_source.dart';

part 'checkout_providers.g.dart';

@Riverpod(keepAlive: true)
DeliveryRemoteDataSource deliveryRemoteDataSource(Ref ref) {
  return DeliveryRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
DeliveryRepository deliveryRepository(Ref ref) {
  return DeliveryRepository(remote: ref.watch(deliveryRemoteDataSourceProvider));
}

@Riverpod(keepAlive: true)
AddressRemoteDataSource addressRemoteDataSource(Ref ref) {
  return AddressRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
AddressRepository addressRepository(Ref ref) {
  return AddressRepository(remote: ref.watch(addressRemoteDataSourceProvider));
}

@Riverpod(keepAlive: true)
CheckoutRemoteDataSource checkoutRemoteDataSource(Ref ref) {
  return CheckoutRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
CheckoutRepository checkoutRepository(Ref ref) {
  return CheckoutRepository(remote: ref.watch(checkoutRemoteDataSourceProvider));
}

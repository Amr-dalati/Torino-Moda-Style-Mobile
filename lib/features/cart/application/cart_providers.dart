import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../data/repositories/cart_repository.dart';
import '../data/sources/cart_remote_data_source.dart';

part 'cart_providers.g.dart';

@Riverpod(keepAlive: true)
CartRemoteDataSource cartRemoteDataSource(Ref ref) {
  return CartRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
CartRepository cartRepository(Ref ref) {
  return CartRepository(remote: ref.watch(cartRemoteDataSourceProvider));
}

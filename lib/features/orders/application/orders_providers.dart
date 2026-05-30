import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../data/repositories/orders_repository.dart';
import '../data/sources/orders_remote_data_source.dart';

part 'orders_providers.g.dart';

@Riverpod(keepAlive: true)
OrdersRemoteDataSource ordersRemoteDataSource(Ref ref) {
  return OrdersRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
OrdersRepository ordersRepository(Ref ref) {
  return OrdersRepository(remote: ref.watch(ordersRemoteDataSourceProvider));
}

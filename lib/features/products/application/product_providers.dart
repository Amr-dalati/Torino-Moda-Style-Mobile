import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../data/repositories/product_repository.dart';
import '../data/sources/product_remote_data_source.dart';

part 'product_providers.g.dart';

@Riverpod(keepAlive: true)
ProductRemoteDataSource productRemoteDataSource(Ref ref) {
  return ProductRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
ProductRepository productRepository(Ref ref) {
  return ProductRepository(remote: ref.watch(productRemoteDataSourceProvider));
}

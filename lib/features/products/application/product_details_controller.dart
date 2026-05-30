import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/product.dart';
import 'product_providers.dart';

part 'product_details_controller.g.dart';

@riverpod
class ProductDetailsController extends _$ProductDetailsController {
  @override
  Future<Product> build(int productId) {
    return ref.read(productRepositoryProvider).getProduct(productId);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(productRepositoryProvider).getProduct(productId),
    );
  }
}

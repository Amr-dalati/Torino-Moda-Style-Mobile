import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/cart.dart';
import 'cart_providers.dart';

part 'cart_controller.g.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  Future<Cart> build() => ref.read(cartRepositoryProvider).getCart();

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(cartRepositoryProvider).getCart());
  }

  Future<void> addItem({
    required int productVariantId,
    required int quantity,
  }) async {
    state = await AsyncValue.guard(
      () => ref.read(cartRepositoryProvider).addItem(
            productVariantId: productVariantId,
            quantity: quantity,
          ),
    );
    if (state.hasError) throw state.error!;
  }

  Future<void> updateItemQuantity({
    required int itemId,
    required int quantity,
  }) async {
    state = await AsyncValue.guard(
      () => ref.read(cartRepositoryProvider).updateItemQuantity(
            itemId: itemId,
            quantity: quantity,
          ),
    );
    if (state.hasError) throw state.error!;
  }

  Future<void> removeItem(int itemId) async {
    state = await AsyncValue.guard(
      () => ref.read(cartRepositoryProvider).removeItem(itemId),
    );
    if (state.hasError) throw state.error!;
  }

  Future<void> clearCart() async {
    state = await AsyncValue.guard(
      () => ref.read(cartRepositoryProvider).clearCart(),
    );
    if (state.hasError) throw state.error!;
  }
}

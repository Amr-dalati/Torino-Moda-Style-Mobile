import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_controller.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_providers.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_summary_provider.dart';
import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';
import 'package:torino_moda_style_f/features/cart/data/sources/cart_remote.dart';
import 'package:torino_moda_style_f/features/cart/domain/add_cart_item_request.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart_item.dart';
import 'package:torino_moda_style_f/features/cart/domain/update_cart_item_request.dart';

class _FakeCartRemote implements CartRemote {
  Cart cart = const Cart(
    id: 1,
    status: 'active',
    subtotal: '0.00',
    currency: 'SAR',
    items: [],
  );

  @override
  Future<Cart> getCart() async => cart;

  @override
  Future<Cart> addItem(AddCartItemRequest request) async {
    cart = Cart(
      id: 1,
      status: 'active',
      subtotal: '1299.00',
      currency: 'SAR',
      items: [
        CartItem(
          id: 1,
          productVariantId: request.productVariantId,
          quantity: request.quantity,
          unitPriceSnapshot: '1299.00',
          lineTotal: '1299.00',
        ),
      ],
    );
    return cart;
  }

  @override
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request) async => cart;

  @override
  Future<Cart> removeItem(int itemId) async => cart;

  @override
  Future<Cart> clearCart() async {
    cart = const Cart(
      id: 1,
      status: 'active',
      subtotal: '0.00',
      currency: 'SAR',
      items: [],
    );
    return cart;
  }
}

void main() {
  test('CartController loads cart and addItem updates summary', () async {
    final container = ProviderContainer(
      overrides: [
        cartRepositoryProvider.overrideWithValue(
          CartRepository(remote: _FakeCartRemote()),
        ),
      ],
    );
    addTearDown(container.dispose);

    final initial = await container.read(cartControllerProvider.future);
    expect(initial.isEmpty, isTrue);

    await container.read(cartControllerProvider.notifier).addItem(
          productVariantId: 5,
          quantity: 1,
        );

    final summary = container.read(cartSummaryProvider);
    expect(summary?.itemCount, 1);
    expect(summary?.subtotal, '1299.00');
  });
}

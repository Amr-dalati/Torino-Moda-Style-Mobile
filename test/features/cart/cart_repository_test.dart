import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';
import 'package:torino_moda_style_f/features/cart/data/sources/cart_remote.dart';
import 'package:torino_moda_style_f/features/cart/domain/add_cart_item_request.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart.dart';
import 'package:torino_moda_style_f/features/cart/domain/update_cart_item_request.dart';

class _FakeCartRemote implements CartRemote {
  Cart emptyCart = const Cart(
    id: 1,
    status: 'active',
    subtotal: '0.00',
    currency: 'SAR',
    items: [],
  );

  Cart? afterAdd;

  @override
  Future<Cart> getCart() async => emptyCart;

  @override
  Future<Cart> addItem(AddCartItemRequest request) async {
    afterAdd = const Cart(
      id: 1,
      status: 'active',
      subtotal: '1299.00',
      currency: 'SAR',
      items: [],
    );
    return afterAdd!;
  }

  @override
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request) async =>
      emptyCart;

  @override
  Future<Cart> removeItem(int itemId) async => emptyCart;

  @override
  Future<Cart> clearCart() async => emptyCart;
}

void main() {
  test('CartRepository addItem delegates to remote', () async {
    final remote = _FakeCartRemote();
    final repository = CartRepository(remote: remote);

    final cart = await repository.addItem(productVariantId: 5, quantity: 1);

    expect(cart.subtotal, '1299.00');
    expect(remote.afterAdd, isNotNull);
  });
}

import 'package:torino_moda_style_f/features/cart/data/sources/cart_remote.dart';
import 'package:torino_moda_style_f/features/cart/domain/add_cart_item_request.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart.dart';
import 'package:torino_moda_style_f/features/cart/domain/update_cart_item_request.dart';

class FakeEmptyCartRemote implements CartRemote {
  const FakeEmptyCartRemote();

  static const emptyCart = Cart(
    id: 1,
    status: 'active',
    subtotal: '0.00',
    currency: 'SAR',
    items: [],
  );

  @override
  Future<Cart> getCart() async => emptyCart;

  @override
  Future<Cart> addItem(AddCartItemRequest request) async => emptyCart;

  @override
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request) async =>
      emptyCart;

  @override
  Future<Cart> removeItem(int itemId) async => emptyCart;

  @override
  Future<Cart> clearCart() async => emptyCart;
}

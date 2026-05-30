import '../../domain/add_cart_item_request.dart';
import '../../domain/cart.dart';
import '../../domain/update_cart_item_request.dart';

abstract class CartRemote {
  Future<Cart> getCart();
  Future<Cart> addItem(AddCartItemRequest request);
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request);
  Future<Cart> removeItem(int itemId);
  Future<Cart> clearCart();
}

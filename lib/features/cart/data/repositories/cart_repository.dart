import '../../domain/add_cart_item_request.dart';
import '../../domain/cart.dart';
import '../../domain/update_cart_item_request.dart';
import '../sources/cart_remote.dart';

class CartRepository {
  CartRepository({required CartRemote remote}) : _remote = remote;

  final CartRemote _remote;

  Future<Cart> getCart() => _remote.getCart();

  Future<Cart> addItem({
    required int productVariantId,
    required int quantity,
  }) {
    return _remote.addItem(
      AddCartItemRequest(
        productVariantId: productVariantId,
        quantity: quantity,
      ),
    );
  }

  Future<Cart> updateItemQuantity({
    required int itemId,
    required int quantity,
  }) {
    return _remote.updateItem(
      itemId,
      UpdateCartItemRequest(quantity: quantity),
    );
  }

  Future<Cart> removeItem(int itemId) => _remote.removeItem(itemId);

  Future<Cart> clearCart() => _remote.clearCart();
}

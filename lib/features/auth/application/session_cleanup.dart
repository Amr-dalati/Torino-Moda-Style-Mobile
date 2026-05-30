import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../cart/application/cart_controller.dart';
import '../../checkout/application/address_controller.dart';
import '../../checkout/application/checkout_controller.dart';
import '../../orders/application/orders_list_controller.dart';
import '../../profile/application/profile_controller.dart';

/// Clears user-scoped keepAlive state after logout or forced session expiry.
void invalidateUserScopedProviders(Ref ref) {
  ref.invalidate(cartControllerProvider);
  ref.invalidate(profileControllerProvider);
  ref.invalidate(addressControllerProvider);
  ref.invalidate(selectedCheckoutAddressIdProvider);
  ref.invalidate(ordersListControllerProvider);
}

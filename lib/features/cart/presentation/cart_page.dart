import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';

import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/empty_state_view.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/cart_controller.dart';
import '../domain/cart.dart';
import 'widgets/cart_item_tile.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  int? _busyItemId;
  bool _clearing = false;

  Future<void> _runItemAction(int itemId, Future<void> Function() action) async {
    setState(() => _busyItemId = itemId);
    try {
      await action();
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _busyItemId = null);
    }
  }

  Future<void> _clearCart() async {
    setState(() => _clearing = true);
    try {
      await ref.read(cartControllerProvider.notifier).clearCart();
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _clearing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final cartState = ref.watch(cartControllerProvider);

    ref.listen(cartControllerProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          if (error is AppError && _busyItemId == null && !_clearing) {
            showAppErrorSnackBar(context, error);
          }
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.cartTitle),
        actions: [
          if (cartState.valueOrNull?.isEmpty == false)
            TextButton(
              onPressed: _clearing ? null : _clearCart,
              child: Text(l10n.clearCartLabel),
            ),
        ],
      ),
      body: AsyncValueView<Cart>(
        value: cartState,
        loadingLabel: l10n.loadingCart,
        data: (cart) {
          if (cart.isEmpty) {
            return RefreshIndicator(
              onRefresh: () => ref.read(cartControllerProvider.notifier).refresh(),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    child: EmptyStateView(
                      icon: Icons.shopping_cart_outlined,
                      message: l10n.emptyCartMessage,
                      actionLabel: l10n.browseProductsLabel,
                      onAction: () => context.go(RouteNames.products),
                    ),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => ref.read(cartControllerProvider.notifier).refresh(),
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      final busy = _busyItemId == item.id || _clearing;
                      return CartItemTile(
                        item: item,
                        preferArabic: preferArabic,
                        busy: busy,
                        onIncrease: () => _runItemAction(
                          item.id,
                          () => ref.read(cartControllerProvider.notifier).updateItemQuantity(
                                itemId: item.id,
                                quantity: item.quantity + 1,
                              ),
                        ),
                        onDecrease: () => _runItemAction(
                          item.id,
                          () => ref.read(cartControllerProvider.notifier).updateItemQuantity(
                                itemId: item.id,
                                quantity: item.quantity - 1,
                              ),
                        ),
                        onRemove: () => _runItemAction(
                          item.id,
                          () => ref.read(cartControllerProvider.notifier).removeItem(item.id),
                        ),
                      );
                    },
                  ),
                ),
              ),
              if (_clearing)
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: LoadingView(),
                ),
              Material(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.subtotalLabel,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '${cart.subtotal} ${cart.currency}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      PrimaryButton(
                        label: l10n.proceedToCheckoutLabel,
                        onPressed: cart.isEmpty
                            ? null
                            : () => context.push(RouteNames.checkout),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_providers.dart';
import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';
import 'package:torino_moda_style_f/features/cart/data/sources/cart_remote.dart';
import 'package:torino_moda_style_f/features/cart/domain/add_cart_item_request.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart_item.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart_item_variant.dart';
import 'package:torino_moda_style_f/features/cart/domain/update_cart_item_request.dart';
import 'package:torino_moda_style_f/features/cart/presentation/cart_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';

class _FakeCartRemote implements CartRemote {
  @override
  Future<Cart> getCart() async {
    return const Cart(
      id: 1,
      status: 'active',
      subtotal: '1299.00',
      currency: 'SAR',
      items: [
        CartItem(
          id: 1,
          productVariantId: 5,
          quantity: 1,
          unitPriceSnapshot: '1299.00',
          lineTotal: '1299.00',
          variant: CartItemVariant(
            id: 5,
            product: CartItemVariantProduct(
              id: 1,
              productCode: 'TMS-001',
              nameEn: 'Test Shoe',
            ),
          ),
        ),
      ],
    );
  }

  @override
  Future<Cart> addItem(AddCartItemRequest request) => getCart();

  @override
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request) => getCart();

  @override
  Future<Cart> removeItem(int itemId) => getCart();

  @override
  Future<Cart> clearCart() async {
    return const Cart(
      id: 1,
      status: 'active',
      subtotal: '0.00',
      currency: 'SAR',
      items: [],
    );
  }
}

void main() {
  testWidgets('CartPage shows cart item and subtotal', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          cartRepositoryProvider.overrideWithValue(
            CartRepository(remote: _FakeCartRemote()),
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppL10n.supportedLocales,
          home: const CartPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Cart'), findsOneWidget);
    expect(find.text('Test Shoe'), findsOneWidget);
    expect(find.text('1299.00 SAR'), findsOneWidget);
  });
}

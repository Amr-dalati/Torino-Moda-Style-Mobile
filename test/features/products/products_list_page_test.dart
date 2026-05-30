import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_meta.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_providers.dart';
import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';
import 'package:torino_moda_style_f/features/auth/application/auth_controller.dart';
import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';
import 'package:torino_moda_style_f/features/products/application/product_providers.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';
import 'package:torino_moda_style_f/features/products/presentation/products_list_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';
import '../../helpers/fake_cart_remote.dart';

class _TestAuthController extends AuthController {
  @override
  AuthSession build() => AuthSession.unauthenticated;

  @override
  Future<void> restoreSession() async {}
}

class _FakeProductRemote implements ProductRemote {
  @override
  Future<PaginatedResult<Product>> getProducts({int page = 1, int perPage = 20}) async {
    return const PaginatedResult(
      items: [Product(id: 1, productCode: 'TMS-001', nameEn: 'Test Product')],
      meta: PaginatedMeta(currentPage: 1, perPage: 20, total: 1, lastPage: 1),
    );
  }

  @override
  Future<Product> getProduct(int id) => throw UnimplementedError();

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) =>
      throw UnimplementedError();

  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) =>
      throw UnimplementedError();
}

void main() {
  testWidgets('ProductsListPage shows loaded product', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authControllerProvider.overrideWith(_TestAuthController.new),
          productRepositoryProvider.overrideWithValue(
            ProductRepository(remote: _FakeProductRemote()),
          ),
          cartRepositoryProvider.overrideWithValue(
            CartRepository(remote: const FakeEmptyCartRemote()),
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
          home: const ProductsListPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Products'), findsOneWidget);
    expect(find.text('Test Product'), findsOneWidget);
  });
}

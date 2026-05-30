import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/features/products/application/product_providers.dart';
import 'package:torino_moda_style_f/features/products/data/repositories/product_repository.dart';
import 'package:torino_moda_style_f/features/products/data/sources/product_remote.dart';
import 'package:torino_moda_style_f/core/network/api/paginated_result.dart';
import 'package:torino_moda_style_f/features/products/domain/barcode_lookup_result.dart';
import 'package:torino_moda_style_f/features/products/domain/product.dart';
import 'package:torino_moda_style_f/features/products/presentation/barcode_lookup_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';

class _FakeProductRemote implements ProductRemote {
  @override
  Future<BarcodeLookupResult> lookupByBarcode(String barcode) async {
    return const BarcodeLookupResult(
      product: Product(id: 1, productCode: 'TMS-001', nameEn: 'Test Product'),
    );
  }

  @override
  Future<PaginatedResult<Product>> getProducts({int page = 1, int perPage = 20}) =>
      throw UnimplementedError();

  @override
  Future<Product> getProduct(int id) => throw UnimplementedError();

  @override
  Future<PaginatedResult<Product>> searchProducts({
    required String query,
    int page = 1,
    int perPage = 20,
  }) =>
      throw UnimplementedError();
}

void main() {
  testWidgets('BarcodeLookupPage shows form', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          productRepositoryProvider.overrideWithValue(
            ProductRepository(remote: _FakeProductRemote()),
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
          home: const BarcodeLookupPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Barcode lookup'), findsOneWidget);
    expect(find.text('Look up product'), findsOneWidget);
  });
}

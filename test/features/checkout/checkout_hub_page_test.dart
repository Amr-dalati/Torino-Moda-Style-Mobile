import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_providers.dart';
import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';
import 'package:torino_moda_style_f/features/checkout/application/address_controller.dart';
import 'package:torino_moda_style_f/features/checkout/domain/customer_address.dart';
import 'package:torino_moda_style_f/features/checkout/presentation/checkout_hub_page.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';
import '../../helpers/fake_cart_remote.dart';

class _TestAddressController extends AddressController {
  @override
  Future<List<CustomerAddress>> build() async => [
        const CustomerAddress(
          id: 1,
          addressLine1: 'Street 1',
          isDefault: true,
        ),
      ];

  @override
  Future<void> refresh() async {}
}

void main() {
  testWidgets('CheckoutHubPage shows continue when address exists', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          addressControllerProvider.overrideWith(_TestAddressController.new),
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
          home: const CheckoutHubPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Checkout'), findsOneWidget);
    expect(find.text('Continue to review'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/app/shell/main_shell_scaffold.dart';
import 'package:torino_moda_style_f/core/localization/l10n.dart';
import 'package:torino_moda_style_f/features/cart/application/cart_summary_provider.dart';
import 'package:torino_moda_style_f/features/cart/domain/cart_summary.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('MainShellScaffold shows four navigation destinations', (tester) async {
    final router = GoRouter(
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainShellScaffold(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(path: '/', builder: (context, state) => const Scaffold(body: Text('Products'))),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(path: '/cart', builder: (context, state) => const Scaffold(body: Text('Cart'))),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(path: '/orders', builder: (context, state) => const Scaffold(body: Text('Orders'))),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(path: '/profile', builder: (context, state) => const Scaffold(body: Text('Profile'))),
              ],
            ),
          ],
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          cartSummaryProvider.overrideWithValue(
            const CartSummary(itemCount: 0, subtotal: '0.00', currency: 'EGP'),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppL10n.supportedLocales,
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Products'), findsWidgets);
    expect(find.text('Cart'), findsWidgets);
    expect(find.text('Orders'), findsWidgets);
    expect(find.text('Profile'), findsWidgets);
  });
}

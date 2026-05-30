import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/localization/l10n.dart';
import '../../features/cart/application/cart_summary_provider.dart';

class MainShellScaffold extends ConsumerWidget {
  const MainShellScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final cartSummary = ref.watch(cartSummaryProvider);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onTap,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.storefront_outlined),
            selectedIcon: const Icon(Icons.storefront),
            label: l10n.navProductsLabel,
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: cartSummary?.hasItems ?? false,
              label: Text(cartSummary?.badgeLabel ?? ''),
              child: const Icon(Icons.shopping_cart_outlined),
            ),
            selectedIcon: Badge(
              isLabelVisible: cartSummary?.hasItems ?? false,
              label: Text(cartSummary?.badgeLabel ?? ''),
              child: const Icon(Icons.shopping_cart),
            ),
            label: l10n.navCartLabel,
          ),
          NavigationDestination(
            icon: const Icon(Icons.receipt_long_outlined),
            selectedIcon: const Icon(Icons.receipt_long),
            label: l10n.navOrdersLabel,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            selectedIcon: const Icon(Icons.person),
            label: l10n.navProfileLabel,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_names.dart';
import '../../../../core/localization/l10n.dart';
import '../../application/cart_summary_provider.dart';

class CartNavButton extends ConsumerWidget {
  const CartNavButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final summary = ref.watch(cartSummaryProvider);

    return IconButton(
      onPressed: () => context.push(RouteNames.cart),
      tooltip: l10n.cartTitle,
      icon: Badge(
        isLabelVisible: summary?.hasItems ?? false,
        label: Text(summary?.badgeLabel ?? ''),
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}

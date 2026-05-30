import 'package:flutter/material.dart';

import '../../../../core/localization/l10n.dart';
import '../../domain/cart_item.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
    required this.item,
    required this.preferArabic,
    required this.onIncrease,
    required this.onDecrease,
    required this.onRemove,
    this.busy = false,
  });

  final CartItem item;
  final bool preferArabic;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onRemove;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final color = item.variant?.color;
    final colorName = color == null
        ? null
        : (preferArabic
            ? (color.nameAr ?? color.nameEn)
            : (color.nameEn ?? color.nameAr));
    final sizeName = item.variant?.size?.name;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.displayTitle(preferArabic: preferArabic),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      if (colorName != null || sizeName != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          [
                            if (colorName != null) '${l10n.colorLabel}: $colorName',
                            if (sizeName != null) '${l10n.sizeLabel}: $sizeName',
                          ].join(' · '),
                        ),
                      ],
                      const SizedBox(height: 4),
                      Text('${l10n.unitPriceLabel}: ${item.unitPriceSnapshot}'),
                      Text('${l10n.lineTotalLabel}: ${item.lineTotal}'),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: busy ? null : onRemove,
                  icon: const Icon(Icons.delete_outline),
                  tooltip: l10n.removeItemLabel,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(l10n.quantityLabel),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: busy || item.quantity <= 1 ? null : onDecrease,
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                Text('${item.quantity}', style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                  onPressed: busy ? null : onIncrease,
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../domain/product.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.product,
    required this.preferArabic,
    required this.onTap,
  });

  final Product product;
  final bool preferArabic;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final price = product.formattedPrice();
    final subtitleParts = <String>[
      product.productCode,
      ?price,
      if (product.variantsCount != null) '${product.variantsCount} variants',
    ];

    return ListTile(
      title: Text(product.displayName(preferArabic: preferArabic)),
      subtitle: Text(subtitleParts.join(' · ')),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

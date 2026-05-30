import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/async_value_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../cart/application/cart_controller.dart';
import '../../cart/presentation/widgets/cart_nav_button.dart';
import '../application/product_details_controller.dart';
import '../domain/product.dart';
import '../domain/product_variant.dart';

class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.productId,
    this.initialVariantId,
  });

  final int productId;
  final int? initialVariantId;

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {
  int? _selectedVariantId;
  int _quantity = 1;
  bool _adding = false;
  bool _appliedInitialVariant = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context);
    final preferArabic = locale.languageCode == 'ar';
    final productState = ref.watch(productDetailsControllerProvider(widget.productId));

    ref.listen(productDetailsControllerProvider(widget.productId), (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          if (error is AppError) {
            showAppErrorSnackBar(context, error);
          }
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.productDetailsTitle),
        actions: const [CartNavButton()],
      ),
      body: AsyncValueView<Product>(
        value: productState,
        loadingLabel: l10n.loadingProducts,
        data: (product) {
          final variants = product.variants ?? const <ProductVariant>[];
          _ensureVariantSelection(variants);

          return RefreshIndicator(
            onRefresh: () => ref
                .read(productDetailsControllerProvider(widget.productId).notifier)
                .refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  product.displayName(preferArabic: preferArabic),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text('${l10n.productCodeLabel}: ${product.productCode}'),
                if (product.barcode != null) ...[
                  const SizedBox(height: 4),
                  Text('${l10n.barcodeLabel}: ${product.barcode}'),
                ],
                if (product.formattedPrice() != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    '${l10n.priceLabel}: ${product.formattedPrice()}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
                if (product.category != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    '${l10n.categoryLabel}: ${product.category!.nameEn ?? product.category!.nameAr ?? product.category!.code}',
                  ),
                ],
                if (product.brand != null) ...[
                  const SizedBox(height: 4),
                  Text('${l10n.brandLabel}: ${product.brand!.name}'),
                ],
                const SizedBox(height: 16),
                Text(l10n.variantsTitle, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                if (variants.isEmpty)
                  Text(l10n.noVariants)
                else ...[
                  ...variants.map(
                    (variant) => _VariantSelectorTile(
                      variant: variant,
                      preferArabic: preferArabic,
                      groupValue: _selectedVariantId,
                      onSelected: () => setState(() => _selectedVariantId = variant.id),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(l10n.quantityLabel),
                      const SizedBox(width: 12),
                      IconButton(
                        onPressed: _quantity <= 1 || _adding
                            ? null
                            : () => setState(() => _quantity -= 1),
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Text('$_quantity'),
                      IconButton(
                        onPressed: _adding ? null : () => setState(() => _quantity += 1),
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    label: l10n.addToCartLabel,
                    onPressed: variants.isEmpty || _adding ? null : () => _addToCart(),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  void _ensureVariantSelection(List<ProductVariant> variants) {
    if (variants.isEmpty) {
      _selectedVariantId = null;
      return;
    }
    if (!_appliedInitialVariant && widget.initialVariantId != null) {
      final match = variants.where((v) => v.id == widget.initialVariantId).firstOrNull;
      if (match != null) {
        _selectedVariantId = match.id;
        _appliedInitialVariant = true;
        return;
      }
    }
    if (_selectedVariantId != null &&
        variants.any((v) => v.id == _selectedVariantId)) {
      return;
    }
    _selectedVariantId = variants.first.id;
  }

  Future<void> _addToCart() async {
    final variantId = _selectedVariantId;
    if (variantId == null) return;

    setState(() => _adding = true);
    try {
      await ref.read(cartControllerProvider.notifier).addItem(
            productVariantId: variantId,
            quantity: _quantity,
          );
      if (mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(context.l10n.addedToCartMessage)));
      }
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _adding = false);
    }
  }
}

class _VariantSelectorTile extends StatelessWidget {
  const _VariantSelectorTile({
    required this.variant,
    required this.preferArabic,
    required this.groupValue,
    required this.onSelected,
  });

  final ProductVariant variant;
  final bool preferArabic;
  final int? groupValue;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorName = variant.color == null
        ? null
        : (preferArabic
            ? (variant.color!.nameAr ?? variant.color!.nameEn)
            : (variant.color!.nameEn ?? variant.color!.nameAr));
    final sizeName = variant.size?.name;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          groupValue == variant.id
              ? Icons.radio_button_checked
              : Icons.radio_button_off,
        ),
        title: Text(variant.sku ?? variant.barcode ?? 'Variant #${variant.id}'),
        subtitle: Text(
          [
            if (colorName != null) '${l10n.colorLabel}: $colorName',
            if (sizeName != null) '${l10n.sizeLabel}: $sizeName',
            if (variant.salePrice != null) '${l10n.priceLabel}: ${variant.salePrice}',
          ].join(' · '),
        ),
        onTap: onSelected,
      ),
    );
  }
}

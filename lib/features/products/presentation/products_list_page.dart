import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../application/product_list_controller.dart';
import 'widgets/product_list_body.dart';

class ProductsListPage extends ConsumerWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final listState = ref.watch(productListControllerProvider);

    ref.listen(productListControllerProvider, (previous, next) {
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
        title: Text(l10n.productsTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            tooltip: l10n.barcodeLookupTitle,
            onPressed: () => context.push(RouteNames.productBarcode),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: l10n.searchProducts,
            onPressed: () => context.push(RouteNames.productSearch),
          ),
        ],
      ),
      body: ProductListBody(
        listState: listState,
        onRefresh: () => ref.read(productListControllerProvider.notifier).refresh(),
        onLoadMore: () => ref.read(productListControllerProvider.notifier).loadMore(),
        onProductTap: (id) => context.push(RouteNames.productDetailPath(id)),
      ),
    );
  }
}

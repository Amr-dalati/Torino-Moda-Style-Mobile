import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n.dart';
import '../../../../shared/widgets/async_value_view.dart';
import '../../../../shared/widgets/loading_view.dart';
import '../../application/product_list_state.dart';
import 'product_list_tile.dart';

class ProductListBody extends StatelessWidget {
  const ProductListBody({
    super.key,
    required this.listState,
    required this.onRefresh,
    required this.onLoadMore,
    required this.onProductTap,
    this.emptyMessage,
  });

  final AsyncValue<ProductListState> listState;
  final Future<void> Function() onRefresh;
  final VoidCallback onLoadMore;
  final void Function(int productId) onProductTap;
  final String? emptyMessage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context);
    final preferArabic = locale.languageCode == 'ar';

    return AsyncValueView<ProductListState>(
      value: listState,
      loadingLabel: l10n.loadingProducts,
      data: (state) {
        if (state.isEmpty) {
          return RefreshIndicator(
            onRefresh: onRefresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  child: Center(
                    child: Text(emptyMessage ?? l10n.noProducts),
                  ),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: onRefresh,
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.pixels >=
                      notification.metrics.maxScrollExtent - 200 &&
                  state.hasMore &&
                  !state.isLoadingMore) {
                onLoadMore();
              }
              return false;
            },
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: state.products.length + (state.isLoadingMore ? 1 : 0),
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                if (index >= state.products.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: LoadingView(),
                  );
                }
                final product = state.products[index];
                return ProductListTile(
                  product: product,
                  preferArabic: preferArabic,
                  onTap: () => onProductTap(product.id),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

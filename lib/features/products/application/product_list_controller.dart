import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'product_list_state.dart';
import 'product_providers.dart';

part 'product_list_controller.g.dart';

@riverpod
class ProductListController extends _$ProductListController {
  static const _perPage = 20;

  @override
  Future<ProductListState> build() => _loadPage(1);

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadPage(1));
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore || current.isLoadingMore) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final next = await ref.read(productRepositoryProvider).listProducts(
            page: current.currentPage + 1,
            perPage: _perPage,
          );
      state = AsyncData(
        ProductListState(
          products: [...current.products, ...next.items],
          currentPage: next.meta.currentPage,
          lastPage: next.meta.lastPage,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<ProductListState> _loadPage(int page) async {
    final result = await ref.read(productRepositoryProvider).listProducts(
          page: page,
          perPage: _perPage,
        );
    return ProductListState(
      products: result.items,
      currentPage: result.meta.currentPage,
      lastPage: result.meta.lastPage,
    );
  }
}

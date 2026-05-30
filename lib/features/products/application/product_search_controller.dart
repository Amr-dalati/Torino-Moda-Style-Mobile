import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'product_list_state.dart';
import 'product_providers.dart';

part 'product_search_controller.g.dart';

@riverpod
class ProductSearchController extends _$ProductSearchController {
  static const _perPage = 20;

  String _query = '';

  @override
  Future<ProductListState?> build() async => null;

  Future<void> search(String query) async {
    _query = query.trim();
    if (_query.isEmpty) {
      state = const AsyncData(null);
      return;
    }
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _search(_query, 1));
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore || current.isLoadingMore || _query.isEmpty) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final next = await ref.read(productRepositoryProvider).searchProducts(
            query: _query,
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

  Future<ProductListState> _search(String query, int page) async {
    final result = await ref.read(productRepositoryProvider).searchProducts(
          query: query,
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

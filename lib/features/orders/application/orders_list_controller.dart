import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'orders_list_state.dart';
import 'orders_providers.dart';

part 'orders_list_controller.g.dart';

@riverpod
class OrdersListController extends _$OrdersListController {
  static const _perPage = 20;

  @override
  Future<OrdersListState> build() => _loadPage(1);

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadPage(1));
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore || current.isLoadingMore) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final next = await ref.read(ordersRepositoryProvider).listOrders(
            page: current.currentPage + 1,
            perPage: _perPage,
          );
      state = AsyncData(
        OrdersListState(
          orders: [...current.orders, ...next.items],
          currentPage: next.meta.currentPage,
          lastPage: next.meta.lastPage,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<OrdersListState> _loadPage(int page) async {
    final result = await ref.read(ordersRepositoryProvider).listOrders(
          page: page,
          perPage: _perPage,
        );
    return OrdersListState(
      orders: result.items,
      currentPage: result.meta.currentPage,
      lastPage: result.meta.lastPage,
    );
  }
}

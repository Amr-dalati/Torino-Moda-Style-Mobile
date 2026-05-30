import '../domain/order.dart';

class OrdersListState {
  const OrdersListState({
    required this.orders,
    required this.currentPage,
    required this.lastPage,
    this.isLoadingMore = false,
  });

  final List<Order> orders;
  final int currentPage;
  final int lastPage;
  final bool isLoadingMore;

  bool get hasMore => currentPage < lastPage;
  bool get isEmpty => orders.isEmpty;

  OrdersListState copyWith({
    List<Order>? orders,
    int? currentPage,
    int? lastPage,
    bool? isLoadingMore,
  }) {
    return OrdersListState(
      orders: orders ?? this.orders,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}

import '../domain/product.dart';

class ProductListState {
  const ProductListState({
    required this.products,
    required this.currentPage,
    required this.lastPage,
    this.isLoadingMore = false,
  });

  final List<Product> products;
  final int currentPage;
  final int lastPage;
  final bool isLoadingMore;

  bool get hasMore => currentPage < lastPage;
  bool get isEmpty => products.isEmpty;

  ProductListState copyWith({
    List<Product>? products,
    int? currentPage,
    int? lastPage,
    bool? isLoadingMore,
  }) {
    return ProductListState(
      products: products ?? this.products,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}

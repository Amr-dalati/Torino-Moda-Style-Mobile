import 'paginated_meta.dart';

class PaginatedResult<T> {
  const PaginatedResult({
    required this.items,
    required this.meta,
  });

  final List<T> items;
  final PaginatedMeta meta;

  bool get hasMore => meta.hasMore;
}

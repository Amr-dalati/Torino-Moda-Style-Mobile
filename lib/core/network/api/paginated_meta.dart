import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_meta.freezed.dart';
part 'paginated_meta.g.dart';

@freezed
abstract class PaginatedMeta with _$PaginatedMeta {
  const factory PaginatedMeta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'last_page') required int lastPage,
  }) = _PaginatedMeta;

  factory PaginatedMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginatedMetaFromJson(json);

  const PaginatedMeta._();

  bool get hasMore => currentPage < lastPage;
}

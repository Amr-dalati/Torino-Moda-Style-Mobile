import 'package:freezed_annotation/freezed_annotation.dart';

part 'size.freezed.dart';
part 'size.g.dart';

@freezed
abstract class ProductSize with _$ProductSize {
  const factory ProductSize({
    required int id,
    required String code,
    required String name,
  }) = _ProductSize;

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);
}

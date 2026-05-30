import 'package:freezed_annotation/freezed_annotation.dart';

import 'color.dart';
import 'size.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
abstract class ProductVariant with _$ProductVariant {
  const factory ProductVariant({
    required int id,
    @JsonKey(name: 'phoenix_id') String? phoenixId,
    String? sku,
    String? barcode,
    ProductColor? color,
    ProductSize? size,
    @JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);
}

double? _priceFromJson(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

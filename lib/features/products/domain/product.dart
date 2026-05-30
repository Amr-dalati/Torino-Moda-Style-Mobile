import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'category.dart';
import 'product_variant.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    @JsonKey(name: 'phoenix_id') String? phoenixId,
    @JsonKey(name: 'product_code') required String productCode,
    String? barcode,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_en') String? nameEn,
    Category? category,
    Brand? brand,
    @JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'variants_count') int? variantsCount,
    List<ProductVariant>? variants,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  const Product._();

  String displayName({required bool preferArabic}) {
    if (preferArabic) {
      return (nameAr?.isNotEmpty ?? false) ? nameAr! : (nameEn ?? productCode);
    }
    return (nameEn?.isNotEmpty ?? false) ? nameEn! : (nameAr ?? productCode);
  }

  String? formattedPrice() {
    if (salePrice == null) return null;
    return salePrice!.toStringAsFixed(2);
  }
}

double? _priceFromJson(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

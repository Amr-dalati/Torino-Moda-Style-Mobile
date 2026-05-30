import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_variant.freezed.dart';
part 'cart_item_variant.g.dart';

@freezed
abstract class CartItemVariantProduct with _$CartItemVariantProduct {
  const factory CartItemVariantProduct({
    required int id,
    @JsonKey(name: 'product_code') required String productCode,
    @JsonKey(name: 'name_en') String? nameEn,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,
  }) = _CartItemVariantProduct;

  factory CartItemVariantProduct.fromJson(Map<String, dynamic> json) =>
      _$CartItemVariantProductFromJson(json);
}

@freezed
abstract class CartItemVariantColor with _$CartItemVariantColor {
  const factory CartItemVariantColor({
    required String code,
    @JsonKey(name: 'name_en') String? nameEn,
    @JsonKey(name: 'name_ar') String? nameAr,
  }) = _CartItemVariantColor;

  factory CartItemVariantColor.fromJson(Map<String, dynamic> json) =>
      _$CartItemVariantColorFromJson(json);
}

@freezed
abstract class CartItemVariantSize with _$CartItemVariantSize {
  const factory CartItemVariantSize({
    required String code,
    required String name,
  }) = _CartItemVariantSize;

  factory CartItemVariantSize.fromJson(Map<String, dynamic> json) =>
      _$CartItemVariantSizeFromJson(json);
}

@freezed
abstract class CartItemVariant with _$CartItemVariant {
  const factory CartItemVariant({
    required int id,
    String? sku,
    String? barcode,
    @JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,
    CartItemVariantColor? color,
    CartItemVariantSize? size,
    CartItemVariantProduct? product,
  }) = _CartItemVariant;

  factory CartItemVariant.fromJson(Map<String, dynamic> json) =>
      _$CartItemVariantFromJson(json);
}

double? _priceFromJson(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

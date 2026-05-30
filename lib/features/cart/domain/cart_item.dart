import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item_variant.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required int id,
    @JsonKey(name: 'product_variant_id') required int productVariantId,
    required int quantity,
    @JsonKey(name: 'unit_price_snapshot') required String unitPriceSnapshot,
    @JsonKey(name: 'line_total') required String lineTotal,
    CartItemVariant? variant,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);

  const CartItem._();

  String displayTitle({required bool preferArabic}) {
    final product = variant?.product;
    if (product != null) {
      if (preferArabic) {
        return (product.nameAr?.isNotEmpty ?? false)
            ? product.nameAr!
            : (product.nameEn ?? product.productCode);
      }
      return (product.nameEn?.isNotEmpty ?? false)
          ? product.nameEn!
          : (product.nameAr ?? product.productCode);
    }
    return variant?.sku ?? variant?.barcode ?? 'Item #$id';
  }
}

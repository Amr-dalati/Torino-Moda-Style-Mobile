import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required int id,
    @JsonKey(name: 'product_variant_id') required int productVariantId,
    required int quantity,
    @JsonKey(name: 'unit_price_snapshot') required String unitPriceSnapshot,
    @JsonKey(name: 'line_total') required String lineTotal,
    @JsonKey(name: 'product_code') required String productCode,
    @JsonKey(name: 'variant_sku') String? variantSku,
    @JsonKey(name: 'variant_barcode') String? variantBarcode,
    @JsonKey(name: 'product_name_en') String? productNameEn,
    @JsonKey(name: 'product_name_ar') String? productNameAr,
    @JsonKey(name: 'color_code') String? colorCode,
    @JsonKey(name: 'size_code') String? sizeCode,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

  const OrderItem._();

  String displayName({required bool preferArabic}) {
    if (preferArabic) {
      return (productNameAr?.isNotEmpty ?? false)
          ? productNameAr!
          : (productNameEn ?? productCode);
    }
    return (productNameEn?.isNotEmpty ?? false)
        ? productNameEn!
        : (productNameAr ?? productCode);
  }
}

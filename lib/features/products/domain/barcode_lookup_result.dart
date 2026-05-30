import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';
import 'product_variant.dart';

part 'barcode_lookup_result.freezed.dart';
part 'barcode_lookup_result.g.dart';

@freezed
abstract class BarcodeLookupResult with _$BarcodeLookupResult {
  const factory BarcodeLookupResult({
    required Product product,
    ProductVariant? variant,
  }) = _BarcodeLookupResult;

  factory BarcodeLookupResult.fromJson(Map<String, dynamic> json) =>
      _$BarcodeLookupResultFromJson(json);
}

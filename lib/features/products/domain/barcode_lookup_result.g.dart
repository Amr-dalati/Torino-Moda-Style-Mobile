// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_lookup_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BarcodeLookupResult _$BarcodeLookupResultFromJson(Map<String, dynamic> json) =>
    _BarcodeLookupResult(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BarcodeLookupResultToJson(
  _BarcodeLookupResult instance,
) => <String, dynamic>{
  'product': instance.product,
  'variant': instance.variant,
};

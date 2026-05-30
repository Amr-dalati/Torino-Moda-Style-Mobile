// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItem {

 int get id;@JsonKey(name: 'product_variant_id') int get productVariantId; int get quantity;@JsonKey(name: 'unit_price_snapshot') String get unitPriceSnapshot;@JsonKey(name: 'line_total') String get lineTotal;@JsonKey(name: 'product_code') String get productCode;@JsonKey(name: 'variant_sku') String? get variantSku;@JsonKey(name: 'variant_barcode') String? get variantBarcode;@JsonKey(name: 'product_name_en') String? get productNameEn;@JsonKey(name: 'product_name_ar') String? get productNameAr;@JsonKey(name: 'color_code') String? get colorCode;@JsonKey(name: 'size_code') String? get sizeCode;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productVariantId, productVariantId) || other.productVariantId == productVariantId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPriceSnapshot, unitPriceSnapshot) || other.unitPriceSnapshot == unitPriceSnapshot)&&(identical(other.lineTotal, lineTotal) || other.lineTotal == lineTotal)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.variantSku, variantSku) || other.variantSku == variantSku)&&(identical(other.variantBarcode, variantBarcode) || other.variantBarcode == variantBarcode)&&(identical(other.productNameEn, productNameEn) || other.productNameEn == productNameEn)&&(identical(other.productNameAr, productNameAr) || other.productNameAr == productNameAr)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.sizeCode, sizeCode) || other.sizeCode == sizeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productVariantId,quantity,unitPriceSnapshot,lineTotal,productCode,variantSku,variantBarcode,productNameEn,productNameAr,colorCode,sizeCode);

@override
String toString() {
  return 'OrderItem(id: $id, productVariantId: $productVariantId, quantity: $quantity, unitPriceSnapshot: $unitPriceSnapshot, lineTotal: $lineTotal, productCode: $productCode, variantSku: $variantSku, variantBarcode: $variantBarcode, productNameEn: $productNameEn, productNameAr: $productNameAr, colorCode: $colorCode, sizeCode: $sizeCode)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'product_variant_id') int productVariantId, int quantity,@JsonKey(name: 'unit_price_snapshot') String unitPriceSnapshot,@JsonKey(name: 'line_total') String lineTotal,@JsonKey(name: 'product_code') String productCode,@JsonKey(name: 'variant_sku') String? variantSku,@JsonKey(name: 'variant_barcode') String? variantBarcode,@JsonKey(name: 'product_name_en') String? productNameEn,@JsonKey(name: 'product_name_ar') String? productNameAr,@JsonKey(name: 'color_code') String? colorCode,@JsonKey(name: 'size_code') String? sizeCode
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productVariantId = null,Object? quantity = null,Object? unitPriceSnapshot = null,Object? lineTotal = null,Object? productCode = null,Object? variantSku = freezed,Object? variantBarcode = freezed,Object? productNameEn = freezed,Object? productNameAr = freezed,Object? colorCode = freezed,Object? sizeCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productVariantId: null == productVariantId ? _self.productVariantId : productVariantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceSnapshot: null == unitPriceSnapshot ? _self.unitPriceSnapshot : unitPriceSnapshot // ignore: cast_nullable_to_non_nullable
as String,lineTotal: null == lineTotal ? _self.lineTotal : lineTotal // ignore: cast_nullable_to_non_nullable
as String,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,variantSku: freezed == variantSku ? _self.variantSku : variantSku // ignore: cast_nullable_to_non_nullable
as String?,variantBarcode: freezed == variantBarcode ? _self.variantBarcode : variantBarcode // ignore: cast_nullable_to_non_nullable
as String?,productNameEn: freezed == productNameEn ? _self.productNameEn : productNameEn // ignore: cast_nullable_to_non_nullable
as String?,productNameAr: freezed == productNameAr ? _self.productNameAr : productNameAr // ignore: cast_nullable_to_non_nullable
as String?,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,sizeCode: freezed == sizeCode ? _self.sizeCode : sizeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity, @JsonKey(name: 'unit_price_snapshot')  String unitPriceSnapshot, @JsonKey(name: 'line_total')  String lineTotal, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'variant_sku')  String? variantSku, @JsonKey(name: 'variant_barcode')  String? variantBarcode, @JsonKey(name: 'product_name_en')  String? productNameEn, @JsonKey(name: 'product_name_ar')  String? productNameAr, @JsonKey(name: 'color_code')  String? colorCode, @JsonKey(name: 'size_code')  String? sizeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productVariantId,_that.quantity,_that.unitPriceSnapshot,_that.lineTotal,_that.productCode,_that.variantSku,_that.variantBarcode,_that.productNameEn,_that.productNameAr,_that.colorCode,_that.sizeCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity, @JsonKey(name: 'unit_price_snapshot')  String unitPriceSnapshot, @JsonKey(name: 'line_total')  String lineTotal, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'variant_sku')  String? variantSku, @JsonKey(name: 'variant_barcode')  String? variantBarcode, @JsonKey(name: 'product_name_en')  String? productNameEn, @JsonKey(name: 'product_name_ar')  String? productNameAr, @JsonKey(name: 'color_code')  String? colorCode, @JsonKey(name: 'size_code')  String? sizeCode)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.id,_that.productVariantId,_that.quantity,_that.unitPriceSnapshot,_that.lineTotal,_that.productCode,_that.variantSku,_that.variantBarcode,_that.productNameEn,_that.productNameAr,_that.colorCode,_that.sizeCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity, @JsonKey(name: 'unit_price_snapshot')  String unitPriceSnapshot, @JsonKey(name: 'line_total')  String lineTotal, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'variant_sku')  String? variantSku, @JsonKey(name: 'variant_barcode')  String? variantBarcode, @JsonKey(name: 'product_name_en')  String? productNameEn, @JsonKey(name: 'product_name_ar')  String? productNameAr, @JsonKey(name: 'color_code')  String? colorCode, @JsonKey(name: 'size_code')  String? sizeCode)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productVariantId,_that.quantity,_that.unitPriceSnapshot,_that.lineTotal,_that.productCode,_that.variantSku,_that.variantBarcode,_that.productNameEn,_that.productNameAr,_that.colorCode,_that.sizeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem extends OrderItem {
  const _OrderItem({required this.id, @JsonKey(name: 'product_variant_id') required this.productVariantId, required this.quantity, @JsonKey(name: 'unit_price_snapshot') required this.unitPriceSnapshot, @JsonKey(name: 'line_total') required this.lineTotal, @JsonKey(name: 'product_code') required this.productCode, @JsonKey(name: 'variant_sku') this.variantSku, @JsonKey(name: 'variant_barcode') this.variantBarcode, @JsonKey(name: 'product_name_en') this.productNameEn, @JsonKey(name: 'product_name_ar') this.productNameAr, @JsonKey(name: 'color_code') this.colorCode, @JsonKey(name: 'size_code') this.sizeCode}): super._();
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  int id;
@override@JsonKey(name: 'product_variant_id') final  int productVariantId;
@override final  int quantity;
@override@JsonKey(name: 'unit_price_snapshot') final  String unitPriceSnapshot;
@override@JsonKey(name: 'line_total') final  String lineTotal;
@override@JsonKey(name: 'product_code') final  String productCode;
@override@JsonKey(name: 'variant_sku') final  String? variantSku;
@override@JsonKey(name: 'variant_barcode') final  String? variantBarcode;
@override@JsonKey(name: 'product_name_en') final  String? productNameEn;
@override@JsonKey(name: 'product_name_ar') final  String? productNameAr;
@override@JsonKey(name: 'color_code') final  String? colorCode;
@override@JsonKey(name: 'size_code') final  String? sizeCode;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productVariantId, productVariantId) || other.productVariantId == productVariantId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPriceSnapshot, unitPriceSnapshot) || other.unitPriceSnapshot == unitPriceSnapshot)&&(identical(other.lineTotal, lineTotal) || other.lineTotal == lineTotal)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.variantSku, variantSku) || other.variantSku == variantSku)&&(identical(other.variantBarcode, variantBarcode) || other.variantBarcode == variantBarcode)&&(identical(other.productNameEn, productNameEn) || other.productNameEn == productNameEn)&&(identical(other.productNameAr, productNameAr) || other.productNameAr == productNameAr)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.sizeCode, sizeCode) || other.sizeCode == sizeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productVariantId,quantity,unitPriceSnapshot,lineTotal,productCode,variantSku,variantBarcode,productNameEn,productNameAr,colorCode,sizeCode);

@override
String toString() {
  return 'OrderItem(id: $id, productVariantId: $productVariantId, quantity: $quantity, unitPriceSnapshot: $unitPriceSnapshot, lineTotal: $lineTotal, productCode: $productCode, variantSku: $variantSku, variantBarcode: $variantBarcode, productNameEn: $productNameEn, productNameAr: $productNameAr, colorCode: $colorCode, sizeCode: $sizeCode)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'product_variant_id') int productVariantId, int quantity,@JsonKey(name: 'unit_price_snapshot') String unitPriceSnapshot,@JsonKey(name: 'line_total') String lineTotal,@JsonKey(name: 'product_code') String productCode,@JsonKey(name: 'variant_sku') String? variantSku,@JsonKey(name: 'variant_barcode') String? variantBarcode,@JsonKey(name: 'product_name_en') String? productNameEn,@JsonKey(name: 'product_name_ar') String? productNameAr,@JsonKey(name: 'color_code') String? colorCode,@JsonKey(name: 'size_code') String? sizeCode
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productVariantId = null,Object? quantity = null,Object? unitPriceSnapshot = null,Object? lineTotal = null,Object? productCode = null,Object? variantSku = freezed,Object? variantBarcode = freezed,Object? productNameEn = freezed,Object? productNameAr = freezed,Object? colorCode = freezed,Object? sizeCode = freezed,}) {
  return _then(_OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productVariantId: null == productVariantId ? _self.productVariantId : productVariantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceSnapshot: null == unitPriceSnapshot ? _self.unitPriceSnapshot : unitPriceSnapshot // ignore: cast_nullable_to_non_nullable
as String,lineTotal: null == lineTotal ? _self.lineTotal : lineTotal // ignore: cast_nullable_to_non_nullable
as String,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,variantSku: freezed == variantSku ? _self.variantSku : variantSku // ignore: cast_nullable_to_non_nullable
as String?,variantBarcode: freezed == variantBarcode ? _self.variantBarcode : variantBarcode // ignore: cast_nullable_to_non_nullable
as String?,productNameEn: freezed == productNameEn ? _self.productNameEn : productNameEn // ignore: cast_nullable_to_non_nullable
as String?,productNameAr: freezed == productNameAr ? _self.productNameAr : productNameAr // ignore: cast_nullable_to_non_nullable
as String?,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,sizeCode: freezed == sizeCode ? _self.sizeCode : sizeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

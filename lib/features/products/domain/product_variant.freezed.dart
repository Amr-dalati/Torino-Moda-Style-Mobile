// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductVariant {

 int get id;@JsonKey(name: 'phoenix_id') String? get phoenixId; String? get sku; String? get barcode; ProductColor? get color; ProductSize? get size;@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? get salePrice;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<ProductVariant> get copyWith => _$ProductVariantCopyWithImpl<ProductVariant>(this as ProductVariant, _$identity);

  /// Serializes this ProductVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.phoenixId, phoenixId) || other.phoenixId == phoenixId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoenixId,sku,barcode,color,size,salePrice,isActive);

@override
String toString() {
  return 'ProductVariant(id: $id, phoenixId: $phoenixId, sku: $sku, barcode: $barcode, color: $color, size: $size, salePrice: $salePrice, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $ProductVariantCopyWith<$Res>  {
  factory $ProductVariantCopyWith(ProductVariant value, $Res Function(ProductVariant) _then) = _$ProductVariantCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'phoenix_id') String? phoenixId, String? sku, String? barcode, ProductColor? color, ProductSize? size,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,@JsonKey(name: 'is_active') bool isActive
});


$ProductColorCopyWith<$Res>? get color;$ProductSizeCopyWith<$Res>? get size;

}
/// @nodoc
class _$ProductVariantCopyWithImpl<$Res>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._self, this._then);

  final ProductVariant _self;
  final $Res Function(ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phoenixId = freezed,Object? sku = freezed,Object? barcode = freezed,Object? color = freezed,Object? size = freezed,Object? salePrice = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoenixId: freezed == phoenixId ? _self.phoenixId : phoenixId // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ProductColor?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as ProductSize?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductColorCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ProductColorCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSizeCopyWith<$Res>? get size {
    if (_self.size == null) {
    return null;
  }

  return $ProductSizeCopyWith<$Res>(_self.size!, (value) {
    return _then(_self.copyWith(size: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductVariant].
extension ProductVariantPatterns on ProductVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariant value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariant value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId,  String? sku,  String? barcode,  ProductColor? color,  ProductSize? size, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.id,_that.phoenixId,_that.sku,_that.barcode,_that.color,_that.size,_that.salePrice,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId,  String? sku,  String? barcode,  ProductColor? color,  ProductSize? size, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _ProductVariant():
return $default(_that.id,_that.phoenixId,_that.sku,_that.barcode,_that.color,_that.size,_that.salePrice,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId,  String? sku,  String? barcode,  ProductColor? color,  ProductSize? size, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariant() when $default != null:
return $default(_that.id,_that.phoenixId,_that.sku,_that.barcode,_that.color,_that.size,_that.salePrice,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariant implements ProductVariant {
  const _ProductVariant({required this.id, @JsonKey(name: 'phoenix_id') this.phoenixId, this.sku, this.barcode, this.color, this.size, @JsonKey(name: 'sale_price', fromJson: _priceFromJson) this.salePrice, @JsonKey(name: 'is_active') this.isActive = true});
  factory _ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);

@override final  int id;
@override@JsonKey(name: 'phoenix_id') final  String? phoenixId;
@override final  String? sku;
@override final  String? barcode;
@override final  ProductColor? color;
@override final  ProductSize? size;
@override@JsonKey(name: 'sale_price', fromJson: _priceFromJson) final  double? salePrice;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantCopyWith<_ProductVariant> get copyWith => __$ProductVariantCopyWithImpl<_ProductVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.phoenixId, phoenixId) || other.phoenixId == phoenixId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoenixId,sku,barcode,color,size,salePrice,isActive);

@override
String toString() {
  return 'ProductVariant(id: $id, phoenixId: $phoenixId, sku: $sku, barcode: $barcode, color: $color, size: $size, salePrice: $salePrice, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantCopyWith<$Res> implements $ProductVariantCopyWith<$Res> {
  factory _$ProductVariantCopyWith(_ProductVariant value, $Res Function(_ProductVariant) _then) = __$ProductVariantCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'phoenix_id') String? phoenixId, String? sku, String? barcode, ProductColor? color, ProductSize? size,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,@JsonKey(name: 'is_active') bool isActive
});


@override $ProductColorCopyWith<$Res>? get color;@override $ProductSizeCopyWith<$Res>? get size;

}
/// @nodoc
class __$ProductVariantCopyWithImpl<$Res>
    implements _$ProductVariantCopyWith<$Res> {
  __$ProductVariantCopyWithImpl(this._self, this._then);

  final _ProductVariant _self;
  final $Res Function(_ProductVariant) _then;

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phoenixId = freezed,Object? sku = freezed,Object? barcode = freezed,Object? color = freezed,Object? size = freezed,Object? salePrice = freezed,Object? isActive = null,}) {
  return _then(_ProductVariant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoenixId: freezed == phoenixId ? _self.phoenixId : phoenixId // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ProductColor?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as ProductSize?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductColorCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ProductColorCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of ProductVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductSizeCopyWith<$Res>? get size {
    if (_self.size == null) {
    return null;
  }

  return $ProductSizeCopyWith<$Res>(_self.size!, (value) {
    return _then(_self.copyWith(size: value));
  });
}
}

// dart format on

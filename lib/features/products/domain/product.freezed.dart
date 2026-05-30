// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 int get id;@JsonKey(name: 'phoenix_id') String? get phoenixId;@JsonKey(name: 'product_code') String get productCode; String? get barcode;@JsonKey(name: 'name_ar') String? get nameAr;@JsonKey(name: 'name_en') String? get nameEn; Category? get category; Brand? get brand;@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? get salePrice;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'variants_count') int? get variantsCount; List<ProductVariant>? get variants;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.phoenixId, phoenixId) || other.phoenixId == phoenixId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.variantsCount, variantsCount) || other.variantsCount == variantsCount)&&const DeepCollectionEquality().equals(other.variants, variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoenixId,productCode,barcode,nameAr,nameEn,category,brand,salePrice,isActive,variantsCount,const DeepCollectionEquality().hash(variants));

@override
String toString() {
  return 'Product(id: $id, phoenixId: $phoenixId, productCode: $productCode, barcode: $barcode, nameAr: $nameAr, nameEn: $nameEn, category: $category, brand: $brand, salePrice: $salePrice, isActive: $isActive, variantsCount: $variantsCount, variants: $variants)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'phoenix_id') String? phoenixId,@JsonKey(name: 'product_code') String productCode, String? barcode,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn, Category? category, Brand? brand,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'variants_count') int? variantsCount, List<ProductVariant>? variants
});


$CategoryCopyWith<$Res>? get category;$BrandCopyWith<$Res>? get brand;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phoenixId = freezed,Object? productCode = null,Object? barcode = freezed,Object? nameAr = freezed,Object? nameEn = freezed,Object? category = freezed,Object? brand = freezed,Object? salePrice = freezed,Object? isActive = null,Object? variantsCount = freezed,Object? variants = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoenixId: freezed == phoenixId ? _self.phoenixId : phoenixId // ignore: cast_nullable_to_non_nullable
as String?,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,variantsCount: freezed == variantsCount ? _self.variantsCount : variantsCount // ignore: cast_nullable_to_non_nullable
as int?,variants: freezed == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariant>?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId, @JsonKey(name: 'product_code')  String productCode,  String? barcode, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn,  Category? category,  Brand? brand, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'variants_count')  int? variantsCount,  List<ProductVariant>? variants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.phoenixId,_that.productCode,_that.barcode,_that.nameAr,_that.nameEn,_that.category,_that.brand,_that.salePrice,_that.isActive,_that.variantsCount,_that.variants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId, @JsonKey(name: 'product_code')  String productCode,  String? barcode, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn,  Category? category,  Brand? brand, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'variants_count')  int? variantsCount,  List<ProductVariant>? variants)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.phoenixId,_that.productCode,_that.barcode,_that.nameAr,_that.nameEn,_that.category,_that.brand,_that.salePrice,_that.isActive,_that.variantsCount,_that.variants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'phoenix_id')  String? phoenixId, @JsonKey(name: 'product_code')  String productCode,  String? barcode, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn,  Category? category,  Brand? brand, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'variants_count')  int? variantsCount,  List<ProductVariant>? variants)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.phoenixId,_that.productCode,_that.barcode,_that.nameAr,_that.nameEn,_that.category,_that.brand,_that.salePrice,_that.isActive,_that.variantsCount,_that.variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product extends Product {
  const _Product({required this.id, @JsonKey(name: 'phoenix_id') this.phoenixId, @JsonKey(name: 'product_code') required this.productCode, this.barcode, @JsonKey(name: 'name_ar') this.nameAr, @JsonKey(name: 'name_en') this.nameEn, this.category, this.brand, @JsonKey(name: 'sale_price', fromJson: _priceFromJson) this.salePrice, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'variants_count') this.variantsCount, final  List<ProductVariant>? variants}): _variants = variants,super._();
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int id;
@override@JsonKey(name: 'phoenix_id') final  String? phoenixId;
@override@JsonKey(name: 'product_code') final  String productCode;
@override final  String? barcode;
@override@JsonKey(name: 'name_ar') final  String? nameAr;
@override@JsonKey(name: 'name_en') final  String? nameEn;
@override final  Category? category;
@override final  Brand? brand;
@override@JsonKey(name: 'sale_price', fromJson: _priceFromJson) final  double? salePrice;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'variants_count') final  int? variantsCount;
 final  List<ProductVariant>? _variants;
@override List<ProductVariant>? get variants {
  final value = _variants;
  if (value == null) return null;
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.phoenixId, phoenixId) || other.phoenixId == phoenixId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.variantsCount, variantsCount) || other.variantsCount == variantsCount)&&const DeepCollectionEquality().equals(other._variants, _variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoenixId,productCode,barcode,nameAr,nameEn,category,brand,salePrice,isActive,variantsCount,const DeepCollectionEquality().hash(_variants));

@override
String toString() {
  return 'Product(id: $id, phoenixId: $phoenixId, productCode: $productCode, barcode: $barcode, nameAr: $nameAr, nameEn: $nameEn, category: $category, brand: $brand, salePrice: $salePrice, isActive: $isActive, variantsCount: $variantsCount, variants: $variants)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'phoenix_id') String? phoenixId,@JsonKey(name: 'product_code') String productCode, String? barcode,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn, Category? category, Brand? brand,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'variants_count') int? variantsCount, List<ProductVariant>? variants
});


@override $CategoryCopyWith<$Res>? get category;@override $BrandCopyWith<$Res>? get brand;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phoenixId = freezed,Object? productCode = null,Object? barcode = freezed,Object? nameAr = freezed,Object? nameEn = freezed,Object? category = freezed,Object? brand = freezed,Object? salePrice = freezed,Object? isActive = null,Object? variantsCount = freezed,Object? variants = freezed,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoenixId: freezed == phoenixId ? _self.phoenixId : phoenixId // ignore: cast_nullable_to_non_nullable
as String?,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,variantsCount: freezed == variantsCount ? _self.variantsCount : variantsCount // ignore: cast_nullable_to_non_nullable
as int?,variants: freezed == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariant>?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartItemVariantProduct {

 int get id;@JsonKey(name: 'product_code') String get productCode;@JsonKey(name: 'name_en') String? get nameEn;@JsonKey(name: 'name_ar') String? get nameAr;@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? get salePrice;
/// Create a copy of CartItemVariantProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemVariantProductCopyWith<CartItemVariantProduct> get copyWith => _$CartItemVariantProductCopyWithImpl<CartItemVariantProduct>(this as CartItemVariantProduct, _$identity);

  /// Serializes this CartItemVariantProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemVariantProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,nameEn,nameAr,salePrice);

@override
String toString() {
  return 'CartItemVariantProduct(id: $id, productCode: $productCode, nameEn: $nameEn, nameAr: $nameAr, salePrice: $salePrice)';
}


}

/// @nodoc
abstract mixin class $CartItemVariantProductCopyWith<$Res>  {
  factory $CartItemVariantProductCopyWith(CartItemVariantProduct value, $Res Function(CartItemVariantProduct) _then) = _$CartItemVariantProductCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'product_code') String productCode,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice
});




}
/// @nodoc
class _$CartItemVariantProductCopyWithImpl<$Res>
    implements $CartItemVariantProductCopyWith<$Res> {
  _$CartItemVariantProductCopyWithImpl(this._self, this._then);

  final CartItemVariantProduct _self;
  final $Res Function(CartItemVariantProduct) _then;

/// Create a copy of CartItemVariantProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productCode = null,Object? nameEn = freezed,Object? nameAr = freezed,Object? salePrice = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemVariantProduct].
extension CartItemVariantProductPatterns on CartItemVariantProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemVariantProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemVariantProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemVariantProduct value)  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemVariantProduct value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemVariantProduct() when $default != null:
return $default(_that.id,_that.productCode,_that.nameEn,_that.nameAr,_that.salePrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice)  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantProduct():
return $default(_that.id,_that.productCode,_that.nameEn,_that.nameAr,_that.salePrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'product_code')  String productCode, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice)?  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantProduct() when $default != null:
return $default(_that.id,_that.productCode,_that.nameEn,_that.nameAr,_that.salePrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemVariantProduct implements CartItemVariantProduct {
  const _CartItemVariantProduct({required this.id, @JsonKey(name: 'product_code') required this.productCode, @JsonKey(name: 'name_en') this.nameEn, @JsonKey(name: 'name_ar') this.nameAr, @JsonKey(name: 'sale_price', fromJson: _priceFromJson) this.salePrice});
  factory _CartItemVariantProduct.fromJson(Map<String, dynamic> json) => _$CartItemVariantProductFromJson(json);

@override final  int id;
@override@JsonKey(name: 'product_code') final  String productCode;
@override@JsonKey(name: 'name_en') final  String? nameEn;
@override@JsonKey(name: 'name_ar') final  String? nameAr;
@override@JsonKey(name: 'sale_price', fromJson: _priceFromJson) final  double? salePrice;

/// Create a copy of CartItemVariantProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemVariantProductCopyWith<_CartItemVariantProduct> get copyWith => __$CartItemVariantProductCopyWithImpl<_CartItemVariantProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemVariantProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemVariantProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,nameEn,nameAr,salePrice);

@override
String toString() {
  return 'CartItemVariantProduct(id: $id, productCode: $productCode, nameEn: $nameEn, nameAr: $nameAr, salePrice: $salePrice)';
}


}

/// @nodoc
abstract mixin class _$CartItemVariantProductCopyWith<$Res> implements $CartItemVariantProductCopyWith<$Res> {
  factory _$CartItemVariantProductCopyWith(_CartItemVariantProduct value, $Res Function(_CartItemVariantProduct) _then) = __$CartItemVariantProductCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'product_code') String productCode,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice
});




}
/// @nodoc
class __$CartItemVariantProductCopyWithImpl<$Res>
    implements _$CartItemVariantProductCopyWith<$Res> {
  __$CartItemVariantProductCopyWithImpl(this._self, this._then);

  final _CartItemVariantProduct _self;
  final $Res Function(_CartItemVariantProduct) _then;

/// Create a copy of CartItemVariantProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productCode = null,Object? nameEn = freezed,Object? nameAr = freezed,Object? salePrice = freezed,}) {
  return _then(_CartItemVariantProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CartItemVariantColor {

 String get code;@JsonKey(name: 'name_en') String? get nameEn;@JsonKey(name: 'name_ar') String? get nameAr;
/// Create a copy of CartItemVariantColor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemVariantColorCopyWith<CartItemVariantColor> get copyWith => _$CartItemVariantColorCopyWithImpl<CartItemVariantColor>(this as CartItemVariantColor, _$identity);

  /// Serializes this CartItemVariantColor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemVariantColor&&(identical(other.code, code) || other.code == code)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,nameEn,nameAr);

@override
String toString() {
  return 'CartItemVariantColor(code: $code, nameEn: $nameEn, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class $CartItemVariantColorCopyWith<$Res>  {
  factory $CartItemVariantColorCopyWith(CartItemVariantColor value, $Res Function(CartItemVariantColor) _then) = _$CartItemVariantColorCopyWithImpl;
@useResult
$Res call({
 String code,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'name_ar') String? nameAr
});




}
/// @nodoc
class _$CartItemVariantColorCopyWithImpl<$Res>
    implements $CartItemVariantColorCopyWith<$Res> {
  _$CartItemVariantColorCopyWithImpl(this._self, this._then);

  final CartItemVariantColor _self;
  final $Res Function(CartItemVariantColor) _then;

/// Create a copy of CartItemVariantColor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? nameEn = freezed,Object? nameAr = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemVariantColor].
extension CartItemVariantColorPatterns on CartItemVariantColor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemVariantColor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemVariantColor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemVariantColor value)  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantColor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemVariantColor value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantColor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemVariantColor() when $default != null:
return $default(_that.code,_that.nameEn,_that.nameAr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr)  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantColor():
return $default(_that.code,_that.nameEn,_that.nameAr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'name_ar')  String? nameAr)?  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantColor() when $default != null:
return $default(_that.code,_that.nameEn,_that.nameAr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemVariantColor implements CartItemVariantColor {
  const _CartItemVariantColor({required this.code, @JsonKey(name: 'name_en') this.nameEn, @JsonKey(name: 'name_ar') this.nameAr});
  factory _CartItemVariantColor.fromJson(Map<String, dynamic> json) => _$CartItemVariantColorFromJson(json);

@override final  String code;
@override@JsonKey(name: 'name_en') final  String? nameEn;
@override@JsonKey(name: 'name_ar') final  String? nameAr;

/// Create a copy of CartItemVariantColor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemVariantColorCopyWith<_CartItemVariantColor> get copyWith => __$CartItemVariantColorCopyWithImpl<_CartItemVariantColor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemVariantColorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemVariantColor&&(identical(other.code, code) || other.code == code)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,nameEn,nameAr);

@override
String toString() {
  return 'CartItemVariantColor(code: $code, nameEn: $nameEn, nameAr: $nameAr)';
}


}

/// @nodoc
abstract mixin class _$CartItemVariantColorCopyWith<$Res> implements $CartItemVariantColorCopyWith<$Res> {
  factory _$CartItemVariantColorCopyWith(_CartItemVariantColor value, $Res Function(_CartItemVariantColor) _then) = __$CartItemVariantColorCopyWithImpl;
@override @useResult
$Res call({
 String code,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'name_ar') String? nameAr
});




}
/// @nodoc
class __$CartItemVariantColorCopyWithImpl<$Res>
    implements _$CartItemVariantColorCopyWith<$Res> {
  __$CartItemVariantColorCopyWithImpl(this._self, this._then);

  final _CartItemVariantColor _self;
  final $Res Function(_CartItemVariantColor) _then;

/// Create a copy of CartItemVariantColor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? nameEn = freezed,Object? nameAr = freezed,}) {
  return _then(_CartItemVariantColor(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartItemVariantSize {

 String get code; String get name;
/// Create a copy of CartItemVariantSize
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemVariantSizeCopyWith<CartItemVariantSize> get copyWith => _$CartItemVariantSizeCopyWithImpl<CartItemVariantSize>(this as CartItemVariantSize, _$identity);

  /// Serializes this CartItemVariantSize to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemVariantSize&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'CartItemVariantSize(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class $CartItemVariantSizeCopyWith<$Res>  {
  factory $CartItemVariantSizeCopyWith(CartItemVariantSize value, $Res Function(CartItemVariantSize) _then) = _$CartItemVariantSizeCopyWithImpl;
@useResult
$Res call({
 String code, String name
});




}
/// @nodoc
class _$CartItemVariantSizeCopyWithImpl<$Res>
    implements $CartItemVariantSizeCopyWith<$Res> {
  _$CartItemVariantSizeCopyWithImpl(this._self, this._then);

  final CartItemVariantSize _self;
  final $Res Function(CartItemVariantSize) _then;

/// Create a copy of CartItemVariantSize
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemVariantSize].
extension CartItemVariantSizePatterns on CartItemVariantSize {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemVariantSize value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemVariantSize() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemVariantSize value)  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantSize():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemVariantSize value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemVariantSize() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemVariantSize() when $default != null:
return $default(_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name)  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantSize():
return $default(_that.code,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CartItemVariantSize() when $default != null:
return $default(_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemVariantSize implements CartItemVariantSize {
  const _CartItemVariantSize({required this.code, required this.name});
  factory _CartItemVariantSize.fromJson(Map<String, dynamic> json) => _$CartItemVariantSizeFromJson(json);

@override final  String code;
@override final  String name;

/// Create a copy of CartItemVariantSize
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemVariantSizeCopyWith<_CartItemVariantSize> get copyWith => __$CartItemVariantSizeCopyWithImpl<_CartItemVariantSize>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemVariantSizeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemVariantSize&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'CartItemVariantSize(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CartItemVariantSizeCopyWith<$Res> implements $CartItemVariantSizeCopyWith<$Res> {
  factory _$CartItemVariantSizeCopyWith(_CartItemVariantSize value, $Res Function(_CartItemVariantSize) _then) = __$CartItemVariantSizeCopyWithImpl;
@override @useResult
$Res call({
 String code, String name
});




}
/// @nodoc
class __$CartItemVariantSizeCopyWithImpl<$Res>
    implements _$CartItemVariantSizeCopyWith<$Res> {
  __$CartItemVariantSizeCopyWithImpl(this._self, this._then);

  final _CartItemVariantSize _self;
  final $Res Function(_CartItemVariantSize) _then;

/// Create a copy of CartItemVariantSize
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,}) {
  return _then(_CartItemVariantSize(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CartItemVariant {

 int get id; String? get sku; String? get barcode;@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? get salePrice; CartItemVariantColor? get color; CartItemVariantSize? get size; CartItemVariantProduct? get product;
/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemVariantCopyWith<CartItemVariant> get copyWith => _$CartItemVariantCopyWithImpl<CartItemVariant>(this as CartItemVariant, _$identity);

  /// Serializes this CartItemVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sku,barcode,salePrice,color,size,product);

@override
String toString() {
  return 'CartItemVariant(id: $id, sku: $sku, barcode: $barcode, salePrice: $salePrice, color: $color, size: $size, product: $product)';
}


}

/// @nodoc
abstract mixin class $CartItemVariantCopyWith<$Res>  {
  factory $CartItemVariantCopyWith(CartItemVariant value, $Res Function(CartItemVariant) _then) = _$CartItemVariantCopyWithImpl;
@useResult
$Res call({
 int id, String? sku, String? barcode,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice, CartItemVariantColor? color, CartItemVariantSize? size, CartItemVariantProduct? product
});


$CartItemVariantColorCopyWith<$Res>? get color;$CartItemVariantSizeCopyWith<$Res>? get size;$CartItemVariantProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$CartItemVariantCopyWithImpl<$Res>
    implements $CartItemVariantCopyWith<$Res> {
  _$CartItemVariantCopyWithImpl(this._self, this._then);

  final CartItemVariant _self;
  final $Res Function(CartItemVariant) _then;

/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sku = freezed,Object? barcode = freezed,Object? salePrice = freezed,Object? color = freezed,Object? size = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as CartItemVariantColor?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as CartItemVariantSize?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartItemVariantProduct?,
  ));
}
/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantColorCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $CartItemVariantColorCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantSizeCopyWith<$Res>? get size {
    if (_self.size == null) {
    return null;
  }

  return $CartItemVariantSizeCopyWith<$Res>(_self.size!, (value) {
    return _then(_self.copyWith(size: value));
  });
}/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $CartItemVariantProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItemVariant].
extension CartItemVariantPatterns on CartItemVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemVariant value)  $default,){
final _that = this;
switch (_that) {
case _CartItemVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemVariant value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? sku,  String? barcode, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice,  CartItemVariantColor? color,  CartItemVariantSize? size,  CartItemVariantProduct? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemVariant() when $default != null:
return $default(_that.id,_that.sku,_that.barcode,_that.salePrice,_that.color,_that.size,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? sku,  String? barcode, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice,  CartItemVariantColor? color,  CartItemVariantSize? size,  CartItemVariantProduct? product)  $default,) {final _that = this;
switch (_that) {
case _CartItemVariant():
return $default(_that.id,_that.sku,_that.barcode,_that.salePrice,_that.color,_that.size,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? sku,  String? barcode, @JsonKey(name: 'sale_price', fromJson: _priceFromJson)  double? salePrice,  CartItemVariantColor? color,  CartItemVariantSize? size,  CartItemVariantProduct? product)?  $default,) {final _that = this;
switch (_that) {
case _CartItemVariant() when $default != null:
return $default(_that.id,_that.sku,_that.barcode,_that.salePrice,_that.color,_that.size,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemVariant implements CartItemVariant {
  const _CartItemVariant({required this.id, this.sku, this.barcode, @JsonKey(name: 'sale_price', fromJson: _priceFromJson) this.salePrice, this.color, this.size, this.product});
  factory _CartItemVariant.fromJson(Map<String, dynamic> json) => _$CartItemVariantFromJson(json);

@override final  int id;
@override final  String? sku;
@override final  String? barcode;
@override@JsonKey(name: 'sale_price', fromJson: _priceFromJson) final  double? salePrice;
@override final  CartItemVariantColor? color;
@override final  CartItemVariantSize? size;
@override final  CartItemVariantProduct? product;

/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemVariantCopyWith<_CartItemVariant> get copyWith => __$CartItemVariantCopyWithImpl<_CartItemVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemVariantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sku,barcode,salePrice,color,size,product);

@override
String toString() {
  return 'CartItemVariant(id: $id, sku: $sku, barcode: $barcode, salePrice: $salePrice, color: $color, size: $size, product: $product)';
}


}

/// @nodoc
abstract mixin class _$CartItemVariantCopyWith<$Res> implements $CartItemVariantCopyWith<$Res> {
  factory _$CartItemVariantCopyWith(_CartItemVariant value, $Res Function(_CartItemVariant) _then) = __$CartItemVariantCopyWithImpl;
@override @useResult
$Res call({
 int id, String? sku, String? barcode,@JsonKey(name: 'sale_price', fromJson: _priceFromJson) double? salePrice, CartItemVariantColor? color, CartItemVariantSize? size, CartItemVariantProduct? product
});


@override $CartItemVariantColorCopyWith<$Res>? get color;@override $CartItemVariantSizeCopyWith<$Res>? get size;@override $CartItemVariantProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$CartItemVariantCopyWithImpl<$Res>
    implements _$CartItemVariantCopyWith<$Res> {
  __$CartItemVariantCopyWithImpl(this._self, this._then);

  final _CartItemVariant _self;
  final $Res Function(_CartItemVariant) _then;

/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sku = freezed,Object? barcode = freezed,Object? salePrice = freezed,Object? color = freezed,Object? size = freezed,Object? product = freezed,}) {
  return _then(_CartItemVariant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,salePrice: freezed == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as CartItemVariantColor?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as CartItemVariantSize?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartItemVariantProduct?,
  ));
}

/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantColorCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $CartItemVariantColorCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantSizeCopyWith<$Res>? get size {
    if (_self.size == null) {
    return null;
  }

  return $CartItemVariantSizeCopyWith<$Res>(_self.size!, (value) {
    return _then(_self.copyWith(size: value));
  });
}/// Create a copy of CartItemVariant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemVariantProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $CartItemVariantProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on

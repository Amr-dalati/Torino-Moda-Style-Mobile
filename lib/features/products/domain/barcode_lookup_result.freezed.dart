// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_lookup_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BarcodeLookupResult {

 Product get product; ProductVariant? get variant;
/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeLookupResultCopyWith<BarcodeLookupResult> get copyWith => _$BarcodeLookupResultCopyWithImpl<BarcodeLookupResult>(this as BarcodeLookupResult, _$identity);

  /// Serializes this BarcodeLookupResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeLookupResult&&(identical(other.product, product) || other.product == product)&&(identical(other.variant, variant) || other.variant == variant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,variant);

@override
String toString() {
  return 'BarcodeLookupResult(product: $product, variant: $variant)';
}


}

/// @nodoc
abstract mixin class $BarcodeLookupResultCopyWith<$Res>  {
  factory $BarcodeLookupResultCopyWith(BarcodeLookupResult value, $Res Function(BarcodeLookupResult) _then) = _$BarcodeLookupResultCopyWithImpl;
@useResult
$Res call({
 Product product, ProductVariant? variant
});


$ProductCopyWith<$Res> get product;$ProductVariantCopyWith<$Res>? get variant;

}
/// @nodoc
class _$BarcodeLookupResultCopyWithImpl<$Res>
    implements $BarcodeLookupResultCopyWith<$Res> {
  _$BarcodeLookupResultCopyWithImpl(this._self, this._then);

  final BarcodeLookupResult _self;
  final $Res Function(BarcodeLookupResult) _then;

/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? variant = freezed,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,
  ));
}
/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}
}


/// Adds pattern-matching-related methods to [BarcodeLookupResult].
extension BarcodeLookupResultPatterns on BarcodeLookupResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodeLookupResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodeLookupResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodeLookupResult value)  $default,){
final _that = this;
switch (_that) {
case _BarcodeLookupResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodeLookupResult value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodeLookupResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product product,  ProductVariant? variant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodeLookupResult() when $default != null:
return $default(_that.product,_that.variant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product product,  ProductVariant? variant)  $default,) {final _that = this;
switch (_that) {
case _BarcodeLookupResult():
return $default(_that.product,_that.variant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product product,  ProductVariant? variant)?  $default,) {final _that = this;
switch (_that) {
case _BarcodeLookupResult() when $default != null:
return $default(_that.product,_that.variant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BarcodeLookupResult implements BarcodeLookupResult {
  const _BarcodeLookupResult({required this.product, this.variant});
  factory _BarcodeLookupResult.fromJson(Map<String, dynamic> json) => _$BarcodeLookupResultFromJson(json);

@override final  Product product;
@override final  ProductVariant? variant;

/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeLookupResultCopyWith<_BarcodeLookupResult> get copyWith => __$BarcodeLookupResultCopyWithImpl<_BarcodeLookupResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BarcodeLookupResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeLookupResult&&(identical(other.product, product) || other.product == product)&&(identical(other.variant, variant) || other.variant == variant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,variant);

@override
String toString() {
  return 'BarcodeLookupResult(product: $product, variant: $variant)';
}


}

/// @nodoc
abstract mixin class _$BarcodeLookupResultCopyWith<$Res> implements $BarcodeLookupResultCopyWith<$Res> {
  factory _$BarcodeLookupResultCopyWith(_BarcodeLookupResult value, $Res Function(_BarcodeLookupResult) _then) = __$BarcodeLookupResultCopyWithImpl;
@override @useResult
$Res call({
 Product product, ProductVariant? variant
});


@override $ProductCopyWith<$Res> get product;@override $ProductVariantCopyWith<$Res>? get variant;

}
/// @nodoc
class __$BarcodeLookupResultCopyWithImpl<$Res>
    implements _$BarcodeLookupResultCopyWith<$Res> {
  __$BarcodeLookupResultCopyWithImpl(this._self, this._then);

  final _BarcodeLookupResult _self;
  final $Res Function(_BarcodeLookupResult) _then;

/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? variant = freezed,}) {
  return _then(_BarcodeLookupResult(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as ProductVariant?,
  ));
}

/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of BarcodeLookupResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductVariantCopyWith<$Res>? get variant {
    if (_self.variant == null) {
    return null;
  }

  return $ProductVariantCopyWith<$Res>(_self.variant!, (value) {
    return _then(_self.copyWith(variant: value));
  });
}
}

// dart format on

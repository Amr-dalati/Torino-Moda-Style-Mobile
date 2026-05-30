// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutQuote {

 String get subtotal;@JsonKey(name: 'delivery_fee') String get deliveryFee;@JsonKey(name: 'discount_total') String get discountTotal; String get total;
/// Create a copy of CheckoutQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutQuoteCopyWith<CheckoutQuote> get copyWith => _$CheckoutQuoteCopyWithImpl<CheckoutQuote>(this as CheckoutQuote, _$identity);

  /// Serializes this CheckoutQuote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutQuote&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,deliveryFee,discountTotal,total);

@override
String toString() {
  return 'CheckoutQuote(subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total)';
}


}

/// @nodoc
abstract mixin class $CheckoutQuoteCopyWith<$Res>  {
  factory $CheckoutQuoteCopyWith(CheckoutQuote value, $Res Function(CheckoutQuote) _then) = _$CheckoutQuoteCopyWithImpl;
@useResult
$Res call({
 String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total
});




}
/// @nodoc
class _$CheckoutQuoteCopyWithImpl<$Res>
    implements $CheckoutQuoteCopyWith<$Res> {
  _$CheckoutQuoteCopyWithImpl(this._self, this._then);

  final CheckoutQuote _self;
  final $Res Function(CheckoutQuote) _then;

/// Create a copy of CheckoutQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,}) {
  return _then(_self.copyWith(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutQuote].
extension CheckoutQuotePatterns on CheckoutQuote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutQuote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutQuote value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutQuote value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutQuote() when $default != null:
return $default(_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total)  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuote():
return $default(_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuote() when $default != null:
return $default(_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutQuote implements CheckoutQuote {
  const _CheckoutQuote({required this.subtotal, @JsonKey(name: 'delivery_fee') required this.deliveryFee, @JsonKey(name: 'discount_total') required this.discountTotal, required this.total});
  factory _CheckoutQuote.fromJson(Map<String, dynamic> json) => _$CheckoutQuoteFromJson(json);

@override final  String subtotal;
@override@JsonKey(name: 'delivery_fee') final  String deliveryFee;
@override@JsonKey(name: 'discount_total') final  String discountTotal;
@override final  String total;

/// Create a copy of CheckoutQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutQuoteCopyWith<_CheckoutQuote> get copyWith => __$CheckoutQuoteCopyWithImpl<_CheckoutQuote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutQuoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutQuote&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,deliveryFee,discountTotal,total);

@override
String toString() {
  return 'CheckoutQuote(subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CheckoutQuoteCopyWith<$Res> implements $CheckoutQuoteCopyWith<$Res> {
  factory _$CheckoutQuoteCopyWith(_CheckoutQuote value, $Res Function(_CheckoutQuote) _then) = __$CheckoutQuoteCopyWithImpl;
@override @useResult
$Res call({
 String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total
});




}
/// @nodoc
class __$CheckoutQuoteCopyWithImpl<$Res>
    implements _$CheckoutQuoteCopyWith<$Res> {
  __$CheckoutQuoteCopyWithImpl(this._self, this._then);

  final _CheckoutQuote _self;
  final $Res Function(_CheckoutQuote) _then;

/// Create a copy of CheckoutQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,}) {
  return _then(_CheckoutQuote(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

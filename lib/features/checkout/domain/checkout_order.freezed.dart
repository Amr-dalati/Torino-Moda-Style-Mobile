// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutOrder {

 int get id;@JsonKey(name: 'order_number') String get orderNumber;@JsonKey(name: 'order_status') String get orderStatus;@JsonKey(name: 'payment_status') String get paymentStatus; String get subtotal;@JsonKey(name: 'delivery_fee') String get deliveryFee;@JsonKey(name: 'discount_total') String get discountTotal; String get total; String get currency;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutOrderCopyWith<CheckoutOrder> get copyWith => _$CheckoutOrderCopyWithImpl<CheckoutOrder>(this as CheckoutOrder, _$identity);

  /// Serializes this CheckoutOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,orderStatus,paymentStatus,subtotal,deliveryFee,discountTotal,total,currency,createdAt);

@override
String toString() {
  return 'CheckoutOrder(id: $id, orderNumber: $orderNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total, currency: $currency, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CheckoutOrderCopyWith<$Res>  {
  factory $CheckoutOrderCopyWith(CheckoutOrder value, $Res Function(CheckoutOrder) _then) = _$CheckoutOrderCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus, String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total, String currency,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$CheckoutOrderCopyWithImpl<$Res>
    implements $CheckoutOrderCopyWith<$Res> {
  _$CheckoutOrderCopyWithImpl(this._self, this._then);

  final CheckoutOrder _self;
  final $Res Function(CheckoutOrder) _then;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNumber = null,Object? orderStatus = null,Object? paymentStatus = null,Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,Object? currency = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutOrder].
extension CheckoutOrderPatterns on CheckoutOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutOrder value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutOrder value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrder():
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutOrder implements CheckoutOrder {
  const _CheckoutOrder({required this.id, @JsonKey(name: 'order_number') required this.orderNumber, @JsonKey(name: 'order_status') required this.orderStatus, @JsonKey(name: 'payment_status') required this.paymentStatus, required this.subtotal, @JsonKey(name: 'delivery_fee') required this.deliveryFee, @JsonKey(name: 'discount_total') required this.discountTotal, required this.total, required this.currency, @JsonKey(name: 'created_at') this.createdAt});
  factory _CheckoutOrder.fromJson(Map<String, dynamic> json) => _$CheckoutOrderFromJson(json);

@override final  int id;
@override@JsonKey(name: 'order_number') final  String orderNumber;
@override@JsonKey(name: 'order_status') final  String orderStatus;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override final  String subtotal;
@override@JsonKey(name: 'delivery_fee') final  String deliveryFee;
@override@JsonKey(name: 'discount_total') final  String discountTotal;
@override final  String total;
@override final  String currency;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutOrderCopyWith<_CheckoutOrder> get copyWith => __$CheckoutOrderCopyWithImpl<_CheckoutOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,orderStatus,paymentStatus,subtotal,deliveryFee,discountTotal,total,currency,createdAt);

@override
String toString() {
  return 'CheckoutOrder(id: $id, orderNumber: $orderNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total, currency: $currency, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CheckoutOrderCopyWith<$Res> implements $CheckoutOrderCopyWith<$Res> {
  factory _$CheckoutOrderCopyWith(_CheckoutOrder value, $Res Function(_CheckoutOrder) _then) = __$CheckoutOrderCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus, String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total, String currency,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$CheckoutOrderCopyWithImpl<$Res>
    implements _$CheckoutOrderCopyWith<$Res> {
  __$CheckoutOrderCopyWithImpl(this._self, this._then);

  final _CheckoutOrder _self;
  final $Res Function(_CheckoutOrder) _then;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNumber = null,Object? orderStatus = null,Object? paymentStatus = null,Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,Object? currency = null,Object? createdAt = freezed,}) {
  return _then(_CheckoutOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

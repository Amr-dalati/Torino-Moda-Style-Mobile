// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

 int get id;@JsonKey(name: 'order_number') String get orderNumber;@JsonKey(name: 'order_status') String get orderStatus;@JsonKey(name: 'payment_status') String get paymentStatus; String get subtotal;@JsonKey(name: 'delivery_fee') String get deliveryFee;@JsonKey(name: 'discount_total') String get discountTotal; String get total; String get currency; OrderShipping? get shipping; List<OrderItem> get items; List<OrderPayment> get payments;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,orderStatus,paymentStatus,subtotal,deliveryFee,discountTotal,total,currency,shipping,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(payments),createdAt);

@override
String toString() {
  return 'Order(id: $id, orderNumber: $orderNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total, currency: $currency, shipping: $shipping, items: $items, payments: $payments, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus, String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total, String currency, OrderShipping? shipping, List<OrderItem> items, List<OrderPayment> payments,@JsonKey(name: 'created_at') DateTime? createdAt
});


$OrderShippingCopyWith<$Res>? get shipping;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNumber = null,Object? orderStatus = null,Object? paymentStatus = null,Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,Object? currency = null,Object? shipping = freezed,Object? items = null,Object? payments = null,Object? createdAt = freezed,}) {
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
as String,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as OrderShipping?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<OrderPayment>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<$Res>? get shipping {
    if (_self.shipping == null) {
    return null;
  }

  return $OrderShippingCopyWith<$Res>(_self.shipping!, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency,  OrderShipping? shipping,  List<OrderItem> items,  List<OrderPayment> payments, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.shipping,_that.items,_that.payments,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency,  OrderShipping? shipping,  List<OrderItem> items,  List<OrderPayment> payments, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.shipping,_that.items,_that.payments,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus,  String subtotal, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'discount_total')  String discountTotal,  String total,  String currency,  OrderShipping? shipping,  List<OrderItem> items,  List<OrderPayment> payments, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderNumber,_that.orderStatus,_that.paymentStatus,_that.subtotal,_that.deliveryFee,_that.discountTotal,_that.total,_that.currency,_that.shipping,_that.items,_that.payments,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order extends Order {
  const _Order({required this.id, @JsonKey(name: 'order_number') required this.orderNumber, @JsonKey(name: 'order_status') required this.orderStatus, @JsonKey(name: 'payment_status') required this.paymentStatus, required this.subtotal, @JsonKey(name: 'delivery_fee') required this.deliveryFee, @JsonKey(name: 'discount_total') required this.discountTotal, required this.total, required this.currency, this.shipping, final  List<OrderItem> items = const [], final  List<OrderPayment> payments = const [], @JsonKey(name: 'created_at') this.createdAt}): _items = items,_payments = payments,super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  int id;
@override@JsonKey(name: 'order_number') final  String orderNumber;
@override@JsonKey(name: 'order_status') final  String orderStatus;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override final  String subtotal;
@override@JsonKey(name: 'delivery_fee') final  String deliveryFee;
@override@JsonKey(name: 'discount_total') final  String discountTotal;
@override final  String total;
@override final  String currency;
@override final  OrderShipping? shipping;
 final  List<OrderItem> _items;
@override@JsonKey() List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<OrderPayment> _payments;
@override@JsonKey() List<OrderPayment> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._payments, _payments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,orderStatus,paymentStatus,subtotal,deliveryFee,discountTotal,total,currency,shipping,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_payments),createdAt);

@override
String toString() {
  return 'Order(id: $id, orderNumber: $orderNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, subtotal: $subtotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, total: $total, currency: $currency, shipping: $shipping, items: $items, payments: $payments, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus, String subtotal,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'discount_total') String discountTotal, String total, String currency, OrderShipping? shipping, List<OrderItem> items, List<OrderPayment> payments,@JsonKey(name: 'created_at') DateTime? createdAt
});


@override $OrderShippingCopyWith<$Res>? get shipping;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNumber = null,Object? orderStatus = null,Object? paymentStatus = null,Object? subtotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? total = null,Object? currency = null,Object? shipping = freezed,Object? items = null,Object? payments = null,Object? createdAt = freezed,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,shipping: freezed == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as OrderShipping?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<OrderPayment>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<$Res>? get shipping {
    if (_self.shipping == null) {
    return null;
  }

  return $OrderShippingCopyWith<$Res>(_self.shipping!, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderPayment {

 int get id; String? get provider; String? get method; String get amount; String get currency; String get status;@JsonKey(name: 'merchant_reference') String get merchantReference;@JsonKey(name: 'gateway_payment_id') String? get gatewayPaymentId;@JsonKey(name: 'checkout_url') String? get checkoutUrl;@JsonKey(name: 'expires_at') DateTime? get expiresAt;@JsonKey(name: 'paid_at') DateTime? get paidAt;
/// Create a copy of OrderPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPaymentCopyWith<OrderPayment> get copyWith => _$OrderPaymentCopyWithImpl<OrderPayment>(this as OrderPayment, _$identity);

  /// Serializes this OrderPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.method, method) || other.method == method)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference)&&(identical(other.gatewayPaymentId, gatewayPaymentId) || other.gatewayPaymentId == gatewayPaymentId)&&(identical(other.checkoutUrl, checkoutUrl) || other.checkoutUrl == checkoutUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider,method,amount,currency,status,merchantReference,gatewayPaymentId,checkoutUrl,expiresAt,paidAt);

@override
String toString() {
  return 'OrderPayment(id: $id, provider: $provider, method: $method, amount: $amount, currency: $currency, status: $status, merchantReference: $merchantReference, gatewayPaymentId: $gatewayPaymentId, checkoutUrl: $checkoutUrl, expiresAt: $expiresAt, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $OrderPaymentCopyWith<$Res>  {
  factory $OrderPaymentCopyWith(OrderPayment value, $Res Function(OrderPayment) _then) = _$OrderPaymentCopyWithImpl;
@useResult
$Res call({
 int id, String? provider, String? method, String amount, String currency, String status,@JsonKey(name: 'merchant_reference') String merchantReference,@JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,@JsonKey(name: 'checkout_url') String? checkoutUrl,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'paid_at') DateTime? paidAt
});




}
/// @nodoc
class _$OrderPaymentCopyWithImpl<$Res>
    implements $OrderPaymentCopyWith<$Res> {
  _$OrderPaymentCopyWithImpl(this._self, this._then);

  final OrderPayment _self;
  final $Res Function(OrderPayment) _then;

/// Create a copy of OrderPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? provider = freezed,Object? method = freezed,Object? amount = null,Object? currency = null,Object? status = null,Object? merchantReference = null,Object? gatewayPaymentId = freezed,Object? checkoutUrl = freezed,Object? expiresAt = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,gatewayPaymentId: freezed == gatewayPaymentId ? _self.gatewayPaymentId : gatewayPaymentId // ignore: cast_nullable_to_non_nullable
as String?,checkoutUrl: freezed == checkoutUrl ? _self.checkoutUrl : checkoutUrl // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderPayment].
extension OrderPaymentPatterns on OrderPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderPayment value)  $default,){
final _that = this;
switch (_that) {
case _OrderPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderPayment value)?  $default,){
final _that = this;
switch (_that) {
case _OrderPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? provider,  String? method,  String amount,  String currency,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderPayment() when $default != null:
return $default(_that.id,_that.provider,_that.method,_that.amount,_that.currency,_that.status,_that.merchantReference,_that.gatewayPaymentId,_that.checkoutUrl,_that.expiresAt,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? provider,  String? method,  String amount,  String currency,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)  $default,) {final _that = this;
switch (_that) {
case _OrderPayment():
return $default(_that.id,_that.provider,_that.method,_that.amount,_that.currency,_that.status,_that.merchantReference,_that.gatewayPaymentId,_that.checkoutUrl,_that.expiresAt,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? provider,  String? method,  String amount,  String currency,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderPayment() when $default != null:
return $default(_that.id,_that.provider,_that.method,_that.amount,_that.currency,_that.status,_that.merchantReference,_that.gatewayPaymentId,_that.checkoutUrl,_that.expiresAt,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderPayment implements OrderPayment {
  const _OrderPayment({required this.id, this.provider, this.method, required this.amount, required this.currency, required this.status, @JsonKey(name: 'merchant_reference') required this.merchantReference, @JsonKey(name: 'gateway_payment_id') this.gatewayPaymentId, @JsonKey(name: 'checkout_url') this.checkoutUrl, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'paid_at') this.paidAt});
  factory _OrderPayment.fromJson(Map<String, dynamic> json) => _$OrderPaymentFromJson(json);

@override final  int id;
@override final  String? provider;
@override final  String? method;
@override final  String amount;
@override final  String currency;
@override final  String status;
@override@JsonKey(name: 'merchant_reference') final  String merchantReference;
@override@JsonKey(name: 'gateway_payment_id') final  String? gatewayPaymentId;
@override@JsonKey(name: 'checkout_url') final  String? checkoutUrl;
@override@JsonKey(name: 'expires_at') final  DateTime? expiresAt;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;

/// Create a copy of OrderPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderPaymentCopyWith<_OrderPayment> get copyWith => __$OrderPaymentCopyWithImpl<_OrderPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.method, method) || other.method == method)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference)&&(identical(other.gatewayPaymentId, gatewayPaymentId) || other.gatewayPaymentId == gatewayPaymentId)&&(identical(other.checkoutUrl, checkoutUrl) || other.checkoutUrl == checkoutUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider,method,amount,currency,status,merchantReference,gatewayPaymentId,checkoutUrl,expiresAt,paidAt);

@override
String toString() {
  return 'OrderPayment(id: $id, provider: $provider, method: $method, amount: $amount, currency: $currency, status: $status, merchantReference: $merchantReference, gatewayPaymentId: $gatewayPaymentId, checkoutUrl: $checkoutUrl, expiresAt: $expiresAt, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$OrderPaymentCopyWith<$Res> implements $OrderPaymentCopyWith<$Res> {
  factory _$OrderPaymentCopyWith(_OrderPayment value, $Res Function(_OrderPayment) _then) = __$OrderPaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, String? provider, String? method, String amount, String currency, String status,@JsonKey(name: 'merchant_reference') String merchantReference,@JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,@JsonKey(name: 'checkout_url') String? checkoutUrl,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'paid_at') DateTime? paidAt
});




}
/// @nodoc
class __$OrderPaymentCopyWithImpl<$Res>
    implements _$OrderPaymentCopyWith<$Res> {
  __$OrderPaymentCopyWithImpl(this._self, this._then);

  final _OrderPayment _self;
  final $Res Function(_OrderPayment) _then;

/// Create a copy of OrderPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? provider = freezed,Object? method = freezed,Object? amount = null,Object? currency = null,Object? status = null,Object? merchantReference = null,Object? gatewayPaymentId = freezed,Object? checkoutUrl = freezed,Object? expiresAt = freezed,Object? paidAt = freezed,}) {
  return _then(_OrderPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,gatewayPaymentId: freezed == gatewayPaymentId ? _self.gatewayPaymentId : gatewayPaymentId // ignore: cast_nullable_to_non_nullable
as String?,checkoutUrl: freezed == checkoutUrl ? _self.checkoutUrl : checkoutUrl // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

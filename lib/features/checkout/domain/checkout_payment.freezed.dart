// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutPayment {

 int get id; String get status; String get amount; String get currency;@JsonKey(name: 'merchant_reference') String get merchantReference;@JsonKey(name: 'checkout_url') String? get checkoutUrl;@JsonKey(name: 'gateway_payment_id') String? get gatewayPaymentId;@JsonKey(name: 'expires_at') DateTime? get expiresAt;@JsonKey(name: 'paid_at') DateTime? get paidAt;
/// Create a copy of CheckoutPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutPaymentCopyWith<CheckoutPayment> get copyWith => _$CheckoutPaymentCopyWithImpl<CheckoutPayment>(this as CheckoutPayment, _$identity);

  /// Serializes this CheckoutPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference)&&(identical(other.checkoutUrl, checkoutUrl) || other.checkoutUrl == checkoutUrl)&&(identical(other.gatewayPaymentId, gatewayPaymentId) || other.gatewayPaymentId == gatewayPaymentId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,amount,currency,merchantReference,checkoutUrl,gatewayPaymentId,expiresAt,paidAt);

@override
String toString() {
  return 'CheckoutPayment(id: $id, status: $status, amount: $amount, currency: $currency, merchantReference: $merchantReference, checkoutUrl: $checkoutUrl, gatewayPaymentId: $gatewayPaymentId, expiresAt: $expiresAt, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $CheckoutPaymentCopyWith<$Res>  {
  factory $CheckoutPaymentCopyWith(CheckoutPayment value, $Res Function(CheckoutPayment) _then) = _$CheckoutPaymentCopyWithImpl;
@useResult
$Res call({
 int id, String status, String amount, String currency,@JsonKey(name: 'merchant_reference') String merchantReference,@JsonKey(name: 'checkout_url') String? checkoutUrl,@JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'paid_at') DateTime? paidAt
});




}
/// @nodoc
class _$CheckoutPaymentCopyWithImpl<$Res>
    implements $CheckoutPaymentCopyWith<$Res> {
  _$CheckoutPaymentCopyWithImpl(this._self, this._then);

  final CheckoutPayment _self;
  final $Res Function(CheckoutPayment) _then;

/// Create a copy of CheckoutPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? amount = null,Object? currency = null,Object? merchantReference = null,Object? checkoutUrl = freezed,Object? gatewayPaymentId = freezed,Object? expiresAt = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,checkoutUrl: freezed == checkoutUrl ? _self.checkoutUrl : checkoutUrl // ignore: cast_nullable_to_non_nullable
as String?,gatewayPaymentId: freezed == gatewayPaymentId ? _self.gatewayPaymentId : gatewayPaymentId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutPayment].
extension CheckoutPaymentPatterns on CheckoutPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutPayment value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutPayment value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String status,  String amount,  String currency, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutPayment() when $default != null:
return $default(_that.id,_that.status,_that.amount,_that.currency,_that.merchantReference,_that.checkoutUrl,_that.gatewayPaymentId,_that.expiresAt,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String status,  String amount,  String currency, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)  $default,) {final _that = this;
switch (_that) {
case _CheckoutPayment():
return $default(_that.id,_that.status,_that.amount,_that.currency,_that.merchantReference,_that.checkoutUrl,_that.gatewayPaymentId,_that.expiresAt,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String status,  String amount,  String currency, @JsonKey(name: 'merchant_reference')  String merchantReference, @JsonKey(name: 'checkout_url')  String? checkoutUrl, @JsonKey(name: 'gateway_payment_id')  String? gatewayPaymentId, @JsonKey(name: 'expires_at')  DateTime? expiresAt, @JsonKey(name: 'paid_at')  DateTime? paidAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutPayment() when $default != null:
return $default(_that.id,_that.status,_that.amount,_that.currency,_that.merchantReference,_that.checkoutUrl,_that.gatewayPaymentId,_that.expiresAt,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutPayment implements CheckoutPayment {
  const _CheckoutPayment({required this.id, required this.status, required this.amount, required this.currency, @JsonKey(name: 'merchant_reference') required this.merchantReference, @JsonKey(name: 'checkout_url') this.checkoutUrl, @JsonKey(name: 'gateway_payment_id') this.gatewayPaymentId, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'paid_at') this.paidAt});
  factory _CheckoutPayment.fromJson(Map<String, dynamic> json) => _$CheckoutPaymentFromJson(json);

@override final  int id;
@override final  String status;
@override final  String amount;
@override final  String currency;
@override@JsonKey(name: 'merchant_reference') final  String merchantReference;
@override@JsonKey(name: 'checkout_url') final  String? checkoutUrl;
@override@JsonKey(name: 'gateway_payment_id') final  String? gatewayPaymentId;
@override@JsonKey(name: 'expires_at') final  DateTime? expiresAt;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;

/// Create a copy of CheckoutPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutPaymentCopyWith<_CheckoutPayment> get copyWith => __$CheckoutPaymentCopyWithImpl<_CheckoutPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference)&&(identical(other.checkoutUrl, checkoutUrl) || other.checkoutUrl == checkoutUrl)&&(identical(other.gatewayPaymentId, gatewayPaymentId) || other.gatewayPaymentId == gatewayPaymentId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,amount,currency,merchantReference,checkoutUrl,gatewayPaymentId,expiresAt,paidAt);

@override
String toString() {
  return 'CheckoutPayment(id: $id, status: $status, amount: $amount, currency: $currency, merchantReference: $merchantReference, checkoutUrl: $checkoutUrl, gatewayPaymentId: $gatewayPaymentId, expiresAt: $expiresAt, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$CheckoutPaymentCopyWith<$Res> implements $CheckoutPaymentCopyWith<$Res> {
  factory _$CheckoutPaymentCopyWith(_CheckoutPayment value, $Res Function(_CheckoutPayment) _then) = __$CheckoutPaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, String status, String amount, String currency,@JsonKey(name: 'merchant_reference') String merchantReference,@JsonKey(name: 'checkout_url') String? checkoutUrl,@JsonKey(name: 'gateway_payment_id') String? gatewayPaymentId,@JsonKey(name: 'expires_at') DateTime? expiresAt,@JsonKey(name: 'paid_at') DateTime? paidAt
});




}
/// @nodoc
class __$CheckoutPaymentCopyWithImpl<$Res>
    implements _$CheckoutPaymentCopyWith<$Res> {
  __$CheckoutPaymentCopyWithImpl(this._self, this._then);

  final _CheckoutPayment _self;
  final $Res Function(_CheckoutPayment) _then;

/// Create a copy of CheckoutPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? amount = null,Object? currency = null,Object? merchantReference = null,Object? checkoutUrl = freezed,Object? gatewayPaymentId = freezed,Object? expiresAt = freezed,Object? paidAt = freezed,}) {
  return _then(_CheckoutPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,checkoutUrl: freezed == checkoutUrl ? _self.checkoutUrl : checkoutUrl // ignore: cast_nullable_to_non_nullable
as String?,gatewayPaymentId: freezed == gatewayPaymentId ? _self.gatewayPaymentId : gatewayPaymentId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

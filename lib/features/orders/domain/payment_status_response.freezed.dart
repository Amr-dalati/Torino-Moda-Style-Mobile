// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestPayment {

 int get id; String get status;@JsonKey(name: 'merchant_reference') String get merchantReference;
/// Create a copy of LatestPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatestPaymentCopyWith<LatestPayment> get copyWith => _$LatestPaymentCopyWithImpl<LatestPayment>(this as LatestPayment, _$identity);

  /// Serializes this LatestPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatestPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,merchantReference);

@override
String toString() {
  return 'LatestPayment(id: $id, status: $status, merchantReference: $merchantReference)';
}


}

/// @nodoc
abstract mixin class $LatestPaymentCopyWith<$Res>  {
  factory $LatestPaymentCopyWith(LatestPayment value, $Res Function(LatestPayment) _then) = _$LatestPaymentCopyWithImpl;
@useResult
$Res call({
 int id, String status,@JsonKey(name: 'merchant_reference') String merchantReference
});




}
/// @nodoc
class _$LatestPaymentCopyWithImpl<$Res>
    implements $LatestPaymentCopyWith<$Res> {
  _$LatestPaymentCopyWithImpl(this._self, this._then);

  final LatestPayment _self;
  final $Res Function(LatestPayment) _then;

/// Create a copy of LatestPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? merchantReference = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LatestPayment].
extension LatestPaymentPatterns on LatestPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatestPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatestPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatestPayment value)  $default,){
final _that = this;
switch (_that) {
case _LatestPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatestPayment value)?  $default,){
final _that = this;
switch (_that) {
case _LatestPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatestPayment() when $default != null:
return $default(_that.id,_that.status,_that.merchantReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference)  $default,) {final _that = this;
switch (_that) {
case _LatestPayment():
return $default(_that.id,_that.status,_that.merchantReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String status, @JsonKey(name: 'merchant_reference')  String merchantReference)?  $default,) {final _that = this;
switch (_that) {
case _LatestPayment() when $default != null:
return $default(_that.id,_that.status,_that.merchantReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatestPayment implements LatestPayment {
  const _LatestPayment({required this.id, required this.status, @JsonKey(name: 'merchant_reference') required this.merchantReference});
  factory _LatestPayment.fromJson(Map<String, dynamic> json) => _$LatestPaymentFromJson(json);

@override final  int id;
@override final  String status;
@override@JsonKey(name: 'merchant_reference') final  String merchantReference;

/// Create a copy of LatestPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatestPaymentCopyWith<_LatestPayment> get copyWith => __$LatestPaymentCopyWithImpl<_LatestPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatestPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatestPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantReference, merchantReference) || other.merchantReference == merchantReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,merchantReference);

@override
String toString() {
  return 'LatestPayment(id: $id, status: $status, merchantReference: $merchantReference)';
}


}

/// @nodoc
abstract mixin class _$LatestPaymentCopyWith<$Res> implements $LatestPaymentCopyWith<$Res> {
  factory _$LatestPaymentCopyWith(_LatestPayment value, $Res Function(_LatestPayment) _then) = __$LatestPaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, String status,@JsonKey(name: 'merchant_reference') String merchantReference
});




}
/// @nodoc
class __$LatestPaymentCopyWithImpl<$Res>
    implements _$LatestPaymentCopyWith<$Res> {
  __$LatestPaymentCopyWithImpl(this._self, this._then);

  final _LatestPayment _self;
  final $Res Function(_LatestPayment) _then;

/// Create a copy of LatestPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? merchantReference = null,}) {
  return _then(_LatestPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,merchantReference: null == merchantReference ? _self.merchantReference : merchantReference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PaymentStatusResponse {

@JsonKey(name: 'order_status') String get orderStatus;@JsonKey(name: 'payment_status') String get paymentStatus;@JsonKey(name: 'latest_payment') LatestPayment? get latestPayment;
/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusResponseCopyWith<PaymentStatusResponse> get copyWith => _$PaymentStatusResponseCopyWithImpl<PaymentStatusResponse>(this as PaymentStatusResponse, _$identity);

  /// Serializes this PaymentStatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusResponse&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.latestPayment, latestPayment) || other.latestPayment == latestPayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderStatus,paymentStatus,latestPayment);

@override
String toString() {
  return 'PaymentStatusResponse(orderStatus: $orderStatus, paymentStatus: $paymentStatus, latestPayment: $latestPayment)';
}


}

/// @nodoc
abstract mixin class $PaymentStatusResponseCopyWith<$Res>  {
  factory $PaymentStatusResponseCopyWith(PaymentStatusResponse value, $Res Function(PaymentStatusResponse) _then) = _$PaymentStatusResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'latest_payment') LatestPayment? latestPayment
});


$LatestPaymentCopyWith<$Res>? get latestPayment;

}
/// @nodoc
class _$PaymentStatusResponseCopyWithImpl<$Res>
    implements $PaymentStatusResponseCopyWith<$Res> {
  _$PaymentStatusResponseCopyWithImpl(this._self, this._then);

  final PaymentStatusResponse _self;
  final $Res Function(PaymentStatusResponse) _then;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderStatus = null,Object? paymentStatus = null,Object? latestPayment = freezed,}) {
  return _then(_self.copyWith(
orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,latestPayment: freezed == latestPayment ? _self.latestPayment : latestPayment // ignore: cast_nullable_to_non_nullable
as LatestPayment?,
  ));
}
/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatestPaymentCopyWith<$Res>? get latestPayment {
    if (_self.latestPayment == null) {
    return null;
  }

  return $LatestPaymentCopyWith<$Res>(_self.latestPayment!, (value) {
    return _then(_self.copyWith(latestPayment: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentStatusResponse].
extension PaymentStatusResponsePatterns on PaymentStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'latest_payment')  LatestPayment? latestPayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusResponse() when $default != null:
return $default(_that.orderStatus,_that.paymentStatus,_that.latestPayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'latest_payment')  LatestPayment? latestPayment)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResponse():
return $default(_that.orderStatus,_that.paymentStatus,_that.latestPayment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order_status')  String orderStatus, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'latest_payment')  LatestPayment? latestPayment)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResponse() when $default != null:
return $default(_that.orderStatus,_that.paymentStatus,_that.latestPayment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusResponse implements PaymentStatusResponse {
  const _PaymentStatusResponse({@JsonKey(name: 'order_status') required this.orderStatus, @JsonKey(name: 'payment_status') required this.paymentStatus, @JsonKey(name: 'latest_payment') this.latestPayment});
  factory _PaymentStatusResponse.fromJson(Map<String, dynamic> json) => _$PaymentStatusResponseFromJson(json);

@override@JsonKey(name: 'order_status') final  String orderStatus;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override@JsonKey(name: 'latest_payment') final  LatestPayment? latestPayment;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusResponseCopyWith<_PaymentStatusResponse> get copyWith => __$PaymentStatusResponseCopyWithImpl<_PaymentStatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusResponse&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.latestPayment, latestPayment) || other.latestPayment == latestPayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderStatus,paymentStatus,latestPayment);

@override
String toString() {
  return 'PaymentStatusResponse(orderStatus: $orderStatus, paymentStatus: $paymentStatus, latestPayment: $latestPayment)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusResponseCopyWith<$Res> implements $PaymentStatusResponseCopyWith<$Res> {
  factory _$PaymentStatusResponseCopyWith(_PaymentStatusResponse value, $Res Function(_PaymentStatusResponse) _then) = __$PaymentStatusResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order_status') String orderStatus,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'latest_payment') LatestPayment? latestPayment
});


@override $LatestPaymentCopyWith<$Res>? get latestPayment;

}
/// @nodoc
class __$PaymentStatusResponseCopyWithImpl<$Res>
    implements _$PaymentStatusResponseCopyWith<$Res> {
  __$PaymentStatusResponseCopyWithImpl(this._self, this._then);

  final _PaymentStatusResponse _self;
  final $Res Function(_PaymentStatusResponse) _then;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderStatus = null,Object? paymentStatus = null,Object? latestPayment = freezed,}) {
  return _then(_PaymentStatusResponse(
orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,latestPayment: freezed == latestPayment ? _self.latestPayment : latestPayment // ignore: cast_nullable_to_non_nullable
as LatestPayment?,
  ));
}

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatestPaymentCopyWith<$Res>? get latestPayment {
    if (_self.latestPayment == null) {
    return null;
  }

  return $LatestPaymentCopyWith<$Res>(_self.latestPayment!, (value) {
    return _then(_self.copyWith(latestPayment: value));
  });
}
}

// dart format on

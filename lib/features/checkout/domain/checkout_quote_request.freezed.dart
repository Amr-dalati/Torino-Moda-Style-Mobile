// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_quote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutQuoteRequest {

@JsonKey(name: 'address_id') int get addressId;
/// Create a copy of CheckoutQuoteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutQuoteRequestCopyWith<CheckoutQuoteRequest> get copyWith => _$CheckoutQuoteRequestCopyWithImpl<CheckoutQuoteRequest>(this as CheckoutQuoteRequest, _$identity);

  /// Serializes this CheckoutQuoteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutQuoteRequest&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'CheckoutQuoteRequest(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class $CheckoutQuoteRequestCopyWith<$Res>  {
  factory $CheckoutQuoteRequestCopyWith(CheckoutQuoteRequest value, $Res Function(CheckoutQuoteRequest) _then) = _$CheckoutQuoteRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_id') int addressId
});




}
/// @nodoc
class _$CheckoutQuoteRequestCopyWithImpl<$Res>
    implements $CheckoutQuoteRequestCopyWith<$Res> {
  _$CheckoutQuoteRequestCopyWithImpl(this._self, this._then);

  final CheckoutQuoteRequest _self;
  final $Res Function(CheckoutQuoteRequest) _then;

/// Create a copy of CheckoutQuoteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressId = null,}) {
  return _then(_self.copyWith(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutQuoteRequest].
extension CheckoutQuoteRequestPatterns on CheckoutQuoteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutQuoteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutQuoteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutQuoteRequest value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuoteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutQuoteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuoteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  int addressId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutQuoteRequest() when $default != null:
return $default(_that.addressId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  int addressId)  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuoteRequest():
return $default(_that.addressId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_id')  int addressId)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuoteRequest() when $default != null:
return $default(_that.addressId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutQuoteRequest implements CheckoutQuoteRequest {
  const _CheckoutQuoteRequest({@JsonKey(name: 'address_id') required this.addressId});
  factory _CheckoutQuoteRequest.fromJson(Map<String, dynamic> json) => _$CheckoutQuoteRequestFromJson(json);

@override@JsonKey(name: 'address_id') final  int addressId;

/// Create a copy of CheckoutQuoteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutQuoteRequestCopyWith<_CheckoutQuoteRequest> get copyWith => __$CheckoutQuoteRequestCopyWithImpl<_CheckoutQuoteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutQuoteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutQuoteRequest&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'CheckoutQuoteRequest(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class _$CheckoutQuoteRequestCopyWith<$Res> implements $CheckoutQuoteRequestCopyWith<$Res> {
  factory _$CheckoutQuoteRequestCopyWith(_CheckoutQuoteRequest value, $Res Function(_CheckoutQuoteRequest) _then) = __$CheckoutQuoteRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_id') int addressId
});




}
/// @nodoc
class __$CheckoutQuoteRequestCopyWithImpl<$Res>
    implements _$CheckoutQuoteRequestCopyWith<$Res> {
  __$CheckoutQuoteRequestCopyWithImpl(this._self, this._then);

  final _CheckoutQuoteRequest _self;
  final $Res Function(_CheckoutQuoteRequest) _then;

/// Create a copy of CheckoutQuoteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressId = null,}) {
  return _then(_CheckoutQuoteRequest(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

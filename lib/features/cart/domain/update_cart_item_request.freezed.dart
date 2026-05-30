// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCartItemRequest {

 int get quantity;
/// Create a copy of UpdateCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCartItemRequestCopyWith<UpdateCartItemRequest> get copyWith => _$UpdateCartItemRequestCopyWithImpl<UpdateCartItemRequest>(this as UpdateCartItemRequest, _$identity);

  /// Serializes this UpdateCartItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCartItemRequest&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'UpdateCartItemRequest(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UpdateCartItemRequestCopyWith<$Res>  {
  factory $UpdateCartItemRequestCopyWith(UpdateCartItemRequest value, $Res Function(UpdateCartItemRequest) _then) = _$UpdateCartItemRequestCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$UpdateCartItemRequestCopyWithImpl<$Res>
    implements $UpdateCartItemRequestCopyWith<$Res> {
  _$UpdateCartItemRequestCopyWithImpl(this._self, this._then);

  final UpdateCartItemRequest _self;
  final $Res Function(UpdateCartItemRequest) _then;

/// Create a copy of UpdateCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,}) {
  return _then(_self.copyWith(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCartItemRequest].
extension UpdateCartItemRequestPatterns on UpdateCartItemRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCartItemRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCartItemRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCartItemRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCartItemRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCartItemRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCartItemRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCartItemRequest() when $default != null:
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int quantity)  $default,) {final _that = this;
switch (_that) {
case _UpdateCartItemRequest():
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int quantity)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCartItemRequest() when $default != null:
return $default(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateCartItemRequest implements UpdateCartItemRequest {
  const _UpdateCartItemRequest({required this.quantity});
  factory _UpdateCartItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateCartItemRequestFromJson(json);

@override final  int quantity;

/// Create a copy of UpdateCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCartItemRequestCopyWith<_UpdateCartItemRequest> get copyWith => __$UpdateCartItemRequestCopyWithImpl<_UpdateCartItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateCartItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCartItemRequest&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'UpdateCartItemRequest(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UpdateCartItemRequestCopyWith<$Res> implements $UpdateCartItemRequestCopyWith<$Res> {
  factory _$UpdateCartItemRequestCopyWith(_UpdateCartItemRequest value, $Res Function(_UpdateCartItemRequest) _then) = __$UpdateCartItemRequestCopyWithImpl;
@override @useResult
$Res call({
 int quantity
});




}
/// @nodoc
class __$UpdateCartItemRequestCopyWithImpl<$Res>
    implements _$UpdateCartItemRequestCopyWith<$Res> {
  __$UpdateCartItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateCartItemRequest _self;
  final $Res Function(_UpdateCartItemRequest) _then;

/// Create a copy of UpdateCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(_UpdateCartItemRequest(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

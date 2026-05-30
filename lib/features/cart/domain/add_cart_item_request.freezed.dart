// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cart_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCartItemRequest {

@JsonKey(name: 'product_variant_id') int get productVariantId; int get quantity;
/// Create a copy of AddCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCartItemRequestCopyWith<AddCartItemRequest> get copyWith => _$AddCartItemRequestCopyWithImpl<AddCartItemRequest>(this as AddCartItemRequest, _$identity);

  /// Serializes this AddCartItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCartItemRequest&&(identical(other.productVariantId, productVariantId) || other.productVariantId == productVariantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productVariantId,quantity);

@override
String toString() {
  return 'AddCartItemRequest(productVariantId: $productVariantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $AddCartItemRequestCopyWith<$Res>  {
  factory $AddCartItemRequestCopyWith(AddCartItemRequest value, $Res Function(AddCartItemRequest) _then) = _$AddCartItemRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_variant_id') int productVariantId, int quantity
});




}
/// @nodoc
class _$AddCartItemRequestCopyWithImpl<$Res>
    implements $AddCartItemRequestCopyWith<$Res> {
  _$AddCartItemRequestCopyWithImpl(this._self, this._then);

  final AddCartItemRequest _self;
  final $Res Function(AddCartItemRequest) _then;

/// Create a copy of AddCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productVariantId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
productVariantId: null == productVariantId ? _self.productVariantId : productVariantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddCartItemRequest].
extension AddCartItemRequestPatterns on AddCartItemRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCartItemRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCartItemRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCartItemRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddCartItemRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCartItemRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddCartItemRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCartItemRequest() when $default != null:
return $default(_that.productVariantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _AddCartItemRequest():
return $default(_that.productVariantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_variant_id')  int productVariantId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _AddCartItemRequest() when $default != null:
return $default(_that.productVariantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddCartItemRequest implements AddCartItemRequest {
  const _AddCartItemRequest({@JsonKey(name: 'product_variant_id') required this.productVariantId, required this.quantity});
  factory _AddCartItemRequest.fromJson(Map<String, dynamic> json) => _$AddCartItemRequestFromJson(json);

@override@JsonKey(name: 'product_variant_id') final  int productVariantId;
@override final  int quantity;

/// Create a copy of AddCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCartItemRequestCopyWith<_AddCartItemRequest> get copyWith => __$AddCartItemRequestCopyWithImpl<_AddCartItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddCartItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCartItemRequest&&(identical(other.productVariantId, productVariantId) || other.productVariantId == productVariantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productVariantId,quantity);

@override
String toString() {
  return 'AddCartItemRequest(productVariantId: $productVariantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AddCartItemRequestCopyWith<$Res> implements $AddCartItemRequestCopyWith<$Res> {
  factory _$AddCartItemRequestCopyWith(_AddCartItemRequest value, $Res Function(_AddCartItemRequest) _then) = __$AddCartItemRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_variant_id') int productVariantId, int quantity
});




}
/// @nodoc
class __$AddCartItemRequestCopyWithImpl<$Res>
    implements _$AddCartItemRequestCopyWith<$Res> {
  __$AddCartItemRequestCopyWithImpl(this._self, this._then);

  final _AddCartItemRequest _self;
  final $Res Function(_AddCartItemRequest) _then;

/// Create a copy of AddCartItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productVariantId = null,Object? quantity = null,}) {
  return _then(_AddCartItemRequest(
productVariantId: null == productVariantId ? _self.productVariantId : productVariantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

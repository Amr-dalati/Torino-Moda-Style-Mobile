// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_shipping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderShipping {

 String? get label;@JsonKey(name: 'recipient_name') String? get recipientName;@JsonKey(name: 'recipient_phone') String? get recipientPhone;@JsonKey(name: 'address_line1') String? get addressLine1;@JsonKey(name: 'address_line2') String? get addressLine2; String? get city;@JsonKey(name: 'area_name') String? get areaName;@JsonKey(name: 'postal_code') String? get postalCode;@JsonKey(name: 'delivery_region_code') String? get deliveryRegionCode;@JsonKey(name: 'delivery_area_code') String? get deliveryAreaCode;
/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<OrderShipping> get copyWith => _$OrderShippingCopyWithImpl<OrderShipping>(this as OrderShipping, _$identity);

  /// Serializes this OrderShipping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderShipping&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.deliveryRegionCode, deliveryRegionCode) || other.deliveryRegionCode == deliveryRegionCode)&&(identical(other.deliveryAreaCode, deliveryAreaCode) || other.deliveryAreaCode == deliveryAreaCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,recipientPhone,addressLine1,addressLine2,city,areaName,postalCode,deliveryRegionCode,deliveryAreaCode);

@override
String toString() {
  return 'OrderShipping(label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, deliveryRegionCode: $deliveryRegionCode, deliveryAreaCode: $deliveryAreaCode)';
}


}

/// @nodoc
abstract mixin class $OrderShippingCopyWith<$Res>  {
  factory $OrderShippingCopyWith(OrderShipping value, $Res Function(OrderShipping) _then) = _$OrderShippingCopyWithImpl;
@useResult
$Res call({
 String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'delivery_region_code') String? deliveryRegionCode,@JsonKey(name: 'delivery_area_code') String? deliveryAreaCode
});




}
/// @nodoc
class _$OrderShippingCopyWithImpl<$Res>
    implements $OrderShippingCopyWith<$Res> {
  _$OrderShippingCopyWithImpl(this._self, this._then);

  final OrderShipping _self;
  final $Res Function(OrderShipping) _then;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? deliveryRegionCode = freezed,Object? deliveryAreaCode = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,deliveryRegionCode: freezed == deliveryRegionCode ? _self.deliveryRegionCode : deliveryRegionCode // ignore: cast_nullable_to_non_nullable
as String?,deliveryAreaCode: freezed == deliveryAreaCode ? _self.deliveryAreaCode : deliveryAreaCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderShipping].
extension OrderShippingPatterns on OrderShipping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderShipping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderShipping value)  $default,){
final _that = this;
switch (_that) {
case _OrderShipping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderShipping value)?  $default,){
final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'delivery_region_code')  String? deliveryRegionCode, @JsonKey(name: 'delivery_area_code')  String? deliveryAreaCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
return $default(_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.deliveryRegionCode,_that.deliveryAreaCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'delivery_region_code')  String? deliveryRegionCode, @JsonKey(name: 'delivery_area_code')  String? deliveryAreaCode)  $default,) {final _that = this;
switch (_that) {
case _OrderShipping():
return $default(_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.deliveryRegionCode,_that.deliveryAreaCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'delivery_region_code')  String? deliveryRegionCode, @JsonKey(name: 'delivery_area_code')  String? deliveryAreaCode)?  $default,) {final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
return $default(_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.deliveryRegionCode,_that.deliveryAreaCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderShipping extends OrderShipping {
  const _OrderShipping({this.label, @JsonKey(name: 'recipient_name') this.recipientName, @JsonKey(name: 'recipient_phone') this.recipientPhone, @JsonKey(name: 'address_line1') this.addressLine1, @JsonKey(name: 'address_line2') this.addressLine2, this.city, @JsonKey(name: 'area_name') this.areaName, @JsonKey(name: 'postal_code') this.postalCode, @JsonKey(name: 'delivery_region_code') this.deliveryRegionCode, @JsonKey(name: 'delivery_area_code') this.deliveryAreaCode}): super._();
  factory _OrderShipping.fromJson(Map<String, dynamic> json) => _$OrderShippingFromJson(json);

@override final  String? label;
@override@JsonKey(name: 'recipient_name') final  String? recipientName;
@override@JsonKey(name: 'recipient_phone') final  String? recipientPhone;
@override@JsonKey(name: 'address_line1') final  String? addressLine1;
@override@JsonKey(name: 'address_line2') final  String? addressLine2;
@override final  String? city;
@override@JsonKey(name: 'area_name') final  String? areaName;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override@JsonKey(name: 'delivery_region_code') final  String? deliveryRegionCode;
@override@JsonKey(name: 'delivery_area_code') final  String? deliveryAreaCode;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderShippingCopyWith<_OrderShipping> get copyWith => __$OrderShippingCopyWithImpl<_OrderShipping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderShippingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderShipping&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.deliveryRegionCode, deliveryRegionCode) || other.deliveryRegionCode == deliveryRegionCode)&&(identical(other.deliveryAreaCode, deliveryAreaCode) || other.deliveryAreaCode == deliveryAreaCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,recipientPhone,addressLine1,addressLine2,city,areaName,postalCode,deliveryRegionCode,deliveryAreaCode);

@override
String toString() {
  return 'OrderShipping(label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, deliveryRegionCode: $deliveryRegionCode, deliveryAreaCode: $deliveryAreaCode)';
}


}

/// @nodoc
abstract mixin class _$OrderShippingCopyWith<$Res> implements $OrderShippingCopyWith<$Res> {
  factory _$OrderShippingCopyWith(_OrderShipping value, $Res Function(_OrderShipping) _then) = __$OrderShippingCopyWithImpl;
@override @useResult
$Res call({
 String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'delivery_region_code') String? deliveryRegionCode,@JsonKey(name: 'delivery_area_code') String? deliveryAreaCode
});




}
/// @nodoc
class __$OrderShippingCopyWithImpl<$Res>
    implements _$OrderShippingCopyWith<$Res> {
  __$OrderShippingCopyWithImpl(this._self, this._then);

  final _OrderShipping _self;
  final $Res Function(_OrderShipping) _then;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? deliveryRegionCode = freezed,Object? deliveryAreaCode = freezed,}) {
  return _then(_OrderShipping(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,deliveryRegionCode: freezed == deliveryRegionCode ? _self.deliveryRegionCode : deliveryRegionCode // ignore: cast_nullable_to_non_nullable
as String?,deliveryAreaCode: freezed == deliveryAreaCode ? _self.deliveryAreaCode : deliveryAreaCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

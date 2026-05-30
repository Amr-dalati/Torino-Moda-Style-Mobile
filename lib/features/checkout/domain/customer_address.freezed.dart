// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerAddress {

 int get id; String? get label;@JsonKey(name: 'recipient_name') String? get recipientName;@JsonKey(name: 'recipient_phone') String? get recipientPhone;@JsonKey(name: 'address_line1') String get addressLine1;@JsonKey(name: 'address_line2') String? get addressLine2; String? get city;@JsonKey(name: 'area_name') String? get areaName;@JsonKey(name: 'postal_code') String? get postalCode;@JsonKey(name: 'is_default') bool get isDefault;@JsonKey(name: 'delivery_area') AddressDeliveryArea? get deliveryArea;
/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAddressCopyWith<CustomerAddress> get copyWith => _$CustomerAddressCopyWithImpl<CustomerAddress>(this as CustomerAddress, _$identity);

  /// Serializes this CustomerAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.deliveryArea, deliveryArea) || other.deliveryArea == deliveryArea));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,recipientPhone,addressLine1,addressLine2,city,areaName,postalCode,isDefault,deliveryArea);

@override
String toString() {
  return 'CustomerAddress(id: $id, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, isDefault: $isDefault, deliveryArea: $deliveryArea)';
}


}

/// @nodoc
abstract mixin class $CustomerAddressCopyWith<$Res>  {
  factory $CustomerAddressCopyWith(CustomerAddress value, $Res Function(CustomerAddress) _then) = _$CustomerAddressCopyWithImpl;
@useResult
$Res call({
 int id, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'address_line1') String addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'delivery_area') AddressDeliveryArea? deliveryArea
});


$AddressDeliveryAreaCopyWith<$Res>? get deliveryArea;

}
/// @nodoc
class _$CustomerAddressCopyWithImpl<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  _$CustomerAddressCopyWithImpl(this._self, this._then);

  final CustomerAddress _self;
  final $Res Function(CustomerAddress) _then;

/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? addressLine1 = null,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? deliveryArea = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,deliveryArea: freezed == deliveryArea ? _self.deliveryArea : deliveryArea // ignore: cast_nullable_to_non_nullable
as AddressDeliveryArea?,
  ));
}
/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDeliveryAreaCopyWith<$Res>? get deliveryArea {
    if (_self.deliveryArea == null) {
    return null;
  }

  return $AddressDeliveryAreaCopyWith<$Res>(_self.deliveryArea!, (value) {
    return _then(_self.copyWith(deliveryArea: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerAddress].
extension CustomerAddressPatterns on CustomerAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAddress value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAddress value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'delivery_area')  AddressDeliveryArea? deliveryArea)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.isDefault,_that.deliveryArea);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'delivery_area')  AddressDeliveryArea? deliveryArea)  $default,) {final _that = this;
switch (_that) {
case _CustomerAddress():
return $default(_that.id,_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.isDefault,_that.deliveryArea);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'delivery_area')  AddressDeliveryArea? deliveryArea)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.recipientPhone,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.isDefault,_that.deliveryArea);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerAddress extends CustomerAddress {
  const _CustomerAddress({required this.id, this.label, @JsonKey(name: 'recipient_name') this.recipientName, @JsonKey(name: 'recipient_phone') this.recipientPhone, @JsonKey(name: 'address_line1') required this.addressLine1, @JsonKey(name: 'address_line2') this.addressLine2, this.city, @JsonKey(name: 'area_name') this.areaName, @JsonKey(name: 'postal_code') this.postalCode, @JsonKey(name: 'is_default') this.isDefault = false, @JsonKey(name: 'delivery_area') this.deliveryArea}): super._();
  factory _CustomerAddress.fromJson(Map<String, dynamic> json) => _$CustomerAddressFromJson(json);

@override final  int id;
@override final  String? label;
@override@JsonKey(name: 'recipient_name') final  String? recipientName;
@override@JsonKey(name: 'recipient_phone') final  String? recipientPhone;
@override@JsonKey(name: 'address_line1') final  String addressLine1;
@override@JsonKey(name: 'address_line2') final  String? addressLine2;
@override final  String? city;
@override@JsonKey(name: 'area_name') final  String? areaName;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override@JsonKey(name: 'is_default') final  bool isDefault;
@override@JsonKey(name: 'delivery_area') final  AddressDeliveryArea? deliveryArea;

/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAddressCopyWith<_CustomerAddress> get copyWith => __$CustomerAddressCopyWithImpl<_CustomerAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.deliveryArea, deliveryArea) || other.deliveryArea == deliveryArea));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,recipientPhone,addressLine1,addressLine2,city,areaName,postalCode,isDefault,deliveryArea);

@override
String toString() {
  return 'CustomerAddress(id: $id, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, isDefault: $isDefault, deliveryArea: $deliveryArea)';
}


}

/// @nodoc
abstract mixin class _$CustomerAddressCopyWith<$Res> implements $CustomerAddressCopyWith<$Res> {
  factory _$CustomerAddressCopyWith(_CustomerAddress value, $Res Function(_CustomerAddress) _then) = __$CustomerAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'address_line1') String addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'delivery_area') AddressDeliveryArea? deliveryArea
});


@override $AddressDeliveryAreaCopyWith<$Res>? get deliveryArea;

}
/// @nodoc
class __$CustomerAddressCopyWithImpl<$Res>
    implements _$CustomerAddressCopyWith<$Res> {
  __$CustomerAddressCopyWithImpl(this._self, this._then);

  final _CustomerAddress _self;
  final $Res Function(_CustomerAddress) _then;

/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? addressLine1 = null,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? deliveryArea = freezed,}) {
  return _then(_CustomerAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,deliveryArea: freezed == deliveryArea ? _self.deliveryArea : deliveryArea // ignore: cast_nullable_to_non_nullable
as AddressDeliveryArea?,
  ));
}

/// Create a copy of CustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDeliveryAreaCopyWith<$Res>? get deliveryArea {
    if (_self.deliveryArea == null) {
    return null;
  }

  return $AddressDeliveryAreaCopyWith<$Res>(_self.deliveryArea!, (value) {
    return _then(_self.copyWith(deliveryArea: value));
  });
}
}

// dart format on

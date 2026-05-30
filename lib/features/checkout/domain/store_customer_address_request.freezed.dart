// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_customer_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreCustomerAddressRequest {

@JsonKey(name: 'delivery_area_id') int get deliveryAreaId;@JsonKey(name: 'address_line1') String get addressLine1;@JsonKey(name: 'address_line2') String? get addressLine2; String? get city;@JsonKey(name: 'area_name') String? get areaName;@JsonKey(name: 'postal_code') String? get postalCode; String? get label;@JsonKey(name: 'recipient_name') String? get recipientName;@JsonKey(name: 'recipient_phone') String? get recipientPhone;@JsonKey(name: 'is_default') bool get isDefault;
/// Create a copy of StoreCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCustomerAddressRequestCopyWith<StoreCustomerAddressRequest> get copyWith => _$StoreCustomerAddressRequestCopyWithImpl<StoreCustomerAddressRequest>(this as StoreCustomerAddressRequest, _$identity);

  /// Serializes this StoreCustomerAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCustomerAddressRequest&&(identical(other.deliveryAreaId, deliveryAreaId) || other.deliveryAreaId == deliveryAreaId)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAreaId,addressLine1,addressLine2,city,areaName,postalCode,label,recipientName,recipientPhone,isDefault);

@override
String toString() {
  return 'StoreCustomerAddressRequest(deliveryAreaId: $deliveryAreaId, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $StoreCustomerAddressRequestCopyWith<$Res>  {
  factory $StoreCustomerAddressRequestCopyWith(StoreCustomerAddressRequest value, $Res Function(StoreCustomerAddressRequest) _then) = _$StoreCustomerAddressRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'delivery_area_id') int deliveryAreaId,@JsonKey(name: 'address_line1') String addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class _$StoreCustomerAddressRequestCopyWithImpl<$Res>
    implements $StoreCustomerAddressRequestCopyWith<$Res> {
  _$StoreCustomerAddressRequestCopyWithImpl(this._self, this._then);

  final StoreCustomerAddressRequest _self;
  final $Res Function(StoreCustomerAddressRequest) _then;

/// Create a copy of StoreCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryAreaId = null,Object? addressLine1 = null,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? isDefault = null,}) {
  return _then(_self.copyWith(
deliveryAreaId: null == deliveryAreaId ? _self.deliveryAreaId : deliveryAreaId // ignore: cast_nullable_to_non_nullable
as int,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCustomerAddressRequest].
extension StoreCustomerAddressRequestPatterns on StoreCustomerAddressRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCustomerAddressRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCustomerAddressRequest value)  $default,){
final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCustomerAddressRequest value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'delivery_area_id')  int deliveryAreaId, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest() when $default != null:
return $default(_that.deliveryAreaId,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.label,_that.recipientName,_that.recipientPhone,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'delivery_area_id')  int deliveryAreaId, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest():
return $default(_that.deliveryAreaId,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.label,_that.recipientName,_that.recipientPhone,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'delivery_area_id')  int deliveryAreaId, @JsonKey(name: 'address_line1')  String addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _StoreCustomerAddressRequest() when $default != null:
return $default(_that.deliveryAreaId,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.label,_that.recipientName,_that.recipientPhone,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCustomerAddressRequest implements StoreCustomerAddressRequest {
  const _StoreCustomerAddressRequest({@JsonKey(name: 'delivery_area_id') required this.deliveryAreaId, @JsonKey(name: 'address_line1') required this.addressLine1, @JsonKey(name: 'address_line2') this.addressLine2, this.city, @JsonKey(name: 'area_name') this.areaName, @JsonKey(name: 'postal_code') this.postalCode, this.label, @JsonKey(name: 'recipient_name') this.recipientName, @JsonKey(name: 'recipient_phone') this.recipientPhone, @JsonKey(name: 'is_default') this.isDefault = false});
  factory _StoreCustomerAddressRequest.fromJson(Map<String, dynamic> json) => _$StoreCustomerAddressRequestFromJson(json);

@override@JsonKey(name: 'delivery_area_id') final  int deliveryAreaId;
@override@JsonKey(name: 'address_line1') final  String addressLine1;
@override@JsonKey(name: 'address_line2') final  String? addressLine2;
@override final  String? city;
@override@JsonKey(name: 'area_name') final  String? areaName;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override final  String? label;
@override@JsonKey(name: 'recipient_name') final  String? recipientName;
@override@JsonKey(name: 'recipient_phone') final  String? recipientPhone;
@override@JsonKey(name: 'is_default') final  bool isDefault;

/// Create a copy of StoreCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCustomerAddressRequestCopyWith<_StoreCustomerAddressRequest> get copyWith => __$StoreCustomerAddressRequestCopyWithImpl<_StoreCustomerAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCustomerAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCustomerAddressRequest&&(identical(other.deliveryAreaId, deliveryAreaId) || other.deliveryAreaId == deliveryAreaId)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAreaId,addressLine1,addressLine2,city,areaName,postalCode,label,recipientName,recipientPhone,isDefault);

@override
String toString() {
  return 'StoreCustomerAddressRequest(deliveryAreaId: $deliveryAreaId, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$StoreCustomerAddressRequestCopyWith<$Res> implements $StoreCustomerAddressRequestCopyWith<$Res> {
  factory _$StoreCustomerAddressRequestCopyWith(_StoreCustomerAddressRequest value, $Res Function(_StoreCustomerAddressRequest) _then) = __$StoreCustomerAddressRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'delivery_area_id') int deliveryAreaId,@JsonKey(name: 'address_line1') String addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class __$StoreCustomerAddressRequestCopyWithImpl<$Res>
    implements _$StoreCustomerAddressRequestCopyWith<$Res> {
  __$StoreCustomerAddressRequestCopyWithImpl(this._self, this._then);

  final _StoreCustomerAddressRequest _self;
  final $Res Function(_StoreCustomerAddressRequest) _then;

/// Create a copy of StoreCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryAreaId = null,Object? addressLine1 = null,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? isDefault = null,}) {
  return _then(_StoreCustomerAddressRequest(
deliveryAreaId: null == deliveryAreaId ? _self.deliveryAreaId : deliveryAreaId // ignore: cast_nullable_to_non_nullable
as int,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

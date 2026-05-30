// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_customer_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCustomerAddressRequest {

@JsonKey(name: 'delivery_area_id') int? get deliveryAreaId;@JsonKey(name: 'address_line1') String? get addressLine1;@JsonKey(name: 'address_line2') String? get addressLine2; String? get city;@JsonKey(name: 'area_name') String? get areaName;@JsonKey(name: 'postal_code') String? get postalCode; String? get label;@JsonKey(name: 'recipient_name') String? get recipientName;@JsonKey(name: 'recipient_phone') String? get recipientPhone;@JsonKey(name: 'is_default') bool? get isDefault;
/// Create a copy of UpdateCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCustomerAddressRequestCopyWith<UpdateCustomerAddressRequest> get copyWith => _$UpdateCustomerAddressRequestCopyWithImpl<UpdateCustomerAddressRequest>(this as UpdateCustomerAddressRequest, _$identity);

  /// Serializes this UpdateCustomerAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCustomerAddressRequest&&(identical(other.deliveryAreaId, deliveryAreaId) || other.deliveryAreaId == deliveryAreaId)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAreaId,addressLine1,addressLine2,city,areaName,postalCode,label,recipientName,recipientPhone,isDefault);

@override
String toString() {
  return 'UpdateCustomerAddressRequest(deliveryAreaId: $deliveryAreaId, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $UpdateCustomerAddressRequestCopyWith<$Res>  {
  factory $UpdateCustomerAddressRequestCopyWith(UpdateCustomerAddressRequest value, $Res Function(UpdateCustomerAddressRequest) _then) = _$UpdateCustomerAddressRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'delivery_area_id') int? deliveryAreaId,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'is_default') bool? isDefault
});




}
/// @nodoc
class _$UpdateCustomerAddressRequestCopyWithImpl<$Res>
    implements $UpdateCustomerAddressRequestCopyWith<$Res> {
  _$UpdateCustomerAddressRequestCopyWithImpl(this._self, this._then);

  final UpdateCustomerAddressRequest _self;
  final $Res Function(UpdateCustomerAddressRequest) _then;

/// Create a copy of UpdateCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deliveryAreaId = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? isDefault = freezed,}) {
  return _then(_self.copyWith(
deliveryAreaId: freezed == deliveryAreaId ? _self.deliveryAreaId : deliveryAreaId // ignore: cast_nullable_to_non_nullable
as int?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCustomerAddressRequest].
extension UpdateCustomerAddressRequestPatterns on UpdateCustomerAddressRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCustomerAddressRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCustomerAddressRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCustomerAddressRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'delivery_area_id')  int? deliveryAreaId, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'delivery_area_id')  int? deliveryAreaId, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'delivery_area_id')  int? deliveryAreaId, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city, @JsonKey(name: 'area_name')  String? areaName, @JsonKey(name: 'postal_code')  String? postalCode,  String? label, @JsonKey(name: 'recipient_name')  String? recipientName, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'is_default')  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomerAddressRequest() when $default != null:
return $default(_that.deliveryAreaId,_that.addressLine1,_that.addressLine2,_that.city,_that.areaName,_that.postalCode,_that.label,_that.recipientName,_that.recipientPhone,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateCustomerAddressRequest implements UpdateCustomerAddressRequest {
  const _UpdateCustomerAddressRequest({@JsonKey(name: 'delivery_area_id') this.deliveryAreaId, @JsonKey(name: 'address_line1') this.addressLine1, @JsonKey(name: 'address_line2') this.addressLine2, this.city, @JsonKey(name: 'area_name') this.areaName, @JsonKey(name: 'postal_code') this.postalCode, this.label, @JsonKey(name: 'recipient_name') this.recipientName, @JsonKey(name: 'recipient_phone') this.recipientPhone, @JsonKey(name: 'is_default') this.isDefault});
  factory _UpdateCustomerAddressRequest.fromJson(Map<String, dynamic> json) => _$UpdateCustomerAddressRequestFromJson(json);

@override@JsonKey(name: 'delivery_area_id') final  int? deliveryAreaId;
@override@JsonKey(name: 'address_line1') final  String? addressLine1;
@override@JsonKey(name: 'address_line2') final  String? addressLine2;
@override final  String? city;
@override@JsonKey(name: 'area_name') final  String? areaName;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override final  String? label;
@override@JsonKey(name: 'recipient_name') final  String? recipientName;
@override@JsonKey(name: 'recipient_phone') final  String? recipientPhone;
@override@JsonKey(name: 'is_default') final  bool? isDefault;

/// Create a copy of UpdateCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCustomerAddressRequestCopyWith<_UpdateCustomerAddressRequest> get copyWith => __$UpdateCustomerAddressRequestCopyWithImpl<_UpdateCustomerAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateCustomerAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCustomerAddressRequest&&(identical(other.deliveryAreaId, deliveryAreaId) || other.deliveryAreaId == deliveryAreaId)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deliveryAreaId,addressLine1,addressLine2,city,areaName,postalCode,label,recipientName,recipientPhone,isDefault);

@override
String toString() {
  return 'UpdateCustomerAddressRequest(deliveryAreaId: $deliveryAreaId, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, areaName: $areaName, postalCode: $postalCode, label: $label, recipientName: $recipientName, recipientPhone: $recipientPhone, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$UpdateCustomerAddressRequestCopyWith<$Res> implements $UpdateCustomerAddressRequestCopyWith<$Res> {
  factory _$UpdateCustomerAddressRequestCopyWith(_UpdateCustomerAddressRequest value, $Res Function(_UpdateCustomerAddressRequest) _then) = __$UpdateCustomerAddressRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'delivery_area_id') int? deliveryAreaId,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city,@JsonKey(name: 'area_name') String? areaName,@JsonKey(name: 'postal_code') String? postalCode, String? label,@JsonKey(name: 'recipient_name') String? recipientName,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'is_default') bool? isDefault
});




}
/// @nodoc
class __$UpdateCustomerAddressRequestCopyWithImpl<$Res>
    implements _$UpdateCustomerAddressRequestCopyWith<$Res> {
  __$UpdateCustomerAddressRequestCopyWithImpl(this._self, this._then);

  final _UpdateCustomerAddressRequest _self;
  final $Res Function(_UpdateCustomerAddressRequest) _then;

/// Create a copy of UpdateCustomerAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deliveryAreaId = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? areaName = freezed,Object? postalCode = freezed,Object? label = freezed,Object? recipientName = freezed,Object? recipientPhone = freezed,Object? isDefault = freezed,}) {
  return _then(_UpdateCustomerAddressRequest(
deliveryAreaId: freezed == deliveryAreaId ? _self.deliveryAreaId : deliveryAreaId // ignore: cast_nullable_to_non_nullable
as int?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

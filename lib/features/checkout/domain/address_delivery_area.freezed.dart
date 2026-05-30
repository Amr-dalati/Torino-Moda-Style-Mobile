// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_delivery_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressDeliveryArea {

 int get id; String get code;@JsonKey(name: 'name_ar') String? get nameAr;@JsonKey(name: 'name_en') String? get nameEn;@JsonKey(name: 'delivery_fee') String? get deliveryFee; DeliveryRegion? get region;
/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDeliveryAreaCopyWith<AddressDeliveryArea> get copyWith => _$AddressDeliveryAreaCopyWithImpl<AddressDeliveryArea>(this as AddressDeliveryArea, _$identity);

  /// Serializes this AddressDeliveryArea to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDeliveryArea&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.region, region) || other.region == region));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,nameAr,nameEn,deliveryFee,region);

@override
String toString() {
  return 'AddressDeliveryArea(id: $id, code: $code, nameAr: $nameAr, nameEn: $nameEn, deliveryFee: $deliveryFee, region: $region)';
}


}

/// @nodoc
abstract mixin class $AddressDeliveryAreaCopyWith<$Res>  {
  factory $AddressDeliveryAreaCopyWith(AddressDeliveryArea value, $Res Function(AddressDeliveryArea) _then) = _$AddressDeliveryAreaCopyWithImpl;
@useResult
$Res call({
 int id, String code,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'delivery_fee') String? deliveryFee, DeliveryRegion? region
});


$DeliveryRegionCopyWith<$Res>? get region;

}
/// @nodoc
class _$AddressDeliveryAreaCopyWithImpl<$Res>
    implements $AddressDeliveryAreaCopyWith<$Res> {
  _$AddressDeliveryAreaCopyWithImpl(this._self, this._then);

  final AddressDeliveryArea _self;
  final $Res Function(AddressDeliveryArea) _then;

/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? nameAr = freezed,Object? nameEn = freezed,Object? deliveryFee = freezed,Object? region = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as DeliveryRegion?,
  ));
}
/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryRegionCopyWith<$Res>? get region {
    if (_self.region == null) {
    return null;
  }

  return $DeliveryRegionCopyWith<$Res>(_self.region!, (value) {
    return _then(_self.copyWith(region: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressDeliveryArea].
extension AddressDeliveryAreaPatterns on AddressDeliveryArea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressDeliveryArea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressDeliveryArea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressDeliveryArea value)  $default,){
final _that = this;
switch (_that) {
case _AddressDeliveryArea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressDeliveryArea value)?  $default,){
final _that = this;
switch (_that) {
case _AddressDeliveryArea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String? deliveryFee,  DeliveryRegion? region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressDeliveryArea() when $default != null:
return $default(_that.id,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String? deliveryFee,  DeliveryRegion? region)  $default,) {final _that = this;
switch (_that) {
case _AddressDeliveryArea():
return $default(_that.id,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String? deliveryFee,  DeliveryRegion? region)?  $default,) {final _that = this;
switch (_that) {
case _AddressDeliveryArea() when $default != null:
return $default(_that.id,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.region);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressDeliveryArea implements AddressDeliveryArea {
  const _AddressDeliveryArea({required this.id, required this.code, @JsonKey(name: 'name_ar') this.nameAr, @JsonKey(name: 'name_en') this.nameEn, @JsonKey(name: 'delivery_fee') this.deliveryFee, this.region});
  factory _AddressDeliveryArea.fromJson(Map<String, dynamic> json) => _$AddressDeliveryAreaFromJson(json);

@override final  int id;
@override final  String code;
@override@JsonKey(name: 'name_ar') final  String? nameAr;
@override@JsonKey(name: 'name_en') final  String? nameEn;
@override@JsonKey(name: 'delivery_fee') final  String? deliveryFee;
@override final  DeliveryRegion? region;

/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDeliveryAreaCopyWith<_AddressDeliveryArea> get copyWith => __$AddressDeliveryAreaCopyWithImpl<_AddressDeliveryArea>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDeliveryAreaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDeliveryArea&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.region, region) || other.region == region));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,nameAr,nameEn,deliveryFee,region);

@override
String toString() {
  return 'AddressDeliveryArea(id: $id, code: $code, nameAr: $nameAr, nameEn: $nameEn, deliveryFee: $deliveryFee, region: $region)';
}


}

/// @nodoc
abstract mixin class _$AddressDeliveryAreaCopyWith<$Res> implements $AddressDeliveryAreaCopyWith<$Res> {
  factory _$AddressDeliveryAreaCopyWith(_AddressDeliveryArea value, $Res Function(_AddressDeliveryArea) _then) = __$AddressDeliveryAreaCopyWithImpl;
@override @useResult
$Res call({
 int id, String code,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'delivery_fee') String? deliveryFee, DeliveryRegion? region
});


@override $DeliveryRegionCopyWith<$Res>? get region;

}
/// @nodoc
class __$AddressDeliveryAreaCopyWithImpl<$Res>
    implements _$AddressDeliveryAreaCopyWith<$Res> {
  __$AddressDeliveryAreaCopyWithImpl(this._self, this._then);

  final _AddressDeliveryArea _self;
  final $Res Function(_AddressDeliveryArea) _then;

/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? nameAr = freezed,Object? nameEn = freezed,Object? deliveryFee = freezed,Object? region = freezed,}) {
  return _then(_AddressDeliveryArea(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,deliveryFee: freezed == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as DeliveryRegion?,
  ));
}

/// Create a copy of AddressDeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryRegionCopyWith<$Res>? get region {
    if (_self.region == null) {
    return null;
  }

  return $DeliveryRegionCopyWith<$Res>(_self.region!, (value) {
    return _then(_self.copyWith(region: value));
  });
}
}

// dart format on

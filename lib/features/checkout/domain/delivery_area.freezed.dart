// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryArea {

 int get id;@JsonKey(name: 'region_id') int get regionId; String get code;@JsonKey(name: 'name_ar') String? get nameAr;@JsonKey(name: 'name_en') String? get nameEn;@JsonKey(name: 'delivery_fee') String get deliveryFee;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of DeliveryArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAreaCopyWith<DeliveryArea> get copyWith => _$DeliveryAreaCopyWithImpl<DeliveryArea>(this as DeliveryArea, _$identity);

  /// Serializes this DeliveryArea to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryArea&&(identical(other.id, id) || other.id == id)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,regionId,code,nameAr,nameEn,deliveryFee,isActive);

@override
String toString() {
  return 'DeliveryArea(id: $id, regionId: $regionId, code: $code, nameAr: $nameAr, nameEn: $nameEn, deliveryFee: $deliveryFee, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $DeliveryAreaCopyWith<$Res>  {
  factory $DeliveryAreaCopyWith(DeliveryArea value, $Res Function(DeliveryArea) _then) = _$DeliveryAreaCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'region_id') int regionId, String code,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$DeliveryAreaCopyWithImpl<$Res>
    implements $DeliveryAreaCopyWith<$Res> {
  _$DeliveryAreaCopyWithImpl(this._self, this._then);

  final DeliveryArea _self;
  final $Res Function(DeliveryArea) _then;

/// Create a copy of DeliveryArea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? regionId = null,Object? code = null,Object? nameAr = freezed,Object? nameEn = freezed,Object? deliveryFee = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryArea].
extension DeliveryAreaPatterns on DeliveryArea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryArea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryArea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryArea value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryArea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryArea value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryArea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'region_id')  int regionId,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryArea() when $default != null:
return $default(_that.id,_that.regionId,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'region_id')  int regionId,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _DeliveryArea():
return $default(_that.id,_that.regionId,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'region_id')  int regionId,  String code, @JsonKey(name: 'name_ar')  String? nameAr, @JsonKey(name: 'name_en')  String? nameEn, @JsonKey(name: 'delivery_fee')  String deliveryFee, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryArea() when $default != null:
return $default(_that.id,_that.regionId,_that.code,_that.nameAr,_that.nameEn,_that.deliveryFee,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryArea extends DeliveryArea {
  const _DeliveryArea({required this.id, @JsonKey(name: 'region_id') required this.regionId, required this.code, @JsonKey(name: 'name_ar') this.nameAr, @JsonKey(name: 'name_en') this.nameEn, @JsonKey(name: 'delivery_fee') required this.deliveryFee, @JsonKey(name: 'is_active') this.isActive = true}): super._();
  factory _DeliveryArea.fromJson(Map<String, dynamic> json) => _$DeliveryAreaFromJson(json);

@override final  int id;
@override@JsonKey(name: 'region_id') final  int regionId;
@override final  String code;
@override@JsonKey(name: 'name_ar') final  String? nameAr;
@override@JsonKey(name: 'name_en') final  String? nameEn;
@override@JsonKey(name: 'delivery_fee') final  String deliveryFee;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of DeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryAreaCopyWith<_DeliveryArea> get copyWith => __$DeliveryAreaCopyWithImpl<_DeliveryArea>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryAreaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryArea&&(identical(other.id, id) || other.id == id)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,regionId,code,nameAr,nameEn,deliveryFee,isActive);

@override
String toString() {
  return 'DeliveryArea(id: $id, regionId: $regionId, code: $code, nameAr: $nameAr, nameEn: $nameEn, deliveryFee: $deliveryFee, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAreaCopyWith<$Res> implements $DeliveryAreaCopyWith<$Res> {
  factory _$DeliveryAreaCopyWith(_DeliveryArea value, $Res Function(_DeliveryArea) _then) = __$DeliveryAreaCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'region_id') int regionId, String code,@JsonKey(name: 'name_ar') String? nameAr,@JsonKey(name: 'name_en') String? nameEn,@JsonKey(name: 'delivery_fee') String deliveryFee,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$DeliveryAreaCopyWithImpl<$Res>
    implements _$DeliveryAreaCopyWith<$Res> {
  __$DeliveryAreaCopyWithImpl(this._self, this._then);

  final _DeliveryArea _self;
  final $Res Function(_DeliveryArea) _then;

/// Create a copy of DeliveryArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? regionId = null,Object? code = null,Object? nameAr = freezed,Object? nameEn = freezed,Object? deliveryFee = null,Object? isActive = null,}) {
  return _then(_DeliveryArea(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameAr: freezed == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

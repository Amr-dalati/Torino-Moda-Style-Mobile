// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_polling_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentStatusPollingState {

 bool get isPolling; bool get isChecking; DateTime? get lastCheckedAt;
/// Create a copy of PaymentStatusPollingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusPollingStateCopyWith<PaymentStatusPollingState> get copyWith => _$PaymentStatusPollingStateCopyWithImpl<PaymentStatusPollingState>(this as PaymentStatusPollingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusPollingState&&(identical(other.isPolling, isPolling) || other.isPolling == isPolling)&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.lastCheckedAt, lastCheckedAt) || other.lastCheckedAt == lastCheckedAt));
}


@override
int get hashCode => Object.hash(runtimeType,isPolling,isChecking,lastCheckedAt);

@override
String toString() {
  return 'PaymentStatusPollingState(isPolling: $isPolling, isChecking: $isChecking, lastCheckedAt: $lastCheckedAt)';
}


}

/// @nodoc
abstract mixin class $PaymentStatusPollingStateCopyWith<$Res>  {
  factory $PaymentStatusPollingStateCopyWith(PaymentStatusPollingState value, $Res Function(PaymentStatusPollingState) _then) = _$PaymentStatusPollingStateCopyWithImpl;
@useResult
$Res call({
 bool isPolling, bool isChecking, DateTime? lastCheckedAt
});




}
/// @nodoc
class _$PaymentStatusPollingStateCopyWithImpl<$Res>
    implements $PaymentStatusPollingStateCopyWith<$Res> {
  _$PaymentStatusPollingStateCopyWithImpl(this._self, this._then);

  final PaymentStatusPollingState _self;
  final $Res Function(PaymentStatusPollingState) _then;

/// Create a copy of PaymentStatusPollingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPolling = null,Object? isChecking = null,Object? lastCheckedAt = freezed,}) {
  return _then(_self.copyWith(
isPolling: null == isPolling ? _self.isPolling : isPolling // ignore: cast_nullable_to_non_nullable
as bool,isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,lastCheckedAt: freezed == lastCheckedAt ? _self.lastCheckedAt : lastCheckedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusPollingState].
extension PaymentStatusPollingStatePatterns on PaymentStatusPollingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusPollingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusPollingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusPollingState value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusPollingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusPollingState value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusPollingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPolling,  bool isChecking,  DateTime? lastCheckedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusPollingState() when $default != null:
return $default(_that.isPolling,_that.isChecking,_that.lastCheckedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPolling,  bool isChecking,  DateTime? lastCheckedAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusPollingState():
return $default(_that.isPolling,_that.isChecking,_that.lastCheckedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPolling,  bool isChecking,  DateTime? lastCheckedAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusPollingState() when $default != null:
return $default(_that.isPolling,_that.isChecking,_that.lastCheckedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentStatusPollingState implements PaymentStatusPollingState {
  const _PaymentStatusPollingState({this.isPolling = false, this.isChecking = false, this.lastCheckedAt});
  

@override@JsonKey() final  bool isPolling;
@override@JsonKey() final  bool isChecking;
@override final  DateTime? lastCheckedAt;

/// Create a copy of PaymentStatusPollingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusPollingStateCopyWith<_PaymentStatusPollingState> get copyWith => __$PaymentStatusPollingStateCopyWithImpl<_PaymentStatusPollingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusPollingState&&(identical(other.isPolling, isPolling) || other.isPolling == isPolling)&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.lastCheckedAt, lastCheckedAt) || other.lastCheckedAt == lastCheckedAt));
}


@override
int get hashCode => Object.hash(runtimeType,isPolling,isChecking,lastCheckedAt);

@override
String toString() {
  return 'PaymentStatusPollingState(isPolling: $isPolling, isChecking: $isChecking, lastCheckedAt: $lastCheckedAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusPollingStateCopyWith<$Res> implements $PaymentStatusPollingStateCopyWith<$Res> {
  factory _$PaymentStatusPollingStateCopyWith(_PaymentStatusPollingState value, $Res Function(_PaymentStatusPollingState) _then) = __$PaymentStatusPollingStateCopyWithImpl;
@override @useResult
$Res call({
 bool isPolling, bool isChecking, DateTime? lastCheckedAt
});




}
/// @nodoc
class __$PaymentStatusPollingStateCopyWithImpl<$Res>
    implements _$PaymentStatusPollingStateCopyWith<$Res> {
  __$PaymentStatusPollingStateCopyWithImpl(this._self, this._then);

  final _PaymentStatusPollingState _self;
  final $Res Function(_PaymentStatusPollingState) _then;

/// Create a copy of PaymentStatusPollingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPolling = null,Object? isChecking = null,Object? lastCheckedAt = freezed,}) {
  return _then(_PaymentStatusPollingState(
isPolling: null == isPolling ? _self.isPolling : isPolling // ignore: cast_nullable_to_non_nullable
as bool,isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,lastCheckedAt: freezed == lastCheckedAt ? _self.lastCheckedAt : lastCheckedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

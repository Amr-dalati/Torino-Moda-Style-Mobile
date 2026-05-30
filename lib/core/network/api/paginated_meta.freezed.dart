// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedMeta {

@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'per_page') int get perPage; int get total;@JsonKey(name: 'last_page') int get lastPage;
/// Create a copy of PaginatedMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMetaCopyWith<PaginatedMeta> get copyWith => _$PaginatedMetaCopyWithImpl<PaginatedMeta>(this as PaginatedMeta, _$identity);

  /// Serializes this PaginatedMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,total,lastPage);

@override
String toString() {
  return 'PaginatedMeta(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
}


}

/// @nodoc
abstract mixin class $PaginatedMetaCopyWith<$Res>  {
  factory $PaginatedMetaCopyWith(PaginatedMeta value, $Res Function(PaginatedMeta) _then) = _$PaginatedMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'per_page') int perPage, int total,@JsonKey(name: 'last_page') int lastPage
});




}
/// @nodoc
class _$PaginatedMetaCopyWithImpl<$Res>
    implements $PaginatedMetaCopyWith<$Res> {
  _$PaginatedMetaCopyWithImpl(this._self, this._then);

  final PaginatedMeta _self;
  final $Res Function(PaginatedMeta) _then;

/// Create a copy of PaginatedMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? perPage = null,Object? total = null,Object? lastPage = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedMeta].
extension PaginatedMetaPatterns on PaginatedMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedMeta value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'per_page')  int perPage,  int total, @JsonKey(name: 'last_page')  int lastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedMeta() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.total,_that.lastPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'per_page')  int perPage,  int total, @JsonKey(name: 'last_page')  int lastPage)  $default,) {final _that = this;
switch (_that) {
case _PaginatedMeta():
return $default(_that.currentPage,_that.perPage,_that.total,_that.lastPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'per_page')  int perPage,  int total, @JsonKey(name: 'last_page')  int lastPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedMeta() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.total,_that.lastPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedMeta extends PaginatedMeta {
  const _PaginatedMeta({@JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'per_page') required this.perPage, required this.total, @JsonKey(name: 'last_page') required this.lastPage}): super._();
  factory _PaginatedMeta.fromJson(Map<String, dynamic> json) => _$PaginatedMetaFromJson(json);

@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'per_page') final  int perPage;
@override final  int total;
@override@JsonKey(name: 'last_page') final  int lastPage;

/// Create a copy of PaginatedMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedMetaCopyWith<_PaginatedMeta> get copyWith => __$PaginatedMetaCopyWithImpl<_PaginatedMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,total,lastPage);

@override
String toString() {
  return 'PaginatedMeta(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
}


}

/// @nodoc
abstract mixin class _$PaginatedMetaCopyWith<$Res> implements $PaginatedMetaCopyWith<$Res> {
  factory _$PaginatedMetaCopyWith(_PaginatedMeta value, $Res Function(_PaginatedMeta) _then) = __$PaginatedMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'per_page') int perPage, int total,@JsonKey(name: 'last_page') int lastPage
});




}
/// @nodoc
class __$PaginatedMetaCopyWithImpl<$Res>
    implements _$PaginatedMetaCopyWith<$Res> {
  __$PaginatedMetaCopyWithImpl(this._self, this._then);

  final _PaginatedMeta _self;
  final $Res Function(_PaginatedMeta) _then;

/// Create a copy of PaginatedMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? perPage = null,Object? total = null,Object? lastPage = null,}) {
  return _then(_PaginatedMeta(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

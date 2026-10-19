// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockSnapshot {

 DateTime get now;
/// Create a copy of ClockSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockSnapshotCopyWith<ClockSnapshot> get copyWith => _$ClockSnapshotCopyWithImpl<ClockSnapshot>(this as ClockSnapshot, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClockSnapshot;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockSnapshot&&(identical(other.now, _this.now) || other.now == _this.now));
}


@override
int get hashCode {
  final _this = this as ClockSnapshot;
  return Object.hash(runtimeType,_this.now);
}

@override
String toString() {
  final _this = this as ClockSnapshot;
  return 'ClockSnapshot(now: ${_this.now})';
}


}

/// @nodoc
abstract mixin class $ClockSnapshotCopyWith<$Res>  {
  factory $ClockSnapshotCopyWith(ClockSnapshot value, $Res Function(ClockSnapshot) _then) = _$ClockSnapshotCopyWithImpl;
@useResult
$Res call({
 DateTime now
});




}
/// @nodoc
class _$ClockSnapshotCopyWithImpl<$Res>
    implements $ClockSnapshotCopyWith<$Res> {
  _$ClockSnapshotCopyWithImpl(this._self, this._then);

  final ClockSnapshot _self;
  final $Res Function(ClockSnapshot) _then;

/// Create a copy of ClockSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? now = null,}) {
  return _then(ClockSnapshot(
now: null == now ? _self.now : now // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockSnapshot].
extension ClockSnapshotPatterns on ClockSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _ClockSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _ClockSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime now)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockSnapshot() when $default != null:
return $default(_that.now);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime now)  $default,) {final _that = this;
switch (_that) {
case _ClockSnapshot():
return $default(_that.now);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime now)?  $default,) {final _that = this;
switch (_that) {
case _ClockSnapshot() when $default != null:
return $default(_that.now);case _:
  return null;

}
}

}

/// @nodoc


class _ClockSnapshot extends ClockSnapshot {
  const _ClockSnapshot({required this.now}): super._();
  

@override final  DateTime now;

/// Create a copy of ClockSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockSnapshotCopyWith<_ClockSnapshot> get copyWith => __$ClockSnapshotCopyWithImpl<_ClockSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockSnapshot&&(identical(other.now, now) || other.now == now));
}


@override
int get hashCode {
    return Object.hash(runtimeType,now);
}

@override
String toString() {
    return 'ClockSnapshot(now: $now)';
}


}

/// @nodoc
abstract mixin class _$ClockSnapshotCopyWith<$Res> implements $ClockSnapshotCopyWith<$Res> {
  factory _$ClockSnapshotCopyWith(_ClockSnapshot value, $Res Function(_ClockSnapshot) _then) = __$ClockSnapshotCopyWithImpl;
@override @useResult
$Res call({
 DateTime now
});




}
/// @nodoc
class __$ClockSnapshotCopyWithImpl<$Res>
    implements _$ClockSnapshotCopyWith<$Res> {
  __$ClockSnapshotCopyWithImpl(this._self, this._then);

  final _ClockSnapshot _self;
  final $Res Function(_ClockSnapshot) _then;

/// Create a copy of ClockSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? now = null,}) {
  return _then(_ClockSnapshot(
now: null == now ? _self.now : now // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

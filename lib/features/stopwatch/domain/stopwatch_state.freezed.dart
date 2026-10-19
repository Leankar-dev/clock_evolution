// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stopwatch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StopwatchState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StopwatchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StopwatchState()';
}


}

/// @nodoc
class $StopwatchStateCopyWith<$Res>  {
$StopwatchStateCopyWith(StopwatchState _, $Res Function(StopwatchState) __);
}


/// Adds pattern-matching-related methods to [StopwatchState].
extension StopwatchStatePatterns on StopwatchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StopwatchIdle value)?  idle,TResult Function( StopwatchRunning value)?  running,TResult Function( StopwatchPaused value)?  paused,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StopwatchIdle() when idle != null:
return idle(_that);case StopwatchRunning() when running != null:
return running(_that);case StopwatchPaused() when paused != null:
return paused(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StopwatchIdle value)  idle,required TResult Function( StopwatchRunning value)  running,required TResult Function( StopwatchPaused value)  paused,}){
final _that = this;
switch (_that) {
case StopwatchIdle():
return idle(_that);case StopwatchRunning():
return running(_that);case StopwatchPaused():
return paused(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StopwatchIdle value)?  idle,TResult? Function( StopwatchRunning value)?  running,TResult? Function( StopwatchPaused value)?  paused,}){
final _that = this;
switch (_that) {
case StopwatchIdle() when idle != null:
return idle(_that);case StopwatchRunning() when running != null:
return running(_that);case StopwatchPaused() when paused != null:
return paused(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function( DateTime startedAt,  Duration accumulated,  List<Lap> laps)?  running,TResult Function( Duration accumulated,  List<Lap> laps)?  paused,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StopwatchIdle() when idle != null:
return idle();case StopwatchRunning() when running != null:
return running(_that.startedAt,_that.accumulated,_that.laps);case StopwatchPaused() when paused != null:
return paused(_that.accumulated,_that.laps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function( DateTime startedAt,  Duration accumulated,  List<Lap> laps)  running,required TResult Function( Duration accumulated,  List<Lap> laps)  paused,}) {final _that = this;
switch (_that) {
case StopwatchIdle():
return idle();case StopwatchRunning():
return running(_that.startedAt,_that.accumulated,_that.laps);case StopwatchPaused():
return paused(_that.accumulated,_that.laps);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function( DateTime startedAt,  Duration accumulated,  List<Lap> laps)?  running,TResult? Function( Duration accumulated,  List<Lap> laps)?  paused,}) {final _that = this;
switch (_that) {
case StopwatchIdle() when idle != null:
return idle();case StopwatchRunning() when running != null:
return running(_that.startedAt,_that.accumulated,_that.laps);case StopwatchPaused() when paused != null:
return paused(_that.accumulated,_that.laps);case _:
  return null;

}
}

}

/// @nodoc


class StopwatchIdle extends StopwatchState {
  const StopwatchIdle(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StopwatchIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StopwatchState.idle()';
}


}




/// @nodoc


class StopwatchRunning extends StopwatchState {
  const StopwatchRunning({required this.startedAt, required this.accumulated, required  List<Lap> laps}): _laps = laps,super._();
  

 final  DateTime startedAt;
 final  Duration accumulated;
 final  List<Lap> _laps;
 List<Lap> get laps {
  if (_laps is EqualUnmodifiableListView) return _laps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_laps);
}


/// Create a copy of StopwatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopwatchRunningCopyWith<StopwatchRunning> get copyWith => _$StopwatchRunningCopyWithImpl<StopwatchRunning>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StopwatchRunning&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.accumulated, accumulated) || other.accumulated == accumulated)&&const DeepCollectionEquality().equals(other.laps, _laps));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startedAt,accumulated,const DeepCollectionEquality().hash(_laps));
}

@override
String toString() {
    return 'StopwatchState.running(startedAt: $startedAt, accumulated: $accumulated, laps: $laps)';
}


}

/// @nodoc
abstract mixin class $StopwatchRunningCopyWith<$Res> implements $StopwatchStateCopyWith<$Res> {
  factory $StopwatchRunningCopyWith(StopwatchRunning value, $Res Function(StopwatchRunning) _then) = _$StopwatchRunningCopyWithImpl;
@useResult
$Res call({
 DateTime startedAt, Duration accumulated, List<Lap> laps
});




}
/// @nodoc
class _$StopwatchRunningCopyWithImpl<$Res>
    implements $StopwatchRunningCopyWith<$Res> {
  _$StopwatchRunningCopyWithImpl(this._self, this._then);

  final StopwatchRunning _self;
  final $Res Function(StopwatchRunning) _then;

/// Create a copy of StopwatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startedAt = null,Object? accumulated = null,Object? laps = null,}) {
  return _then(StopwatchRunning(
startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,accumulated: null == accumulated ? _self.accumulated : accumulated // ignore: cast_nullable_to_non_nullable
as Duration,laps: null == laps ? _self._laps : laps // ignore: cast_nullable_to_non_nullable
as List<Lap>,
  ));
}


}

/// @nodoc


class StopwatchPaused extends StopwatchState {
  const StopwatchPaused({required this.accumulated, required  List<Lap> laps}): _laps = laps,super._();
  

 final  Duration accumulated;
 final  List<Lap> _laps;
 List<Lap> get laps {
  if (_laps is EqualUnmodifiableListView) return _laps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_laps);
}


/// Create a copy of StopwatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopwatchPausedCopyWith<StopwatchPaused> get copyWith => _$StopwatchPausedCopyWithImpl<StopwatchPaused>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StopwatchPaused&&(identical(other.accumulated, accumulated) || other.accumulated == accumulated)&&const DeepCollectionEquality().equals(other.laps, _laps));
}


@override
int get hashCode {
    return Object.hash(runtimeType,accumulated,const DeepCollectionEquality().hash(_laps));
}

@override
String toString() {
    return 'StopwatchState.paused(accumulated: $accumulated, laps: $laps)';
}


}

/// @nodoc
abstract mixin class $StopwatchPausedCopyWith<$Res> implements $StopwatchStateCopyWith<$Res> {
  factory $StopwatchPausedCopyWith(StopwatchPaused value, $Res Function(StopwatchPaused) _then) = _$StopwatchPausedCopyWithImpl;
@useResult
$Res call({
 Duration accumulated, List<Lap> laps
});




}
/// @nodoc
class _$StopwatchPausedCopyWithImpl<$Res>
    implements $StopwatchPausedCopyWith<$Res> {
  _$StopwatchPausedCopyWithImpl(this._self, this._then);

  final StopwatchPaused _self;
  final $Res Function(StopwatchPaused) _then;

/// Create a copy of StopwatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accumulated = null,Object? laps = null,}) {
  return _then(StopwatchPaused(
accumulated: null == accumulated ? _self.accumulated : accumulated // ignore: cast_nullable_to_non_nullable
as Duration,laps: null == laps ? _self._laps : laps // ignore: cast_nullable_to_non_nullable
as List<Lap>,
  ));
}


}

// dart format on

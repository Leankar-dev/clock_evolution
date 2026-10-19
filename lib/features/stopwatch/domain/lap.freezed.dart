// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Lap {

 int get index; Duration get lapTime; Duration get totalTime;
/// Create a copy of Lap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LapCopyWith<Lap> get copyWith => _$LapCopyWithImpl<Lap>(this as Lap, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Lap;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lap&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.lapTime, _this.lapTime) || other.lapTime == _this.lapTime)&&(identical(other.totalTime, _this.totalTime) || other.totalTime == _this.totalTime));
}


@override
int get hashCode {
  final _this = this as Lap;
  return Object.hash(runtimeType,_this.index,_this.lapTime,_this.totalTime);
}

@override
String toString() {
  final _this = this as Lap;
  return 'Lap(index: ${_this.index}, lapTime: ${_this.lapTime}, totalTime: ${_this.totalTime})';
}


}

/// @nodoc
abstract mixin class $LapCopyWith<$Res>  {
  factory $LapCopyWith(Lap value, $Res Function(Lap) _then) = _$LapCopyWithImpl;
@useResult
$Res call({
 int index, Duration lapTime, Duration totalTime
});




}
/// @nodoc
class _$LapCopyWithImpl<$Res>
    implements $LapCopyWith<$Res> {
  _$LapCopyWithImpl(this._self, this._then);

  final Lap _self;
  final $Res Function(Lap) _then;

/// Create a copy of Lap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? lapTime = null,Object? totalTime = null,}) {
  return _then(Lap(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lapTime: null == lapTime ? _self.lapTime : lapTime // ignore: cast_nullable_to_non_nullable
as Duration,totalTime: null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [Lap].
extension LapPatterns on Lap {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lap value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lap() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lap value)  $default,){
final _that = this;
switch (_that) {
case _Lap():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lap value)?  $default,){
final _that = this;
switch (_that) {
case _Lap() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  Duration lapTime,  Duration totalTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lap() when $default != null:
return $default(_that.index,_that.lapTime,_that.totalTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  Duration lapTime,  Duration totalTime)  $default,) {final _that = this;
switch (_that) {
case _Lap():
return $default(_that.index,_that.lapTime,_that.totalTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  Duration lapTime,  Duration totalTime)?  $default,) {final _that = this;
switch (_that) {
case _Lap() when $default != null:
return $default(_that.index,_that.lapTime,_that.totalTime);case _:
  return null;

}
}

}

/// @nodoc


class _Lap implements Lap {
  const _Lap({required this.index, required this.lapTime, required this.totalTime});
  

@override final  int index;
@override final  Duration lapTime;
@override final  Duration totalTime;

/// Create a copy of Lap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LapCopyWith<_Lap> get copyWith => __$LapCopyWithImpl<_Lap>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lap&&(identical(other.index, index) || other.index == index)&&(identical(other.lapTime, lapTime) || other.lapTime == lapTime)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime));
}


@override
int get hashCode {
    return Object.hash(runtimeType,index,lapTime,totalTime);
}

@override
String toString() {
    return 'Lap(index: $index, lapTime: $lapTime, totalTime: $totalTime)';
}


}

/// @nodoc
abstract mixin class _$LapCopyWith<$Res> implements $LapCopyWith<$Res> {
  factory _$LapCopyWith(_Lap value, $Res Function(_Lap) _then) = __$LapCopyWithImpl;
@override @useResult
$Res call({
 int index, Duration lapTime, Duration totalTime
});




}
/// @nodoc
class __$LapCopyWithImpl<$Res>
    implements _$LapCopyWith<$Res> {
  __$LapCopyWithImpl(this._self, this._then);

  final _Lap _self;
  final $Res Function(_Lap) _then;

/// Create a copy of Lap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? lapTime = null,Object? totalTime = null,}) {
  return _then(_Lap(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lapTime: null == lapTime ? _self.lapTime : lapTime // ignore: cast_nullable_to_non_nullable
as Duration,totalTime: null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DateHeader {

 DateTime get date; String get locationName;
/// Create a copy of DateHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateHeaderCopyWith<DateHeader> get copyWith => _$DateHeaderCopyWithImpl<DateHeader>(this as DateHeader, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DateHeader;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateHeader&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.locationName, _this.locationName) || other.locationName == _this.locationName));
}


@override
int get hashCode {
  final _this = this as DateHeader;
  return Object.hash(runtimeType,_this.date,_this.locationName);
}

@override
String toString() {
  final _this = this as DateHeader;
  return 'DateHeader(date: ${_this.date}, locationName: ${_this.locationName})';
}


}

/// @nodoc
abstract mixin class $DateHeaderCopyWith<$Res>  {
  factory $DateHeaderCopyWith(DateHeader value, $Res Function(DateHeader) _then) = _$DateHeaderCopyWithImpl;
@useResult
$Res call({
 DateTime date, String locationName
});




}
/// @nodoc
class _$DateHeaderCopyWithImpl<$Res>
    implements $DateHeaderCopyWith<$Res> {
  _$DateHeaderCopyWithImpl(this._self, this._then);

  final DateHeader _self;
  final $Res Function(DateHeader) _then;

/// Create a copy of DateHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? locationName = null,}) {
  return _then(DateHeader(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DateHeader].
extension DateHeaderPatterns on DateHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DateHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DateHeader value)  $default,){
final _that = this;
switch (_that) {
case _DateHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DateHeader value)?  $default,){
final _that = this;
switch (_that) {
case _DateHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String locationName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateHeader() when $default != null:
return $default(_that.date,_that.locationName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String locationName)  $default,) {final _that = this;
switch (_that) {
case _DateHeader():
return $default(_that.date,_that.locationName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String locationName)?  $default,) {final _that = this;
switch (_that) {
case _DateHeader() when $default != null:
return $default(_that.date,_that.locationName);case _:
  return null;

}
}

}

/// @nodoc


class _DateHeader implements DateHeader {
  const _DateHeader({required this.date, required this.locationName});
  

@override final  DateTime date;
@override final  String locationName;

/// Create a copy of DateHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateHeaderCopyWith<_DateHeader> get copyWith => __$DateHeaderCopyWithImpl<_DateHeader>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateHeader&&(identical(other.date, date) || other.date == date)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,date,locationName);
}

@override
String toString() {
    return 'DateHeader(date: $date, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class _$DateHeaderCopyWith<$Res> implements $DateHeaderCopyWith<$Res> {
  factory _$DateHeaderCopyWith(_DateHeader value, $Res Function(_DateHeader) _then) = __$DateHeaderCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String locationName
});




}
/// @nodoc
class __$DateHeaderCopyWithImpl<$Res>
    implements _$DateHeaderCopyWith<$Res> {
  __$DateHeaderCopyWithImpl(this._self, this._then);

  final _DateHeader _self;
  final $Res Function(_DateHeader) _then;

/// Create a copy of DateHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? locationName = null,}) {
  return _then(_DateHeader(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

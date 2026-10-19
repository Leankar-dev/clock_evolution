// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stopwatch_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LapView {

 int get index; String get lapText; LapHighlight get highlight;
/// Create a copy of LapView
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LapViewCopyWith<LapView> get copyWith => _$LapViewCopyWithImpl<LapView>(this as LapView, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LapView;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LapView&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.lapText, _this.lapText) || other.lapText == _this.lapText)&&(identical(other.highlight, _this.highlight) || other.highlight == _this.highlight));
}


@override
int get hashCode {
  final _this = this as LapView;
  return Object.hash(runtimeType,_this.index,_this.lapText,_this.highlight);
}

@override
String toString() {
  final _this = this as LapView;
  return 'LapView(index: ${_this.index}, lapText: ${_this.lapText}, highlight: ${_this.highlight})';
}


}

/// @nodoc
abstract mixin class $LapViewCopyWith<$Res>  {
  factory $LapViewCopyWith(LapView value, $Res Function(LapView) _then) = _$LapViewCopyWithImpl;
@useResult
$Res call({
 int index, String lapText, LapHighlight highlight
});




}
/// @nodoc
class _$LapViewCopyWithImpl<$Res>
    implements $LapViewCopyWith<$Res> {
  _$LapViewCopyWithImpl(this._self, this._then);

  final LapView _self;
  final $Res Function(LapView) _then;

/// Create a copy of LapView
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? lapText = null,Object? highlight = null,}) {
  return _then(LapView(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lapText: null == lapText ? _self.lapText : lapText // ignore: cast_nullable_to_non_nullable
as String,highlight: null == highlight ? _self.highlight : highlight // ignore: cast_nullable_to_non_nullable
as LapHighlight,
  ));
}

}


/// Adds pattern-matching-related methods to [LapView].
extension LapViewPatterns on LapView {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LapView value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LapView() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LapView value)  $default,){
final _that = this;
switch (_that) {
case _LapView():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LapView value)?  $default,){
final _that = this;
switch (_that) {
case _LapView() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String lapText,  LapHighlight highlight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LapView() when $default != null:
return $default(_that.index,_that.lapText,_that.highlight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String lapText,  LapHighlight highlight)  $default,) {final _that = this;
switch (_that) {
case _LapView():
return $default(_that.index,_that.lapText,_that.highlight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String lapText,  LapHighlight highlight)?  $default,) {final _that = this;
switch (_that) {
case _LapView() when $default != null:
return $default(_that.index,_that.lapText,_that.highlight);case _:
  return null;

}
}

}

/// @nodoc


class _LapView implements LapView {
  const _LapView({required this.index, required this.lapText, required this.highlight});
  

@override final  int index;
@override final  String lapText;
@override final  LapHighlight highlight;

/// Create a copy of LapView
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LapViewCopyWith<_LapView> get copyWith => __$LapViewCopyWithImpl<_LapView>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LapView&&(identical(other.index, index) || other.index == index)&&(identical(other.lapText, lapText) || other.lapText == lapText)&&(identical(other.highlight, highlight) || other.highlight == highlight));
}


@override
int get hashCode {
    return Object.hash(runtimeType,index,lapText,highlight);
}

@override
String toString() {
    return 'LapView(index: $index, lapText: $lapText, highlight: $highlight)';
}


}

/// @nodoc
abstract mixin class _$LapViewCopyWith<$Res> implements $LapViewCopyWith<$Res> {
  factory _$LapViewCopyWith(_LapView value, $Res Function(_LapView) _then) = __$LapViewCopyWithImpl;
@override @useResult
$Res call({
 int index, String lapText, LapHighlight highlight
});




}
/// @nodoc
class __$LapViewCopyWithImpl<$Res>
    implements _$LapViewCopyWith<$Res> {
  __$LapViewCopyWithImpl(this._self, this._then);

  final _LapView _self;
  final $Res Function(_LapView) _then;

/// Create a copy of LapView
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? lapText = null,Object? highlight = null,}) {
  return _then(_LapView(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lapText: null == lapText ? _self.lapText : lapText // ignore: cast_nullable_to_non_nullable
as String,highlight: null == highlight ? _self.highlight : highlight // ignore: cast_nullable_to_non_nullable
as LapHighlight,
  ));
}


}

/// @nodoc
mixin _$StopwatchViewModel {

 StopwatchStatus get status; PrimaryAction get primaryAction; bool get lapEnabled; bool get resetEnabled; bool get requiresResetConfirmation; List<LapView> get laps;
/// Create a copy of StopwatchViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopwatchViewModelCopyWith<StopwatchViewModel> get copyWith => _$StopwatchViewModelCopyWithImpl<StopwatchViewModel>(this as StopwatchViewModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StopwatchViewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopwatchViewModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.primaryAction, _this.primaryAction) || other.primaryAction == _this.primaryAction)&&(identical(other.lapEnabled, _this.lapEnabled) || other.lapEnabled == _this.lapEnabled)&&(identical(other.resetEnabled, _this.resetEnabled) || other.resetEnabled == _this.resetEnabled)&&(identical(other.requiresResetConfirmation, _this.requiresResetConfirmation) || other.requiresResetConfirmation == _this.requiresResetConfirmation)&&const DeepCollectionEquality().equals(other.laps, _this.laps));
}


@override
int get hashCode {
  final _this = this as StopwatchViewModel;
  return Object.hash(runtimeType,_this.status,_this.primaryAction,_this.lapEnabled,_this.resetEnabled,_this.requiresResetConfirmation,const DeepCollectionEquality().hash(_this.laps));
}

@override
String toString() {
  final _this = this as StopwatchViewModel;
  return 'StopwatchViewModel(status: ${_this.status}, primaryAction: ${_this.primaryAction}, lapEnabled: ${_this.lapEnabled}, resetEnabled: ${_this.resetEnabled}, requiresResetConfirmation: ${_this.requiresResetConfirmation}, laps: ${_this.laps})';
}


}

/// @nodoc
abstract mixin class $StopwatchViewModelCopyWith<$Res>  {
  factory $StopwatchViewModelCopyWith(StopwatchViewModel value, $Res Function(StopwatchViewModel) _then) = _$StopwatchViewModelCopyWithImpl;
@useResult
$Res call({
 StopwatchStatus status, PrimaryAction primaryAction, bool lapEnabled, bool resetEnabled, bool requiresResetConfirmation, List<LapView> laps
});




}
/// @nodoc
class _$StopwatchViewModelCopyWithImpl<$Res>
    implements $StopwatchViewModelCopyWith<$Res> {
  _$StopwatchViewModelCopyWithImpl(this._self, this._then);

  final StopwatchViewModel _self;
  final $Res Function(StopwatchViewModel) _then;

/// Create a copy of StopwatchViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? primaryAction = null,Object? lapEnabled = null,Object? resetEnabled = null,Object? requiresResetConfirmation = null,Object? laps = null,}) {
  return _then(StopwatchViewModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StopwatchStatus,primaryAction: null == primaryAction ? _self.primaryAction : primaryAction // ignore: cast_nullable_to_non_nullable
as PrimaryAction,lapEnabled: null == lapEnabled ? _self.lapEnabled : lapEnabled // ignore: cast_nullable_to_non_nullable
as bool,resetEnabled: null == resetEnabled ? _self.resetEnabled : resetEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiresResetConfirmation: null == requiresResetConfirmation ? _self.requiresResetConfirmation : requiresResetConfirmation // ignore: cast_nullable_to_non_nullable
as bool,laps: null == laps ? _self.laps : laps // ignore: cast_nullable_to_non_nullable
as List<LapView>,
  ));
}

}


/// Adds pattern-matching-related methods to [StopwatchViewModel].
extension StopwatchViewModelPatterns on StopwatchViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StopwatchViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StopwatchViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StopwatchViewModel value)  $default,){
final _that = this;
switch (_that) {
case _StopwatchViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StopwatchViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _StopwatchViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StopwatchStatus status,  PrimaryAction primaryAction,  bool lapEnabled,  bool resetEnabled,  bool requiresResetConfirmation,  List<LapView> laps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StopwatchViewModel() when $default != null:
return $default(_that.status,_that.primaryAction,_that.lapEnabled,_that.resetEnabled,_that.requiresResetConfirmation,_that.laps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StopwatchStatus status,  PrimaryAction primaryAction,  bool lapEnabled,  bool resetEnabled,  bool requiresResetConfirmation,  List<LapView> laps)  $default,) {final _that = this;
switch (_that) {
case _StopwatchViewModel():
return $default(_that.status,_that.primaryAction,_that.lapEnabled,_that.resetEnabled,_that.requiresResetConfirmation,_that.laps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StopwatchStatus status,  PrimaryAction primaryAction,  bool lapEnabled,  bool resetEnabled,  bool requiresResetConfirmation,  List<LapView> laps)?  $default,) {final _that = this;
switch (_that) {
case _StopwatchViewModel() when $default != null:
return $default(_that.status,_that.primaryAction,_that.lapEnabled,_that.resetEnabled,_that.requiresResetConfirmation,_that.laps);case _:
  return null;

}
}

}

/// @nodoc


class _StopwatchViewModel implements StopwatchViewModel {
  const _StopwatchViewModel({required this.status, required this.primaryAction, required this.lapEnabled, required this.resetEnabled, required this.requiresResetConfirmation, required  List<LapView> laps}): _laps = laps;
  

@override final  StopwatchStatus status;
@override final  PrimaryAction primaryAction;
@override final  bool lapEnabled;
@override final  bool resetEnabled;
@override final  bool requiresResetConfirmation;
 final  List<LapView> _laps;
@override List<LapView> get laps {
  if (_laps is EqualUnmodifiableListView) return _laps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_laps);
}


/// Create a copy of StopwatchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopwatchViewModelCopyWith<_StopwatchViewModel> get copyWith => __$StopwatchViewModelCopyWithImpl<_StopwatchViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopwatchViewModel&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryAction, primaryAction) || other.primaryAction == primaryAction)&&(identical(other.lapEnabled, lapEnabled) || other.lapEnabled == lapEnabled)&&(identical(other.resetEnabled, resetEnabled) || other.resetEnabled == resetEnabled)&&(identical(other.requiresResetConfirmation, requiresResetConfirmation) || other.requiresResetConfirmation == requiresResetConfirmation)&&const DeepCollectionEquality().equals(other.laps, _laps));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,primaryAction,lapEnabled,resetEnabled,requiresResetConfirmation,const DeepCollectionEquality().hash(_laps));
}

@override
String toString() {
    return 'StopwatchViewModel(status: $status, primaryAction: $primaryAction, lapEnabled: $lapEnabled, resetEnabled: $resetEnabled, requiresResetConfirmation: $requiresResetConfirmation, laps: $laps)';
}


}

/// @nodoc
abstract mixin class _$StopwatchViewModelCopyWith<$Res> implements $StopwatchViewModelCopyWith<$Res> {
  factory _$StopwatchViewModelCopyWith(_StopwatchViewModel value, $Res Function(_StopwatchViewModel) _then) = __$StopwatchViewModelCopyWithImpl;
@override @useResult
$Res call({
 StopwatchStatus status, PrimaryAction primaryAction, bool lapEnabled, bool resetEnabled, bool requiresResetConfirmation, List<LapView> laps
});




}
/// @nodoc
class __$StopwatchViewModelCopyWithImpl<$Res>
    implements _$StopwatchViewModelCopyWith<$Res> {
  __$StopwatchViewModelCopyWithImpl(this._self, this._then);

  final _StopwatchViewModel _self;
  final $Res Function(_StopwatchViewModel) _then;

/// Create a copy of StopwatchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? primaryAction = null,Object? lapEnabled = null,Object? resetEnabled = null,Object? requiresResetConfirmation = null,Object? laps = null,}) {
  return _then(_StopwatchViewModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StopwatchStatus,primaryAction: null == primaryAction ? _self.primaryAction : primaryAction // ignore: cast_nullable_to_non_nullable
as PrimaryAction,lapEnabled: null == lapEnabled ? _self.lapEnabled : lapEnabled // ignore: cast_nullable_to_non_nullable
as bool,resetEnabled: null == resetEnabled ? _self.resetEnabled : resetEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiresResetConfirmation: null == requiresResetConfirmation ? _self.requiresResetConfirmation : requiresResetConfirmation // ignore: cast_nullable_to_non_nullable
as bool,laps: null == laps ? _self._laps : laps // ignore: cast_nullable_to_non_nullable
as List<LapView>,
  ));
}


}

// dart format on

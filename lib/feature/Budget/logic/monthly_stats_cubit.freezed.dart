// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_stats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MonthlyStatsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyStatsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MonthlyStatsState()';
}


}

/// @nodoc
class $MonthlyStatsStateCopyWith<$Res>  {
$MonthlyStatsStateCopyWith(MonthlyStatsState _, $Res Function(MonthlyStatsState) __);
}


/// Adds pattern-matching-related methods to [MonthlyStatsState].
extension MonthlyStatsStatePatterns on MonthlyStatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetMonthlyStatsLoading value)?  getMonthlyStatsLoading,TResult Function( GetMonthlyStatsError value)?  getMonthlyStatsError,TResult Function( GetMonthlyStatsSuccess value)?  getMonthlyStatsSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetMonthlyStatsLoading() when getMonthlyStatsLoading != null:
return getMonthlyStatsLoading(_that);case GetMonthlyStatsError() when getMonthlyStatsError != null:
return getMonthlyStatsError(_that);case GetMonthlyStatsSuccess() when getMonthlyStatsSuccess != null:
return getMonthlyStatsSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetMonthlyStatsLoading value)  getMonthlyStatsLoading,required TResult Function( GetMonthlyStatsError value)  getMonthlyStatsError,required TResult Function( GetMonthlyStatsSuccess value)  getMonthlyStatsSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetMonthlyStatsLoading():
return getMonthlyStatsLoading(_that);case GetMonthlyStatsError():
return getMonthlyStatsError(_that);case GetMonthlyStatsSuccess():
return getMonthlyStatsSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetMonthlyStatsLoading value)?  getMonthlyStatsLoading,TResult? Function( GetMonthlyStatsError value)?  getMonthlyStatsError,TResult? Function( GetMonthlyStatsSuccess value)?  getMonthlyStatsSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetMonthlyStatsLoading() when getMonthlyStatsLoading != null:
return getMonthlyStatsLoading(_that);case GetMonthlyStatsError() when getMonthlyStatsError != null:
return getMonthlyStatsError(_that);case GetMonthlyStatsSuccess() when getMonthlyStatsSuccess != null:
return getMonthlyStatsSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getMonthlyStatsLoading,TResult Function( ApiErrorModel apiErrorModel)?  getMonthlyStatsError,TResult Function( GetMonthlyStatsModel getMonthlyStatsModel)?  getMonthlyStatsSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetMonthlyStatsLoading() when getMonthlyStatsLoading != null:
return getMonthlyStatsLoading();case GetMonthlyStatsError() when getMonthlyStatsError != null:
return getMonthlyStatsError(_that.apiErrorModel);case GetMonthlyStatsSuccess() when getMonthlyStatsSuccess != null:
return getMonthlyStatsSuccess(_that.getMonthlyStatsModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getMonthlyStatsLoading,required TResult Function( ApiErrorModel apiErrorModel)  getMonthlyStatsError,required TResult Function( GetMonthlyStatsModel getMonthlyStatsModel)  getMonthlyStatsSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetMonthlyStatsLoading():
return getMonthlyStatsLoading();case GetMonthlyStatsError():
return getMonthlyStatsError(_that.apiErrorModel);case GetMonthlyStatsSuccess():
return getMonthlyStatsSuccess(_that.getMonthlyStatsModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getMonthlyStatsLoading,TResult? Function( ApiErrorModel apiErrorModel)?  getMonthlyStatsError,TResult? Function( GetMonthlyStatsModel getMonthlyStatsModel)?  getMonthlyStatsSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetMonthlyStatsLoading() when getMonthlyStatsLoading != null:
return getMonthlyStatsLoading();case GetMonthlyStatsError() when getMonthlyStatsError != null:
return getMonthlyStatsError(_that.apiErrorModel);case GetMonthlyStatsSuccess() when getMonthlyStatsSuccess != null:
return getMonthlyStatsSuccess(_that.getMonthlyStatsModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MonthlyStatsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MonthlyStatsState.initial()';
}


}




/// @nodoc


class GetMonthlyStatsLoading implements MonthlyStatsState {
  const GetMonthlyStatsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlyStatsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MonthlyStatsState.getMonthlyStatsLoading()';
}


}




/// @nodoc


class GetMonthlyStatsError implements MonthlyStatsState {
  const GetMonthlyStatsError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of MonthlyStatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlyStatsErrorCopyWith<GetMonthlyStatsError> get copyWith => _$GetMonthlyStatsErrorCopyWithImpl<GetMonthlyStatsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlyStatsError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'MonthlyStatsState.getMonthlyStatsError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetMonthlyStatsErrorCopyWith<$Res> implements $MonthlyStatsStateCopyWith<$Res> {
  factory $GetMonthlyStatsErrorCopyWith(GetMonthlyStatsError value, $Res Function(GetMonthlyStatsError) _then) = _$GetMonthlyStatsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetMonthlyStatsErrorCopyWithImpl<$Res>
    implements $GetMonthlyStatsErrorCopyWith<$Res> {
  _$GetMonthlyStatsErrorCopyWithImpl(this._self, this._then);

  final GetMonthlyStatsError _self;
  final $Res Function(GetMonthlyStatsError) _then;

/// Create a copy of MonthlyStatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetMonthlyStatsError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class GetMonthlyStatsSuccess implements MonthlyStatsState {
  const GetMonthlyStatsSuccess(this.getMonthlyStatsModel);
  

 final  GetMonthlyStatsModel getMonthlyStatsModel;

/// Create a copy of MonthlyStatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlyStatsSuccessCopyWith<GetMonthlyStatsSuccess> get copyWith => _$GetMonthlyStatsSuccessCopyWithImpl<GetMonthlyStatsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlyStatsSuccess&&(identical(other.getMonthlyStatsModel, getMonthlyStatsModel) || other.getMonthlyStatsModel == getMonthlyStatsModel));
}


@override
int get hashCode => Object.hash(runtimeType,getMonthlyStatsModel);

@override
String toString() {
  return 'MonthlyStatsState.getMonthlyStatsSuccess(getMonthlyStatsModel: $getMonthlyStatsModel)';
}


}

/// @nodoc
abstract mixin class $GetMonthlyStatsSuccessCopyWith<$Res> implements $MonthlyStatsStateCopyWith<$Res> {
  factory $GetMonthlyStatsSuccessCopyWith(GetMonthlyStatsSuccess value, $Res Function(GetMonthlyStatsSuccess) _then) = _$GetMonthlyStatsSuccessCopyWithImpl;
@useResult
$Res call({
 GetMonthlyStatsModel getMonthlyStatsModel
});




}
/// @nodoc
class _$GetMonthlyStatsSuccessCopyWithImpl<$Res>
    implements $GetMonthlyStatsSuccessCopyWith<$Res> {
  _$GetMonthlyStatsSuccessCopyWithImpl(this._self, this._then);

  final GetMonthlyStatsSuccess _self;
  final $Res Function(GetMonthlyStatsSuccess) _then;

/// Create a copy of MonthlyStatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getMonthlyStatsModel = null,}) {
  return _then(GetMonthlyStatsSuccess(
null == getMonthlyStatsModel ? _self.getMonthlyStatsModel : getMonthlyStatsModel // ignore: cast_nullable_to_non_nullable
as GetMonthlyStatsModel,
  ));
}


}

// dart format on

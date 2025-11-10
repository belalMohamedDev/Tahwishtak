// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetTodayActivitiesLoading value)?  getTodayActivitiesLoading,TResult Function( GetTodayActivitiesError value)?  getTodayActivitiesError,TResult Function( GetTodayActivitiesSuccess value)?  getTodayActivitiesSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetTodayActivitiesLoading value)  getTodayActivitiesLoading,required TResult Function( GetTodayActivitiesError value)  getTodayActivitiesError,required TResult Function( GetTodayActivitiesSuccess value)  getTodayActivitiesSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetTodayActivitiesLoading():
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError():
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess():
return getTodayActivitiesSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetTodayActivitiesLoading value)?  getTodayActivitiesLoading,TResult? Function( GetTodayActivitiesError value)?  getTodayActivitiesError,TResult? Function( GetTodayActivitiesSuccess value)?  getTodayActivitiesSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getTodayActivitiesLoading,TResult Function( ApiErrorModel apiErrorModel)?  getTodayActivitiesError,TResult Function( TodayActivitiesData data)?  getTodayActivitiesSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading();case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getTodayActivitiesLoading,required TResult Function( ApiErrorModel apiErrorModel)  getTodayActivitiesError,required TResult Function( TodayActivitiesData data)  getTodayActivitiesSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetTodayActivitiesLoading():
return getTodayActivitiesLoading();case GetTodayActivitiesError():
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess():
return getTodayActivitiesSuccess(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getTodayActivitiesLoading,TResult? Function( ApiErrorModel apiErrorModel)?  getTodayActivitiesError,TResult? Function( TodayActivitiesData data)?  getTodayActivitiesSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading();case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class GetTodayActivitiesLoading implements HomeState {
  const GetTodayActivitiesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodayActivitiesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.getTodayActivitiesLoading()';
}


}




/// @nodoc


class GetTodayActivitiesError implements HomeState {
  const GetTodayActivitiesError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTodayActivitiesErrorCopyWith<GetTodayActivitiesError> get copyWith => _$GetTodayActivitiesErrorCopyWithImpl<GetTodayActivitiesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodayActivitiesError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.getTodayActivitiesError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetTodayActivitiesErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetTodayActivitiesErrorCopyWith(GetTodayActivitiesError value, $Res Function(GetTodayActivitiesError) _then) = _$GetTodayActivitiesErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetTodayActivitiesErrorCopyWithImpl<$Res>
    implements $GetTodayActivitiesErrorCopyWith<$Res> {
  _$GetTodayActivitiesErrorCopyWithImpl(this._self, this._then);

  final GetTodayActivitiesError _self;
  final $Res Function(GetTodayActivitiesError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetTodayActivitiesError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class GetTodayActivitiesSuccess implements HomeState {
  const GetTodayActivitiesSuccess(this.data);
  

 final  TodayActivitiesData data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTodayActivitiesSuccessCopyWith<GetTodayActivitiesSuccess> get copyWith => _$GetTodayActivitiesSuccessCopyWithImpl<GetTodayActivitiesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodayActivitiesSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeState.getTodayActivitiesSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetTodayActivitiesSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetTodayActivitiesSuccessCopyWith(GetTodayActivitiesSuccess value, $Res Function(GetTodayActivitiesSuccess) _then) = _$GetTodayActivitiesSuccessCopyWithImpl;
@useResult
$Res call({
 TodayActivitiesData data
});




}
/// @nodoc
class _$GetTodayActivitiesSuccessCopyWithImpl<$Res>
    implements $GetTodayActivitiesSuccessCopyWith<$Res> {
  _$GetTodayActivitiesSuccessCopyWithImpl(this._self, this._then);

  final GetTodayActivitiesSuccess _self;
  final $Res Function(GetTodayActivitiesSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(GetTodayActivitiesSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TodayActivitiesData,
  ));
}


}

// dart format on

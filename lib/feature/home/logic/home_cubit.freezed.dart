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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetTodayActivitiesLoading value)?  getTodayActivitiesLoading,TResult Function( GetTodayActivitiesError value)?  getTodayActivitiesError,TResult Function( GetTodayActivitiesSuccess value)?  getTodayActivitiesSuccess,TResult Function( AddActivityLoading value)?  addActivityLoading,TResult Function( AddActivityError value)?  addActivityError,TResult Function( AddActivitySuccess value)?  addActivitySuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that);case AddActivityLoading() when addActivityLoading != null:
return addActivityLoading(_that);case AddActivityError() when addActivityError != null:
return addActivityError(_that);case AddActivitySuccess() when addActivitySuccess != null:
return addActivitySuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetTodayActivitiesLoading value)  getTodayActivitiesLoading,required TResult Function( GetTodayActivitiesError value)  getTodayActivitiesError,required TResult Function( GetTodayActivitiesSuccess value)  getTodayActivitiesSuccess,required TResult Function( AddActivityLoading value)  addActivityLoading,required TResult Function( AddActivityError value)  addActivityError,required TResult Function( AddActivitySuccess value)  addActivitySuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetTodayActivitiesLoading():
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError():
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess():
return getTodayActivitiesSuccess(_that);case AddActivityLoading():
return addActivityLoading(_that);case AddActivityError():
return addActivityError(_that);case AddActivitySuccess():
return addActivitySuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetTodayActivitiesLoading value)?  getTodayActivitiesLoading,TResult? Function( GetTodayActivitiesError value)?  getTodayActivitiesError,TResult? Function( GetTodayActivitiesSuccess value)?  getTodayActivitiesSuccess,TResult? Function( AddActivityLoading value)?  addActivityLoading,TResult? Function( AddActivityError value)?  addActivityError,TResult? Function( AddActivitySuccess value)?  addActivitySuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading(_that);case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that);case AddActivityLoading() when addActivityLoading != null:
return addActivityLoading(_that);case AddActivityError() when addActivityError != null:
return addActivityError(_that);case AddActivitySuccess() when addActivitySuccess != null:
return addActivitySuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getTodayActivitiesLoading,TResult Function( ApiErrorModel apiErrorModel)?  getTodayActivitiesError,TResult Function( TodayActivitiesData data)?  getTodayActivitiesSuccess,TResult Function()?  addActivityLoading,TResult Function( ApiErrorModel apiErrorModel)?  addActivityError,TResult Function( TodayActivitiesData data)?  addActivitySuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading();case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that.data);case AddActivityLoading() when addActivityLoading != null:
return addActivityLoading();case AddActivityError() when addActivityError != null:
return addActivityError(_that.apiErrorModel);case AddActivitySuccess() when addActivitySuccess != null:
return addActivitySuccess(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getTodayActivitiesLoading,required TResult Function( ApiErrorModel apiErrorModel)  getTodayActivitiesError,required TResult Function( TodayActivitiesData data)  getTodayActivitiesSuccess,required TResult Function()  addActivityLoading,required TResult Function( ApiErrorModel apiErrorModel)  addActivityError,required TResult Function( TodayActivitiesData data)  addActivitySuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetTodayActivitiesLoading():
return getTodayActivitiesLoading();case GetTodayActivitiesError():
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess():
return getTodayActivitiesSuccess(_that.data);case AddActivityLoading():
return addActivityLoading();case AddActivityError():
return addActivityError(_that.apiErrorModel);case AddActivitySuccess():
return addActivitySuccess(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getTodayActivitiesLoading,TResult? Function( ApiErrorModel apiErrorModel)?  getTodayActivitiesError,TResult? Function( TodayActivitiesData data)?  getTodayActivitiesSuccess,TResult? Function()?  addActivityLoading,TResult? Function( ApiErrorModel apiErrorModel)?  addActivityError,TResult? Function( TodayActivitiesData data)?  addActivitySuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetTodayActivitiesLoading() when getTodayActivitiesLoading != null:
return getTodayActivitiesLoading();case GetTodayActivitiesError() when getTodayActivitiesError != null:
return getTodayActivitiesError(_that.apiErrorModel);case GetTodayActivitiesSuccess() when getTodayActivitiesSuccess != null:
return getTodayActivitiesSuccess(_that.data);case AddActivityLoading() when addActivityLoading != null:
return addActivityLoading();case AddActivityError() when addActivityError != null:
return addActivityError(_that.apiErrorModel);case AddActivitySuccess() when addActivitySuccess != null:
return addActivitySuccess(_that.data);case _:
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

/// @nodoc


class AddActivityLoading implements HomeState {
  const AddActivityLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivityLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.addActivityLoading()';
}


}




/// @nodoc


class AddActivityError implements HomeState {
  const AddActivityError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddActivityErrorCopyWith<AddActivityError> get copyWith => _$AddActivityErrorCopyWithImpl<AddActivityError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivityError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.addActivityError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $AddActivityErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $AddActivityErrorCopyWith(AddActivityError value, $Res Function(AddActivityError) _then) = _$AddActivityErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$AddActivityErrorCopyWithImpl<$Res>
    implements $AddActivityErrorCopyWith<$Res> {
  _$AddActivityErrorCopyWithImpl(this._self, this._then);

  final AddActivityError _self;
  final $Res Function(AddActivityError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(AddActivityError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class AddActivitySuccess implements HomeState {
  const AddActivitySuccess(this.data);
  

 final  TodayActivitiesData data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddActivitySuccessCopyWith<AddActivitySuccess> get copyWith => _$AddActivitySuccessCopyWithImpl<AddActivitySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddActivitySuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeState.addActivitySuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddActivitySuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $AddActivitySuccessCopyWith(AddActivitySuccess value, $Res Function(AddActivitySuccess) _then) = _$AddActivitySuccessCopyWithImpl;
@useResult
$Res call({
 TodayActivitiesData data
});




}
/// @nodoc
class _$AddActivitySuccessCopyWithImpl<$Res>
    implements $AddActivitySuccessCopyWith<$Res> {
  _$AddActivitySuccessCopyWithImpl(this._self, this._then);

  final AddActivitySuccess _self;
  final $Res Function(AddActivitySuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AddActivitySuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TodayActivitiesData,
  ));
}


}

// dart format on

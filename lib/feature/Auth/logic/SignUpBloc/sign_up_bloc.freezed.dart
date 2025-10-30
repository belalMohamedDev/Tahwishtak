// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent()';
}


}

/// @nodoc
class $SignUpEventCopyWith<$Res>  {
$SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}


/// Adds pattern-matching-related methods to [SignUpEvent].
extension SignUpEventPatterns on SignUpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( UserSignUpEmailAddressEvent value)?  userSignUpEmailAddress,TResult Function( UserSignUpPasswordEvent value)?  userSignUpPassword,TResult Function( UserSignUNameEvent value)?  userSignUpName,TResult Function( UserShowSignUpPasswordEvent value)?  userShowSignUpPassword,TResult Function( UserRegisterButtonEvent value)?  userRegisterButton,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case UserSignUpEmailAddressEvent() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that);case UserSignUpPasswordEvent() when userSignUpPassword != null:
return userSignUpPassword(_that);case UserSignUNameEvent() when userSignUpName != null:
return userSignUpName(_that);case UserShowSignUpPasswordEvent() when userShowSignUpPassword != null:
return userShowSignUpPassword(_that);case UserRegisterButtonEvent() when userRegisterButton != null:
return userRegisterButton(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( UserSignUpEmailAddressEvent value)  userSignUpEmailAddress,required TResult Function( UserSignUpPasswordEvent value)  userSignUpPassword,required TResult Function( UserSignUNameEvent value)  userSignUpName,required TResult Function( UserShowSignUpPasswordEvent value)  userShowSignUpPassword,required TResult Function( UserRegisterButtonEvent value)  userRegisterButton,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case UserSignUpEmailAddressEvent():
return userSignUpEmailAddress(_that);case UserSignUpPasswordEvent():
return userSignUpPassword(_that);case UserSignUNameEvent():
return userSignUpName(_that);case UserShowSignUpPasswordEvent():
return userShowSignUpPassword(_that);case UserRegisterButtonEvent():
return userRegisterButton(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( UserSignUpEmailAddressEvent value)?  userSignUpEmailAddress,TResult? Function( UserSignUpPasswordEvent value)?  userSignUpPassword,TResult? Function( UserSignUNameEvent value)?  userSignUpName,TResult? Function( UserShowSignUpPasswordEvent value)?  userShowSignUpPassword,TResult? Function( UserRegisterButtonEvent value)?  userRegisterButton,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case UserSignUpEmailAddressEvent() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that);case UserSignUpPasswordEvent() when userSignUpPassword != null:
return userSignUpPassword(_that);case UserSignUNameEvent() when userSignUpName != null:
return userSignUpName(_that);case UserShowSignUpPasswordEvent() when userShowSignUpPassword != null:
return userShowSignUpPassword(_that);case UserRegisterButtonEvent() when userRegisterButton != null:
return userRegisterButton(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String value)?  userSignUpEmailAddress,TResult Function( String value)?  userSignUpPassword,TResult Function( String value)?  userSignUpName,TResult Function()?  userShowSignUpPassword,TResult Function()?  userRegisterButton,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case UserSignUpEmailAddressEvent() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordEvent() when userSignUpPassword != null:
return userSignUpPassword(_that.value);case UserSignUNameEvent() when userSignUpName != null:
return userSignUpName(_that.value);case UserShowSignUpPasswordEvent() when userShowSignUpPassword != null:
return userShowSignUpPassword();case UserRegisterButtonEvent() when userRegisterButton != null:
return userRegisterButton();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String value)  userSignUpEmailAddress,required TResult Function( String value)  userSignUpPassword,required TResult Function( String value)  userSignUpName,required TResult Function()  userShowSignUpPassword,required TResult Function()  userRegisterButton,}) {final _that = this;
switch (_that) {
case _Started():
return started();case UserSignUpEmailAddressEvent():
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordEvent():
return userSignUpPassword(_that.value);case UserSignUNameEvent():
return userSignUpName(_that.value);case UserShowSignUpPasswordEvent():
return userShowSignUpPassword();case UserRegisterButtonEvent():
return userRegisterButton();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String value)?  userSignUpEmailAddress,TResult? Function( String value)?  userSignUpPassword,TResult? Function( String value)?  userSignUpName,TResult? Function()?  userShowSignUpPassword,TResult? Function()?  userRegisterButton,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case UserSignUpEmailAddressEvent() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordEvent() when userSignUpPassword != null:
return userSignUpPassword(_that.value);case UserSignUNameEvent() when userSignUpName != null:
return userSignUpName(_that.value);case UserShowSignUpPasswordEvent() when userShowSignUpPassword != null:
return userShowSignUpPassword();case UserRegisterButtonEvent() when userRegisterButton != null:
return userRegisterButton();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SignUpEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.started()';
}


}




/// @nodoc


class UserSignUpEmailAddressEvent implements SignUpEvent {
  const UserSignUpEmailAddressEvent(this.value);
  

 final  String value;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpEmailAddressEventCopyWith<UserSignUpEmailAddressEvent> get copyWith => _$UserSignUpEmailAddressEventCopyWithImpl<UserSignUpEmailAddressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpEmailAddressEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpEvent.userSignUpEmailAddress(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUpEmailAddressEventCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $UserSignUpEmailAddressEventCopyWith(UserSignUpEmailAddressEvent value, $Res Function(UserSignUpEmailAddressEvent) _then) = _$UserSignUpEmailAddressEventCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUpEmailAddressEventCopyWithImpl<$Res>
    implements $UserSignUpEmailAddressEventCopyWith<$Res> {
  _$UserSignUpEmailAddressEventCopyWithImpl(this._self, this._then);

  final UserSignUpEmailAddressEvent _self;
  final $Res Function(UserSignUpEmailAddressEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUpEmailAddressEvent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserSignUpPasswordEvent implements SignUpEvent {
  const UserSignUpPasswordEvent(this.value);
  

 final  String value;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpPasswordEventCopyWith<UserSignUpPasswordEvent> get copyWith => _$UserSignUpPasswordEventCopyWithImpl<UserSignUpPasswordEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpPasswordEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpEvent.userSignUpPassword(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUpPasswordEventCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $UserSignUpPasswordEventCopyWith(UserSignUpPasswordEvent value, $Res Function(UserSignUpPasswordEvent) _then) = _$UserSignUpPasswordEventCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUpPasswordEventCopyWithImpl<$Res>
    implements $UserSignUpPasswordEventCopyWith<$Res> {
  _$UserSignUpPasswordEventCopyWithImpl(this._self, this._then);

  final UserSignUpPasswordEvent _self;
  final $Res Function(UserSignUpPasswordEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUpPasswordEvent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserSignUNameEvent implements SignUpEvent {
  const UserSignUNameEvent(this.value);
  

 final  String value;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUNameEventCopyWith<UserSignUNameEvent> get copyWith => _$UserSignUNameEventCopyWithImpl<UserSignUNameEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUNameEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpEvent.userSignUpName(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUNameEventCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $UserSignUNameEventCopyWith(UserSignUNameEvent value, $Res Function(UserSignUNameEvent) _then) = _$UserSignUNameEventCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUNameEventCopyWithImpl<$Res>
    implements $UserSignUNameEventCopyWith<$Res> {
  _$UserSignUNameEventCopyWithImpl(this._self, this._then);

  final UserSignUNameEvent _self;
  final $Res Function(UserSignUNameEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUNameEvent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserShowSignUpPasswordEvent implements SignUpEvent {
  const UserShowSignUpPasswordEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserShowSignUpPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.userShowSignUpPassword()';
}


}




/// @nodoc


class UserRegisterButtonEvent implements SignUpEvent {
  const UserRegisterButtonEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterButtonEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.userRegisterButton()';
}


}




/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( UserSignUpEmailAddressState value)?  userSignUpEmailAddress,TResult Function( UserSignUpPasswordState value)?  userSignUpPassword,TResult Function( UserSignUpNameState value)?  userSignUpName,TResult Function( ShowUserSignUpPasswordState value)?  showUserSignUpPassword,TResult Function( ButtonSignUpVaildationState value)?  buttonSignUpVaildation,TResult Function( SignUpButtonLoadingData value)?  loading,TResult Function( SignUpButtonErrorData value)?  error,TResult Function( SignUpButtonSuccessData value)?  suceess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserSignUpEmailAddressState() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that);case UserSignUpPasswordState() when userSignUpPassword != null:
return userSignUpPassword(_that);case UserSignUpNameState() when userSignUpName != null:
return userSignUpName(_that);case ShowUserSignUpPasswordState() when showUserSignUpPassword != null:
return showUserSignUpPassword(_that);case ButtonSignUpVaildationState() when buttonSignUpVaildation != null:
return buttonSignUpVaildation(_that);case SignUpButtonLoadingData() when loading != null:
return loading(_that);case SignUpButtonErrorData() when error != null:
return error(_that);case SignUpButtonSuccessData() when suceess != null:
return suceess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( UserSignUpEmailAddressState value)  userSignUpEmailAddress,required TResult Function( UserSignUpPasswordState value)  userSignUpPassword,required TResult Function( UserSignUpNameState value)  userSignUpName,required TResult Function( ShowUserSignUpPasswordState value)  showUserSignUpPassword,required TResult Function( ButtonSignUpVaildationState value)  buttonSignUpVaildation,required TResult Function( SignUpButtonLoadingData value)  loading,required TResult Function( SignUpButtonErrorData value)  error,required TResult Function( SignUpButtonSuccessData value)  suceess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case UserSignUpEmailAddressState():
return userSignUpEmailAddress(_that);case UserSignUpPasswordState():
return userSignUpPassword(_that);case UserSignUpNameState():
return userSignUpName(_that);case ShowUserSignUpPasswordState():
return showUserSignUpPassword(_that);case ButtonSignUpVaildationState():
return buttonSignUpVaildation(_that);case SignUpButtonLoadingData():
return loading(_that);case SignUpButtonErrorData():
return error(_that);case SignUpButtonSuccessData():
return suceess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( UserSignUpEmailAddressState value)?  userSignUpEmailAddress,TResult? Function( UserSignUpPasswordState value)?  userSignUpPassword,TResult? Function( UserSignUpNameState value)?  userSignUpName,TResult? Function( ShowUserSignUpPasswordState value)?  showUserSignUpPassword,TResult? Function( ButtonSignUpVaildationState value)?  buttonSignUpVaildation,TResult? Function( SignUpButtonLoadingData value)?  loading,TResult? Function( SignUpButtonErrorData value)?  error,TResult? Function( SignUpButtonSuccessData value)?  suceess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserSignUpEmailAddressState() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that);case UserSignUpPasswordState() when userSignUpPassword != null:
return userSignUpPassword(_that);case UserSignUpNameState() when userSignUpName != null:
return userSignUpName(_that);case ShowUserSignUpPasswordState() when showUserSignUpPassword != null:
return showUserSignUpPassword(_that);case ButtonSignUpVaildationState() when buttonSignUpVaildation != null:
return buttonSignUpVaildation(_that);case SignUpButtonLoadingData() when loading != null:
return loading(_that);case SignUpButtonErrorData() when error != null:
return error(_that);case SignUpButtonSuccessData() when suceess != null:
return suceess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String value)?  userSignUpEmailAddress,TResult Function( String value)?  userSignUpPassword,TResult Function( String value)?  userSignUpName,TResult Function( bool value)?  showUserSignUpPassword,TResult Function( bool value)?  buttonSignUpVaildation,TResult Function()?  loading,TResult Function( ApiErrorModel apiErrorModel)?  error,TResult Function( AuthResponse data)?  suceess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserSignUpEmailAddressState() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordState() when userSignUpPassword != null:
return userSignUpPassword(_that.value);case UserSignUpNameState() when userSignUpName != null:
return userSignUpName(_that.value);case ShowUserSignUpPasswordState() when showUserSignUpPassword != null:
return showUserSignUpPassword(_that.value);case ButtonSignUpVaildationState() when buttonSignUpVaildation != null:
return buttonSignUpVaildation(_that.value);case SignUpButtonLoadingData() when loading != null:
return loading();case SignUpButtonErrorData() when error != null:
return error(_that.apiErrorModel);case SignUpButtonSuccessData() when suceess != null:
return suceess(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String value)  userSignUpEmailAddress,required TResult Function( String value)  userSignUpPassword,required TResult Function( String value)  userSignUpName,required TResult Function( bool value)  showUserSignUpPassword,required TResult Function( bool value)  buttonSignUpVaildation,required TResult Function()  loading,required TResult Function( ApiErrorModel apiErrorModel)  error,required TResult Function( AuthResponse data)  suceess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case UserSignUpEmailAddressState():
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordState():
return userSignUpPassword(_that.value);case UserSignUpNameState():
return userSignUpName(_that.value);case ShowUserSignUpPasswordState():
return showUserSignUpPassword(_that.value);case ButtonSignUpVaildationState():
return buttonSignUpVaildation(_that.value);case SignUpButtonLoadingData():
return loading();case SignUpButtonErrorData():
return error(_that.apiErrorModel);case SignUpButtonSuccessData():
return suceess(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String value)?  userSignUpEmailAddress,TResult? Function( String value)?  userSignUpPassword,TResult? Function( String value)?  userSignUpName,TResult? Function( bool value)?  showUserSignUpPassword,TResult? Function( bool value)?  buttonSignUpVaildation,TResult? Function()?  loading,TResult? Function( ApiErrorModel apiErrorModel)?  error,TResult? Function( AuthResponse data)?  suceess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserSignUpEmailAddressState() when userSignUpEmailAddress != null:
return userSignUpEmailAddress(_that.value);case UserSignUpPasswordState() when userSignUpPassword != null:
return userSignUpPassword(_that.value);case UserSignUpNameState() when userSignUpName != null:
return userSignUpName(_that.value);case ShowUserSignUpPasswordState() when showUserSignUpPassword != null:
return showUserSignUpPassword(_that.value);case ButtonSignUpVaildationState() when buttonSignUpVaildation != null:
return buttonSignUpVaildation(_that.value);case SignUpButtonLoadingData() when loading != null:
return loading();case SignUpButtonErrorData() when error != null:
return error(_that.apiErrorModel);case SignUpButtonSuccessData() when suceess != null:
return suceess(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SignUpState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class UserSignUpEmailAddressState implements SignUpState {
  const UserSignUpEmailAddressState(this.value);
  

 final  String value;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpEmailAddressStateCopyWith<UserSignUpEmailAddressState> get copyWith => _$UserSignUpEmailAddressStateCopyWithImpl<UserSignUpEmailAddressState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpEmailAddressState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpState.userSignUpEmailAddress(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUpEmailAddressStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $UserSignUpEmailAddressStateCopyWith(UserSignUpEmailAddressState value, $Res Function(UserSignUpEmailAddressState) _then) = _$UserSignUpEmailAddressStateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUpEmailAddressStateCopyWithImpl<$Res>
    implements $UserSignUpEmailAddressStateCopyWith<$Res> {
  _$UserSignUpEmailAddressStateCopyWithImpl(this._self, this._then);

  final UserSignUpEmailAddressState _self;
  final $Res Function(UserSignUpEmailAddressState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUpEmailAddressState(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserSignUpPasswordState implements SignUpState {
  const UserSignUpPasswordState(this.value);
  

 final  String value;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpPasswordStateCopyWith<UserSignUpPasswordState> get copyWith => _$UserSignUpPasswordStateCopyWithImpl<UserSignUpPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpPasswordState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpState.userSignUpPassword(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUpPasswordStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $UserSignUpPasswordStateCopyWith(UserSignUpPasswordState value, $Res Function(UserSignUpPasswordState) _then) = _$UserSignUpPasswordStateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUpPasswordStateCopyWithImpl<$Res>
    implements $UserSignUpPasswordStateCopyWith<$Res> {
  _$UserSignUpPasswordStateCopyWithImpl(this._self, this._then);

  final UserSignUpPasswordState _self;
  final $Res Function(UserSignUpPasswordState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUpPasswordState(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserSignUpNameState implements SignUpState {
  const UserSignUpNameState(this.value);
  

 final  String value;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpNameStateCopyWith<UserSignUpNameState> get copyWith => _$UserSignUpNameStateCopyWithImpl<UserSignUpNameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpNameState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpState.userSignUpName(value: $value)';
}


}

/// @nodoc
abstract mixin class $UserSignUpNameStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $UserSignUpNameStateCopyWith(UserSignUpNameState value, $Res Function(UserSignUpNameState) _then) = _$UserSignUpNameStateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$UserSignUpNameStateCopyWithImpl<$Res>
    implements $UserSignUpNameStateCopyWith<$Res> {
  _$UserSignUpNameStateCopyWithImpl(this._self, this._then);

  final UserSignUpNameState _self;
  final $Res Function(UserSignUpNameState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UserSignUpNameState(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShowUserSignUpPasswordState implements SignUpState {
  const ShowUserSignUpPasswordState(this.value);
  

 final  bool value;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowUserSignUpPasswordStateCopyWith<ShowUserSignUpPasswordState> get copyWith => _$ShowUserSignUpPasswordStateCopyWithImpl<ShowUserSignUpPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowUserSignUpPasswordState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpState.showUserSignUpPassword(value: $value)';
}


}

/// @nodoc
abstract mixin class $ShowUserSignUpPasswordStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $ShowUserSignUpPasswordStateCopyWith(ShowUserSignUpPasswordState value, $Res Function(ShowUserSignUpPasswordState) _then) = _$ShowUserSignUpPasswordStateCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$ShowUserSignUpPasswordStateCopyWithImpl<$Res>
    implements $ShowUserSignUpPasswordStateCopyWith<$Res> {
  _$ShowUserSignUpPasswordStateCopyWithImpl(this._self, this._then);

  final ShowUserSignUpPasswordState _self;
  final $Res Function(ShowUserSignUpPasswordState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ShowUserSignUpPasswordState(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ButtonSignUpVaildationState implements SignUpState {
  const ButtonSignUpVaildationState(this.value);
  

 final  bool value;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ButtonSignUpVaildationStateCopyWith<ButtonSignUpVaildationState> get copyWith => _$ButtonSignUpVaildationStateCopyWithImpl<ButtonSignUpVaildationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ButtonSignUpVaildationState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SignUpState.buttonSignUpVaildation(value: $value)';
}


}

/// @nodoc
abstract mixin class $ButtonSignUpVaildationStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $ButtonSignUpVaildationStateCopyWith(ButtonSignUpVaildationState value, $Res Function(ButtonSignUpVaildationState) _then) = _$ButtonSignUpVaildationStateCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$ButtonSignUpVaildationStateCopyWithImpl<$Res>
    implements $ButtonSignUpVaildationStateCopyWith<$Res> {
  _$ButtonSignUpVaildationStateCopyWithImpl(this._self, this._then);

  final ButtonSignUpVaildationState _self;
  final $Res Function(ButtonSignUpVaildationState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ButtonSignUpVaildationState(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SignUpButtonLoadingData implements SignUpState {
  const SignUpButtonLoadingData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpButtonLoadingData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.loading()';
}


}




/// @nodoc


class SignUpButtonErrorData implements SignUpState {
  const SignUpButtonErrorData(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpButtonErrorDataCopyWith<SignUpButtonErrorData> get copyWith => _$SignUpButtonErrorDataCopyWithImpl<SignUpButtonErrorData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpButtonErrorData&&const DeepCollectionEquality().equals(other.apiErrorModel, apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(apiErrorModel));

@override
String toString() {
  return 'SignUpState.error(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SignUpButtonErrorDataCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpButtonErrorDataCopyWith(SignUpButtonErrorData value, $Res Function(SignUpButtonErrorData) _then) = _$SignUpButtonErrorDataCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SignUpButtonErrorDataCopyWithImpl<$Res>
    implements $SignUpButtonErrorDataCopyWith<$Res> {
  _$SignUpButtonErrorDataCopyWithImpl(this._self, this._then);

  final SignUpButtonErrorData _self;
  final $Res Function(SignUpButtonErrorData) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = freezed,}) {
  return _then(SignUpButtonErrorData(
freezed == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class SignUpButtonSuccessData implements SignUpState {
  const SignUpButtonSuccessData(this.data);
  

 final  AuthResponse data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpButtonSuccessDataCopyWith<SignUpButtonSuccessData> get copyWith => _$SignUpButtonSuccessDataCopyWithImpl<SignUpButtonSuccessData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpButtonSuccessData&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState.suceess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpButtonSuccessDataCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpButtonSuccessDataCopyWith(SignUpButtonSuccessData value, $Res Function(SignUpButtonSuccessData) _then) = _$SignUpButtonSuccessDataCopyWithImpl;
@useResult
$Res call({
 AuthResponse data
});




}
/// @nodoc
class _$SignUpButtonSuccessDataCopyWithImpl<$Res>
    implements $SignUpButtonSuccessDataCopyWith<$Res> {
  _$SignUpButtonSuccessDataCopyWithImpl(this._self, this._then);

  final SignUpButtonSuccessData _self;
  final $Res Function(SignUpButtonSuccessData) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignUpButtonSuccessData(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthResponse,
  ));
}


}

// dart format on

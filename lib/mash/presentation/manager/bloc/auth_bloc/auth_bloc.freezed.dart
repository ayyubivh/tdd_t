// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequest loginRequest, BuildContext context});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequest = null,
    Object? context = null,
  }) {
    return _then(_$LoginImpl(
      loginRequest: null == loginRequest
          ? _value.loginRequest
          : loginRequest // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.loginRequest, required this.context});

  @override
  final LoginRequest loginRequest;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.login(loginRequest: $loginRequest, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.loginRequest, loginRequest) ||
                other.loginRequest == loginRequest) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequest, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return login(loginRequest, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return login?.call(loginRequest, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequest, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final LoginRequest loginRequest,
      required final BuildContext context}) = _$LoginImpl;

  LoginRequest get loginRequest;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SignOutImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.signOut(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      __$$SignOutImplCopyWithImpl<_$SignOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return signOut(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return signOut?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut({required final BuildContext context}) = _$SignOutImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyUserImplCopyWith<$Res> {
  factory _$$VerifyUserImplCopyWith(
          _$VerifyUserImpl value, $Res Function(_$VerifyUserImpl) then) =
      __$$VerifyUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$VerifyUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyUserImpl>
    implements _$$VerifyUserImplCopyWith<$Res> {
  __$$VerifyUserImplCopyWithImpl(
      _$VerifyUserImpl _value, $Res Function(_$VerifyUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$VerifyUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyUserImpl implements _VerifyUser {
  const _$VerifyUserImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthEvent.verify(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserImplCopyWith<_$VerifyUserImpl> get copyWith =>
      __$$VerifyUserImplCopyWithImpl<_$VerifyUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return verify(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return verify?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _VerifyUser implements AuthEvent {
  const factory _VerifyUser({required final String userId}) = _$VerifyUserImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$VerifyUserImplCopyWith<_$VerifyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpForgotPasswordImplCopyWith<$Res> {
  factory _$$SendOtpForgotPasswordImplCopyWith(
          _$SendOtpForgotPasswordImpl value,
          $Res Function(_$SendOtpForgotPasswordImpl) then) =
      __$$SendOtpForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendOtpRequest sendOtpRequest});
}

/// @nodoc
class __$$SendOtpForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpForgotPasswordImpl>
    implements _$$SendOtpForgotPasswordImplCopyWith<$Res> {
  __$$SendOtpForgotPasswordImplCopyWithImpl(_$SendOtpForgotPasswordImpl _value,
      $Res Function(_$SendOtpForgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendOtpRequest = null,
  }) {
    return _then(_$SendOtpForgotPasswordImpl(
      sendOtpRequest: null == sendOtpRequest
          ? _value.sendOtpRequest
          : sendOtpRequest // ignore: cast_nullable_to_non_nullable
              as SendOtpRequest,
    ));
  }
}

/// @nodoc

class _$SendOtpForgotPasswordImpl implements _SendOtpForgotPassword {
  const _$SendOtpForgotPasswordImpl({required this.sendOtpRequest});

  @override
  final SendOtpRequest sendOtpRequest;

  @override
  String toString() {
    return 'AuthEvent.sendOtpForgotPassWord(sendOtpRequest: $sendOtpRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpForgotPasswordImpl &&
            (identical(other.sendOtpRequest, sendOtpRequest) ||
                other.sendOtpRequest == sendOtpRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendOtpRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpForgotPasswordImplCopyWith<_$SendOtpForgotPasswordImpl>
      get copyWith => __$$SendOtpForgotPasswordImplCopyWithImpl<
          _$SendOtpForgotPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return sendOtpForgotPassWord(sendOtpRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return sendOtpForgotPassWord?.call(sendOtpRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (sendOtpForgotPassWord != null) {
      return sendOtpForgotPassWord(sendOtpRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return sendOtpForgotPassWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return sendOtpForgotPassWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (sendOtpForgotPassWord != null) {
      return sendOtpForgotPassWord(this);
    }
    return orElse();
  }
}

abstract class _SendOtpForgotPassword implements AuthEvent {
  const factory _SendOtpForgotPassword(
          {required final SendOtpRequest sendOtpRequest}) =
      _$SendOtpForgotPasswordImpl;

  SendOtpRequest get sendOtpRequest;
  @JsonKey(ignore: true)
  _$$SendOtpForgotPasswordImplCopyWith<_$SendOtpForgotPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateOtpRequestImplCopyWith<$Res> {
  factory _$$ValidateOtpRequestImplCopyWith(_$ValidateOtpRequestImpl value,
          $Res Function(_$ValidateOtpRequestImpl) then) =
      __$$ValidateOtpRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$ValidateOtpRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateOtpRequestImpl>
    implements _$$ValidateOtpRequestImplCopyWith<$Res> {
  __$$ValidateOtpRequestImplCopyWithImpl(_$ValidateOtpRequestImpl _value,
      $Res Function(_$ValidateOtpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$ValidateOtpRequestImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateOtpRequestImpl implements _ValidateOtpRequest {
  const _$ValidateOtpRequestImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.validateOtpRequest(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpRequestImplCopyWith<_$ValidateOtpRequestImpl> get copyWith =>
      __$$ValidateOtpRequestImplCopyWithImpl<_$ValidateOtpRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return validateOtpRequest(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return validateOtpRequest?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (validateOtpRequest != null) {
      return validateOtpRequest(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return validateOtpRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return validateOtpRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (validateOtpRequest != null) {
      return validateOtpRequest(this);
    }
    return orElse();
  }
}

abstract class _ValidateOtpRequest implements AuthEvent {
  const factory _ValidateOtpRequest({required final String otp}) =
      _$ValidateOtpRequestImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$ValidateOtpRequestImplCopyWith<_$ValidateOtpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.updatePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest, BuildContext context)
        login,
    required TResult Function() getUser,
    required TResult Function(BuildContext context) signOut,
    required TResult Function(String userId) verify,
    required TResult Function(SendOtpRequest sendOtpRequest)
        sendOtpForgotPassWord,
    required TResult Function(String otp) validateOtpRequest,
    required TResult Function() updatePassword,
  }) {
    return updatePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult? Function()? getUser,
    TResult? Function(BuildContext context)? signOut,
    TResult? Function(String userId)? verify,
    TResult? Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult? Function(String otp)? validateOtpRequest,
    TResult? Function()? updatePassword,
  }) {
    return updatePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest, BuildContext context)? login,
    TResult Function()? getUser,
    TResult Function(BuildContext context)? signOut,
    TResult Function(String userId)? verify,
    TResult Function(SendOtpRequest sendOtpRequest)? sendOtpForgotPassWord,
    TResult Function(String otp)? validateOtpRequest,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_VerifyUser value) verify,
    required TResult Function(_SendOtpForgotPassword value)
        sendOtpForgotPassWord,
    required TResult Function(_ValidateOtpRequest value) validateOtpRequest,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_VerifyUser value)? verify,
    TResult? Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult? Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_VerifyUser value)? verify,
    TResult Function(_SendOtpForgotPassword value)? sendOtpForgotPassWord,
    TResult Function(_ValidateOtpRequest value)? validateOtpRequest,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements AuthEvent {
  const factory _UpdatePassword() = _$UpdatePasswordImpl;
}

/// @nodoc
mixin _$AuthState {
  ResponseClassify<AuthResponseEntity>? get loginResponse =>
      throw _privateConstructorUsedError;
  LoginResTableEntity? get userDetails => throw _privateConstructorUsedError;
  ResponseClassify<void>? get signOutResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<VerifyUserEntity>? get verifyUserResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<bool>? get updatePassword =>
      throw _privateConstructorUsedError;
  bool? get validateUser => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get mobNo => throw _privateConstructorUsedError;
  String? get compId => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {ResponseClassify<AuthResponseEntity>? loginResponse,
      LoginResTableEntity? userDetails,
      ResponseClassify<void>? signOutResponse,
      ResponseClassify<VerifyUserEntity>? verifyUserResponse,
      ResponseClassify<bool>? updatePassword,
      bool? validateUser,
      String? userId,
      String? mobNo,
      String? compId,
      String? userType,
      String? password});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? userDetails = freezed,
    Object? signOutResponse = freezed,
    Object? verifyUserResponse = freezed,
    Object? updatePassword = freezed,
    Object? validateUser = freezed,
    Object? userId = freezed,
    Object? mobNo = freezed,
    Object? compId = freezed,
    Object? userType = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<AuthResponseEntity>?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as LoginResTableEntity?,
      signOutResponse: freezed == signOutResponse
          ? _value.signOutResponse
          : signOutResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      verifyUserResponse: freezed == verifyUserResponse
          ? _value.verifyUserResponse
          : verifyUserResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<VerifyUserEntity>?,
      updatePassword: freezed == updatePassword
          ? _value.updatePassword
          : updatePassword // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<bool>?,
      validateUser: freezed == validateUser
          ? _value.validateUser
          : validateUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobNo: freezed == mobNo
          ? _value.mobNo
          : mobNo // ignore: cast_nullable_to_non_nullable
              as String?,
      compId: freezed == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<AuthResponseEntity>? loginResponse,
      LoginResTableEntity? userDetails,
      ResponseClassify<void>? signOutResponse,
      ResponseClassify<VerifyUserEntity>? verifyUserResponse,
      ResponseClassify<bool>? updatePassword,
      bool? validateUser,
      String? userId,
      String? mobNo,
      String? compId,
      String? userType,
      String? password});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = freezed,
    Object? userDetails = freezed,
    Object? signOutResponse = freezed,
    Object? verifyUserResponse = freezed,
    Object? updatePassword = freezed,
    Object? validateUser = freezed,
    Object? userId = freezed,
    Object? mobNo = freezed,
    Object? compId = freezed,
    Object? userType = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AuthStateImpl(
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<AuthResponseEntity>?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as LoginResTableEntity?,
      signOutResponse: freezed == signOutResponse
          ? _value.signOutResponse
          : signOutResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      verifyUserResponse: freezed == verifyUserResponse
          ? _value.verifyUserResponse
          : verifyUserResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<VerifyUserEntity>?,
      updatePassword: freezed == updatePassword
          ? _value.updatePassword
          : updatePassword // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<bool>?,
      validateUser: freezed == validateUser
          ? _value.validateUser
          : validateUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobNo: freezed == mobNo
          ? _value.mobNo
          : mobNo // ignore: cast_nullable_to_non_nullable
              as String?,
      compId: freezed == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.loginResponse,
      this.userDetails,
      this.signOutResponse,
      this.verifyUserResponse,
      this.updatePassword,
      this.validateUser,
      this.userId,
      this.mobNo,
      this.compId,
      this.userType,
      this.password});

  @override
  final ResponseClassify<AuthResponseEntity>? loginResponse;
  @override
  final LoginResTableEntity? userDetails;
  @override
  final ResponseClassify<void>? signOutResponse;
  @override
  final ResponseClassify<VerifyUserEntity>? verifyUserResponse;
  @override
  final ResponseClassify<bool>? updatePassword;
  @override
  final bool? validateUser;
  @override
  final String? userId;
  @override
  final String? mobNo;
  @override
  final String? compId;
  @override
  final String? userType;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthState(loginResponse: $loginResponse, userDetails: $userDetails, signOutResponse: $signOutResponse, verifyUserResponse: $verifyUserResponse, updatePassword: $updatePassword, validateUser: $validateUser, userId: $userId, mobNo: $mobNo, compId: $compId, userType: $userType, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.signOutResponse, signOutResponse) ||
                other.signOutResponse == signOutResponse) &&
            (identical(other.verifyUserResponse, verifyUserResponse) ||
                other.verifyUserResponse == verifyUserResponse) &&
            (identical(other.updatePassword, updatePassword) ||
                other.updatePassword == updatePassword) &&
            (identical(other.validateUser, validateUser) ||
                other.validateUser == validateUser) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mobNo, mobNo) || other.mobNo == mobNo) &&
            (identical(other.compId, compId) || other.compId == compId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loginResponse,
      userDetails,
      signOutResponse,
      verifyUserResponse,
      updatePassword,
      validateUser,
      userId,
      mobNo,
      compId,
      userType,
      password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final ResponseClassify<AuthResponseEntity>? loginResponse,
      final LoginResTableEntity? userDetails,
      final ResponseClassify<void>? signOutResponse,
      final ResponseClassify<VerifyUserEntity>? verifyUserResponse,
      final ResponseClassify<bool>? updatePassword,
      final bool? validateUser,
      final String? userId,
      final String? mobNo,
      final String? compId,
      final String? userType,
      final String? password}) = _$AuthStateImpl;

  @override
  ResponseClassify<AuthResponseEntity>? get loginResponse;
  @override
  LoginResTableEntity? get userDetails;
  @override
  ResponseClassify<void>? get signOutResponse;
  @override
  ResponseClassify<VerifyUserEntity>? get verifyUserResponse;
  @override
  ResponseClassify<bool>? get updatePassword;
  @override
  bool? get validateUser;
  @override
  String? get userId;
  @override
  String? get mobNo;
  @override
  String? get compId;
  @override
  String? get userType;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAddOnEvent,
    required TResult Function(String module, String description, String rating)
        postFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAddOnEvent,
    TResult? Function(String module, String description, String rating)?
        postFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAddOnEvent,
    TResult Function(String module, String description, String rating)?
        postFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddOnEvent value) getAddOnEvent,
    required TResult Function(_PostFeedback value) postFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult? Function(_PostFeedback value)? postFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult Function(_PostFeedback value)? postFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAddOnEventImplCopyWith<$Res> {
  factory _$$GetAddOnEventImplCopyWith(
          _$GetAddOnEventImpl value, $Res Function(_$GetAddOnEventImpl) then) =
      __$$GetAddOnEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAddOnEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAddOnEventImpl>
    implements _$$GetAddOnEventImplCopyWith<$Res> {
  __$$GetAddOnEventImplCopyWithImpl(
      _$GetAddOnEventImpl _value, $Res Function(_$GetAddOnEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAddOnEventImpl implements _GetAddOnEvent {
  const _$GetAddOnEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getAddOnEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAddOnEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAddOnEvent,
    required TResult Function(String module, String description, String rating)
        postFeedback,
  }) {
    return getAddOnEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAddOnEvent,
    TResult? Function(String module, String description, String rating)?
        postFeedback,
  }) {
    return getAddOnEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAddOnEvent,
    TResult Function(String module, String description, String rating)?
        postFeedback,
    required TResult orElse(),
  }) {
    if (getAddOnEvent != null) {
      return getAddOnEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddOnEvent value) getAddOnEvent,
    required TResult Function(_PostFeedback value) postFeedback,
  }) {
    return getAddOnEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult? Function(_PostFeedback value)? postFeedback,
  }) {
    return getAddOnEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult Function(_PostFeedback value)? postFeedback,
    required TResult orElse(),
  }) {
    if (getAddOnEvent != null) {
      return getAddOnEvent(this);
    }
    return orElse();
  }
}

abstract class _GetAddOnEvent implements HomeEvent {
  const factory _GetAddOnEvent() = _$GetAddOnEventImpl;
}

/// @nodoc
abstract class _$$PostFeedbackImplCopyWith<$Res> {
  factory _$$PostFeedbackImplCopyWith(
          _$PostFeedbackImpl value, $Res Function(_$PostFeedbackImpl) then) =
      __$$PostFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String module, String description, String rating});
}

/// @nodoc
class __$$PostFeedbackImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PostFeedbackImpl>
    implements _$$PostFeedbackImplCopyWith<$Res> {
  __$$PostFeedbackImplCopyWithImpl(
      _$PostFeedbackImpl _value, $Res Function(_$PostFeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
    Object? description = null,
    Object? rating = null,
  }) {
    return _then(_$PostFeedbackImpl(
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostFeedbackImpl implements _PostFeedback {
  const _$PostFeedbackImpl(
      {required this.module, required this.description, required this.rating});

  @override
  final String module;
  @override
  final String description;
  @override
  final String rating;

  @override
  String toString() {
    return 'HomeEvent.postFeedback(module: $module, description: $description, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedbackImpl &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module, description, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeedbackImplCopyWith<_$PostFeedbackImpl> get copyWith =>
      __$$PostFeedbackImplCopyWithImpl<_$PostFeedbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAddOnEvent,
    required TResult Function(String module, String description, String rating)
        postFeedback,
  }) {
    return postFeedback(module, description, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAddOnEvent,
    TResult? Function(String module, String description, String rating)?
        postFeedback,
  }) {
    return postFeedback?.call(module, description, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAddOnEvent,
    TResult Function(String module, String description, String rating)?
        postFeedback,
    required TResult orElse(),
  }) {
    if (postFeedback != null) {
      return postFeedback(module, description, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddOnEvent value) getAddOnEvent,
    required TResult Function(_PostFeedback value) postFeedback,
  }) {
    return postFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult? Function(_PostFeedback value)? postFeedback,
  }) {
    return postFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddOnEvent value)? getAddOnEvent,
    TResult Function(_PostFeedback value)? postFeedback,
    required TResult orElse(),
  }) {
    if (postFeedback != null) {
      return postFeedback(this);
    }
    return orElse();
  }
}

abstract class _PostFeedback implements HomeEvent {
  const factory _PostFeedback(
      {required final String module,
      required final String description,
      required final String rating}) = _$PostFeedbackImpl;

  String get module;
  String get description;
  String get rating;
  @JsonKey(ignore: true)
  _$$PostFeedbackImplCopyWith<_$PostFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  ResponseClassify<List<AddOnEntity>> get addOnResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<void> get postFeedback => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ResponseClassify<List<AddOnEntity>> addOnResponse,
      ResponseClassify<void> postFeedback});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOnResponse = null,
    Object? postFeedback = null,
  }) {
    return _then(_value.copyWith(
      addOnResponse: null == addOnResponse
          ? _value.addOnResponse
          : addOnResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AddOnEntity>>,
      postFeedback: null == postFeedback
          ? _value.postFeedback
          : postFeedback // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<AddOnEntity>> addOnResponse,
      ResponseClassify<void> postFeedback});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOnResponse = null,
    Object? postFeedback = null,
  }) {
    return _then(_$HomeStateImpl(
      addOnResponse: null == addOnResponse
          ? _value.addOnResponse
          : addOnResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AddOnEntity>>,
      postFeedback: null == postFeedback
          ? _value.postFeedback
          : postFeedback // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.addOnResponse, required this.postFeedback});

  @override
  final ResponseClassify<List<AddOnEntity>> addOnResponse;
  @override
  final ResponseClassify<void> postFeedback;

  @override
  String toString() {
    return 'HomeState(addOnResponse: $addOnResponse, postFeedback: $postFeedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.addOnResponse, addOnResponse) ||
                other.addOnResponse == addOnResponse) &&
            (identical(other.postFeedback, postFeedback) ||
                other.postFeedback == postFeedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addOnResponse, postFeedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final ResponseClassify<List<AddOnEntity>> addOnResponse,
      required final ResponseClassify<void> postFeedback}) = _$HomeStateImpl;

  @override
  ResponseClassify<List<AddOnEntity>> get addOnResponse;
  @override
  ResponseClassify<void> get postFeedback;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

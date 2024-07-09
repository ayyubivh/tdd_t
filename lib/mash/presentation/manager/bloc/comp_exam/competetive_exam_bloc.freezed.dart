// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competetive_exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompetetiveExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String flag) getTobeRegistered,
    required TResult Function(String examId) getTobeRegisteredDetails,
    required TResult Function(String regStatus, String selfRate, String examId)
        submitCompetetiveExamTobeRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String flag)? getTobeRegistered,
    TResult? Function(String examId)? getTobeRegisteredDetails,
    TResult? Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String flag)? getTobeRegistered,
    TResult Function(String examId)? getTobeRegisteredDetails,
    TResult Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTobeRegistered value) getTobeRegistered,
    required TResult Function(_GetTobeRegisteredDetails value)
        getTobeRegisteredDetails,
    required TResult Function(_SubmitCompetetiveTobeRegistered value)
        submitCompetetiveExamTobeRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult? Function(_GetTobeRegisteredDetails value)?
        getTobeRegisteredDetails,
    TResult? Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult Function(_GetTobeRegisteredDetails value)? getTobeRegisteredDetails,
    TResult Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetetiveExamEventCopyWith<$Res> {
  factory $CompetetiveExamEventCopyWith(CompetetiveExamEvent value,
          $Res Function(CompetetiveExamEvent) then) =
      _$CompetetiveExamEventCopyWithImpl<$Res, CompetetiveExamEvent>;
}

/// @nodoc
class _$CompetetiveExamEventCopyWithImpl<$Res,
        $Val extends CompetetiveExamEvent>
    implements $CompetetiveExamEventCopyWith<$Res> {
  _$CompetetiveExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTobeRegisteredImplCopyWith<$Res> {
  factory _$$GetTobeRegisteredImplCopyWith(_$GetTobeRegisteredImpl value,
          $Res Function(_$GetTobeRegisteredImpl) then) =
      __$$GetTobeRegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String flag});
}

/// @nodoc
class __$$GetTobeRegisteredImplCopyWithImpl<$Res>
    extends _$CompetetiveExamEventCopyWithImpl<$Res, _$GetTobeRegisteredImpl>
    implements _$$GetTobeRegisteredImplCopyWith<$Res> {
  __$$GetTobeRegisteredImplCopyWithImpl(_$GetTobeRegisteredImpl _value,
      $Res Function(_$GetTobeRegisteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
  }) {
    return _then(_$GetTobeRegisteredImpl(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTobeRegisteredImpl implements _GetTobeRegistered {
  const _$GetTobeRegisteredImpl({required this.flag});

  @override
  final String flag;

  @override
  String toString() {
    return 'CompetetiveExamEvent.getTobeRegistered(flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTobeRegisteredImpl &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTobeRegisteredImplCopyWith<_$GetTobeRegisteredImpl> get copyWith =>
      __$$GetTobeRegisteredImplCopyWithImpl<_$GetTobeRegisteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String flag) getTobeRegistered,
    required TResult Function(String examId) getTobeRegisteredDetails,
    required TResult Function(String regStatus, String selfRate, String examId)
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegistered(flag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String flag)? getTobeRegistered,
    TResult? Function(String examId)? getTobeRegisteredDetails,
    TResult? Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegistered?.call(flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String flag)? getTobeRegistered,
    TResult Function(String examId)? getTobeRegisteredDetails,
    TResult Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (getTobeRegistered != null) {
      return getTobeRegistered(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTobeRegistered value) getTobeRegistered,
    required TResult Function(_GetTobeRegisteredDetails value)
        getTobeRegisteredDetails,
    required TResult Function(_SubmitCompetetiveTobeRegistered value)
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult? Function(_GetTobeRegisteredDetails value)?
        getTobeRegisteredDetails,
    TResult? Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult Function(_GetTobeRegisteredDetails value)? getTobeRegisteredDetails,
    TResult Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (getTobeRegistered != null) {
      return getTobeRegistered(this);
    }
    return orElse();
  }
}

abstract class _GetTobeRegistered implements CompetetiveExamEvent {
  const factory _GetTobeRegistered({required final String flag}) =
      _$GetTobeRegisteredImpl;

  String get flag;
  @JsonKey(ignore: true)
  _$$GetTobeRegisteredImplCopyWith<_$GetTobeRegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTobeRegisteredDetailsImplCopyWith<$Res> {
  factory _$$GetTobeRegisteredDetailsImplCopyWith(
          _$GetTobeRegisteredDetailsImpl value,
          $Res Function(_$GetTobeRegisteredDetailsImpl) then) =
      __$$GetTobeRegisteredDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String examId});
}

/// @nodoc
class __$$GetTobeRegisteredDetailsImplCopyWithImpl<$Res>
    extends _$CompetetiveExamEventCopyWithImpl<$Res,
        _$GetTobeRegisteredDetailsImpl>
    implements _$$GetTobeRegisteredDetailsImplCopyWith<$Res> {
  __$$GetTobeRegisteredDetailsImplCopyWithImpl(
      _$GetTobeRegisteredDetailsImpl _value,
      $Res Function(_$GetTobeRegisteredDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_$GetTobeRegisteredDetailsImpl(
      null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTobeRegisteredDetailsImpl implements _GetTobeRegisteredDetails {
  const _$GetTobeRegisteredDetailsImpl(this.examId);

  @override
  final String examId;

  @override
  String toString() {
    return 'CompetetiveExamEvent.getTobeRegisteredDetails(examId: $examId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTobeRegisteredDetailsImpl &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, examId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTobeRegisteredDetailsImplCopyWith<_$GetTobeRegisteredDetailsImpl>
      get copyWith => __$$GetTobeRegisteredDetailsImplCopyWithImpl<
          _$GetTobeRegisteredDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String flag) getTobeRegistered,
    required TResult Function(String examId) getTobeRegisteredDetails,
    required TResult Function(String regStatus, String selfRate, String examId)
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegisteredDetails(examId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String flag)? getTobeRegistered,
    TResult? Function(String examId)? getTobeRegisteredDetails,
    TResult? Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegisteredDetails?.call(examId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String flag)? getTobeRegistered,
    TResult Function(String examId)? getTobeRegisteredDetails,
    TResult Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (getTobeRegisteredDetails != null) {
      return getTobeRegisteredDetails(examId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTobeRegistered value) getTobeRegistered,
    required TResult Function(_GetTobeRegisteredDetails value)
        getTobeRegisteredDetails,
    required TResult Function(_SubmitCompetetiveTobeRegistered value)
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegisteredDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult? Function(_GetTobeRegisteredDetails value)?
        getTobeRegisteredDetails,
    TResult? Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return getTobeRegisteredDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult Function(_GetTobeRegisteredDetails value)? getTobeRegisteredDetails,
    TResult Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (getTobeRegisteredDetails != null) {
      return getTobeRegisteredDetails(this);
    }
    return orElse();
  }
}

abstract class _GetTobeRegisteredDetails implements CompetetiveExamEvent {
  const factory _GetTobeRegisteredDetails(final String examId) =
      _$GetTobeRegisteredDetailsImpl;

  String get examId;
  @JsonKey(ignore: true)
  _$$GetTobeRegisteredDetailsImplCopyWith<_$GetTobeRegisteredDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitCompetetiveTobeRegisteredImplCopyWith<$Res> {
  factory _$$SubmitCompetetiveTobeRegisteredImplCopyWith(
          _$SubmitCompetetiveTobeRegisteredImpl value,
          $Res Function(_$SubmitCompetetiveTobeRegisteredImpl) then) =
      __$$SubmitCompetetiveTobeRegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String regStatus, String selfRate, String examId});
}

/// @nodoc
class __$$SubmitCompetetiveTobeRegisteredImplCopyWithImpl<$Res>
    extends _$CompetetiveExamEventCopyWithImpl<$Res,
        _$SubmitCompetetiveTobeRegisteredImpl>
    implements _$$SubmitCompetetiveTobeRegisteredImplCopyWith<$Res> {
  __$$SubmitCompetetiveTobeRegisteredImplCopyWithImpl(
      _$SubmitCompetetiveTobeRegisteredImpl _value,
      $Res Function(_$SubmitCompetetiveTobeRegisteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regStatus = null,
    Object? selfRate = null,
    Object? examId = null,
  }) {
    return _then(_$SubmitCompetetiveTobeRegisteredImpl(
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as String,
      selfRate: null == selfRate
          ? _value.selfRate
          : selfRate // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitCompetetiveTobeRegisteredImpl
    implements _SubmitCompetetiveTobeRegistered {
  const _$SubmitCompetetiveTobeRegisteredImpl(
      {required this.regStatus, required this.selfRate, required this.examId});

  @override
  final String regStatus;
  @override
  final String selfRate;
  @override
  final String examId;

  @override
  String toString() {
    return 'CompetetiveExamEvent.submitCompetetiveExamTobeRegistered(regStatus: $regStatus, selfRate: $selfRate, examId: $examId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCompetetiveTobeRegisteredImpl &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus) &&
            (identical(other.selfRate, selfRate) ||
                other.selfRate == selfRate) &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regStatus, selfRate, examId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitCompetetiveTobeRegisteredImplCopyWith<
          _$SubmitCompetetiveTobeRegisteredImpl>
      get copyWith => __$$SubmitCompetetiveTobeRegisteredImplCopyWithImpl<
          _$SubmitCompetetiveTobeRegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String flag) getTobeRegistered,
    required TResult Function(String examId) getTobeRegisteredDetails,
    required TResult Function(String regStatus, String selfRate, String examId)
        submitCompetetiveExamTobeRegistered,
  }) {
    return submitCompetetiveExamTobeRegistered(regStatus, selfRate, examId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String flag)? getTobeRegistered,
    TResult? Function(String examId)? getTobeRegisteredDetails,
    TResult? Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return submitCompetetiveExamTobeRegistered?.call(
        regStatus, selfRate, examId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String flag)? getTobeRegistered,
    TResult Function(String examId)? getTobeRegisteredDetails,
    TResult Function(String regStatus, String selfRate, String examId)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (submitCompetetiveExamTobeRegistered != null) {
      return submitCompetetiveExamTobeRegistered(regStatus, selfRate, examId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTobeRegistered value) getTobeRegistered,
    required TResult Function(_GetTobeRegisteredDetails value)
        getTobeRegisteredDetails,
    required TResult Function(_SubmitCompetetiveTobeRegistered value)
        submitCompetetiveExamTobeRegistered,
  }) {
    return submitCompetetiveExamTobeRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult? Function(_GetTobeRegisteredDetails value)?
        getTobeRegisteredDetails,
    TResult? Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
  }) {
    return submitCompetetiveExamTobeRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTobeRegistered value)? getTobeRegistered,
    TResult Function(_GetTobeRegisteredDetails value)? getTobeRegisteredDetails,
    TResult Function(_SubmitCompetetiveTobeRegistered value)?
        submitCompetetiveExamTobeRegistered,
    required TResult orElse(),
  }) {
    if (submitCompetetiveExamTobeRegistered != null) {
      return submitCompetetiveExamTobeRegistered(this);
    }
    return orElse();
  }
}

abstract class _SubmitCompetetiveTobeRegistered
    implements CompetetiveExamEvent {
  const factory _SubmitCompetetiveTobeRegistered(
      {required final String regStatus,
      required final String selfRate,
      required final String examId}) = _$SubmitCompetetiveTobeRegisteredImpl;

  String get regStatus;
  String get selfRate;
  String get examId;
  @JsonKey(ignore: true)
  _$$SubmitCompetetiveTobeRegisteredImplCopyWith<
          _$SubmitCompetetiveTobeRegisteredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompetetiveExamState {
  ResponseClassify<List<CompExamTobeRegistedEntity>>
      get compExamTobeRegisteredResponse => throw _privateConstructorUsedError;
  ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
      get compExamTobeRegisteredDetailsResponse =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompetetiveExamStateCopyWith<CompetetiveExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetetiveExamStateCopyWith<$Res> {
  factory $CompetetiveExamStateCopyWith(CompetetiveExamState value,
          $Res Function(CompetetiveExamState) then) =
      _$CompetetiveExamStateCopyWithImpl<$Res, CompetetiveExamState>;
  @useResult
  $Res call(
      {ResponseClassify<List<CompExamTobeRegistedEntity>>
          compExamTobeRegisteredResponse,
      ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
          compExamTobeRegisteredDetailsResponse});
}

/// @nodoc
class _$CompetetiveExamStateCopyWithImpl<$Res,
        $Val extends CompetetiveExamState>
    implements $CompetetiveExamStateCopyWith<$Res> {
  _$CompetetiveExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compExamTobeRegisteredResponse = null,
    Object? compExamTobeRegisteredDetailsResponse = null,
  }) {
    return _then(_value.copyWith(
      compExamTobeRegisteredResponse: null == compExamTobeRegisteredResponse
          ? _value.compExamTobeRegisteredResponse
          : compExamTobeRegisteredResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<CompExamTobeRegistedEntity>>,
      compExamTobeRegisteredDetailsResponse: null ==
              compExamTobeRegisteredDetailsResponse
          ? _value.compExamTobeRegisteredDetailsResponse
          : compExamTobeRegisteredDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompetetiveExamStateImplCopyWith<$Res>
    implements $CompetetiveExamStateCopyWith<$Res> {
  factory _$$CompetetiveExamStateImplCopyWith(_$CompetetiveExamStateImpl value,
          $Res Function(_$CompetetiveExamStateImpl) then) =
      __$$CompetetiveExamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<CompExamTobeRegistedEntity>>
          compExamTobeRegisteredResponse,
      ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
          compExamTobeRegisteredDetailsResponse});
}

/// @nodoc
class __$$CompetetiveExamStateImplCopyWithImpl<$Res>
    extends _$CompetetiveExamStateCopyWithImpl<$Res, _$CompetetiveExamStateImpl>
    implements _$$CompetetiveExamStateImplCopyWith<$Res> {
  __$$CompetetiveExamStateImplCopyWithImpl(_$CompetetiveExamStateImpl _value,
      $Res Function(_$CompetetiveExamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compExamTobeRegisteredResponse = null,
    Object? compExamTobeRegisteredDetailsResponse = null,
  }) {
    return _then(_$CompetetiveExamStateImpl(
      compExamTobeRegisteredResponse: null == compExamTobeRegisteredResponse
          ? _value.compExamTobeRegisteredResponse
          : compExamTobeRegisteredResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<CompExamTobeRegistedEntity>>,
      compExamTobeRegisteredDetailsResponse: null ==
              compExamTobeRegisteredDetailsResponse
          ? _value.compExamTobeRegisteredDetailsResponse
          : compExamTobeRegisteredDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>,
    ));
  }
}

/// @nodoc

class _$CompetetiveExamStateImpl implements _CompetetiveExamState {
  const _$CompetetiveExamStateImpl(
      {required this.compExamTobeRegisteredResponse,
      required this.compExamTobeRegisteredDetailsResponse});

  @override
  final ResponseClassify<List<CompExamTobeRegistedEntity>>
      compExamTobeRegisteredResponse;
  @override
  final ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
      compExamTobeRegisteredDetailsResponse;

  @override
  String toString() {
    return 'CompetetiveExamState(compExamTobeRegisteredResponse: $compExamTobeRegisteredResponse, compExamTobeRegisteredDetailsResponse: $compExamTobeRegisteredDetailsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetetiveExamStateImpl &&
            (identical(other.compExamTobeRegisteredResponse,
                    compExamTobeRegisteredResponse) ||
                other.compExamTobeRegisteredResponse ==
                    compExamTobeRegisteredResponse) &&
            (identical(other.compExamTobeRegisteredDetailsResponse,
                    compExamTobeRegisteredDetailsResponse) ||
                other.compExamTobeRegisteredDetailsResponse ==
                    compExamTobeRegisteredDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, compExamTobeRegisteredResponse,
      compExamTobeRegisteredDetailsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetetiveExamStateImplCopyWith<_$CompetetiveExamStateImpl>
      get copyWith =>
          __$$CompetetiveExamStateImplCopyWithImpl<_$CompetetiveExamStateImpl>(
              this, _$identity);
}

abstract class _CompetetiveExamState implements CompetetiveExamState {
  const factory _CompetetiveExamState(
      {required final ResponseClassify<List<CompExamTobeRegistedEntity>>
          compExamTobeRegisteredResponse,
      required final ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
          compExamTobeRegisteredDetailsResponse}) = _$CompetetiveExamStateImpl;

  @override
  ResponseClassify<List<CompExamTobeRegistedEntity>>
      get compExamTobeRegisteredResponse;
  @override
  ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
      get compExamTobeRegisteredDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$$CompetetiveExamStateImplCopyWith<_$CompetetiveExamStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

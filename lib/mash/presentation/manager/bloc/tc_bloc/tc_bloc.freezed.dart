// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TcEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTcReason,
    required TResult Function() getTcStatus,
    required TResult Function(String tcId, BuildContext context) cancelTc,
    required TResult Function(
            String studentId, String reaseonId, String expectedDate)
        applyTc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTcReason,
    TResult? Function()? getTcStatus,
    TResult? Function(String tcId, BuildContext context)? cancelTc,
    TResult? Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTcReason,
    TResult Function()? getTcStatus,
    TResult Function(String tcId, BuildContext context)? cancelTc,
    TResult Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTcReason value) getTcReason,
    required TResult Function(_GetTcStatus value) getTcStatus,
    required TResult Function(_CancelTc value) cancelTc,
    required TResult Function(_ApplyTc value) applyTc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTcReason value)? getTcReason,
    TResult? Function(_GetTcStatus value)? getTcStatus,
    TResult? Function(_CancelTc value)? cancelTc,
    TResult? Function(_ApplyTc value)? applyTc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTcReason value)? getTcReason,
    TResult Function(_GetTcStatus value)? getTcStatus,
    TResult Function(_CancelTc value)? cancelTc,
    TResult Function(_ApplyTc value)? applyTc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TcEventCopyWith<$Res> {
  factory $TcEventCopyWith(TcEvent value, $Res Function(TcEvent) then) =
      _$TcEventCopyWithImpl<$Res, TcEvent>;
}

/// @nodoc
class _$TcEventCopyWithImpl<$Res, $Val extends TcEvent>
    implements $TcEventCopyWith<$Res> {
  _$TcEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTcReasonImplCopyWith<$Res> {
  factory _$$GetTcReasonImplCopyWith(
          _$GetTcReasonImpl value, $Res Function(_$GetTcReasonImpl) then) =
      __$$GetTcReasonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTcReasonImplCopyWithImpl<$Res>
    extends _$TcEventCopyWithImpl<$Res, _$GetTcReasonImpl>
    implements _$$GetTcReasonImplCopyWith<$Res> {
  __$$GetTcReasonImplCopyWithImpl(
      _$GetTcReasonImpl _value, $Res Function(_$GetTcReasonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTcReasonImpl implements _GetTcReason {
  const _$GetTcReasonImpl();

  @override
  String toString() {
    return 'TcEvent.getTcReason()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTcReasonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTcReason,
    required TResult Function() getTcStatus,
    required TResult Function(String tcId, BuildContext context) cancelTc,
    required TResult Function(
            String studentId, String reaseonId, String expectedDate)
        applyTc,
  }) {
    return getTcReason();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTcReason,
    TResult? Function()? getTcStatus,
    TResult? Function(String tcId, BuildContext context)? cancelTc,
    TResult? Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
  }) {
    return getTcReason?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTcReason,
    TResult Function()? getTcStatus,
    TResult Function(String tcId, BuildContext context)? cancelTc,
    TResult Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
    required TResult orElse(),
  }) {
    if (getTcReason != null) {
      return getTcReason();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTcReason value) getTcReason,
    required TResult Function(_GetTcStatus value) getTcStatus,
    required TResult Function(_CancelTc value) cancelTc,
    required TResult Function(_ApplyTc value) applyTc,
  }) {
    return getTcReason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTcReason value)? getTcReason,
    TResult? Function(_GetTcStatus value)? getTcStatus,
    TResult? Function(_CancelTc value)? cancelTc,
    TResult? Function(_ApplyTc value)? applyTc,
  }) {
    return getTcReason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTcReason value)? getTcReason,
    TResult Function(_GetTcStatus value)? getTcStatus,
    TResult Function(_CancelTc value)? cancelTc,
    TResult Function(_ApplyTc value)? applyTc,
    required TResult orElse(),
  }) {
    if (getTcReason != null) {
      return getTcReason(this);
    }
    return orElse();
  }
}

abstract class _GetTcReason implements TcEvent {
  const factory _GetTcReason() = _$GetTcReasonImpl;
}

/// @nodoc
abstract class _$$GetTcStatusImplCopyWith<$Res> {
  factory _$$GetTcStatusImplCopyWith(
          _$GetTcStatusImpl value, $Res Function(_$GetTcStatusImpl) then) =
      __$$GetTcStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTcStatusImplCopyWithImpl<$Res>
    extends _$TcEventCopyWithImpl<$Res, _$GetTcStatusImpl>
    implements _$$GetTcStatusImplCopyWith<$Res> {
  __$$GetTcStatusImplCopyWithImpl(
      _$GetTcStatusImpl _value, $Res Function(_$GetTcStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTcStatusImpl implements _GetTcStatus {
  const _$GetTcStatusImpl();

  @override
  String toString() {
    return 'TcEvent.getTcStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTcStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTcReason,
    required TResult Function() getTcStatus,
    required TResult Function(String tcId, BuildContext context) cancelTc,
    required TResult Function(
            String studentId, String reaseonId, String expectedDate)
        applyTc,
  }) {
    return getTcStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTcReason,
    TResult? Function()? getTcStatus,
    TResult? Function(String tcId, BuildContext context)? cancelTc,
    TResult? Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
  }) {
    return getTcStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTcReason,
    TResult Function()? getTcStatus,
    TResult Function(String tcId, BuildContext context)? cancelTc,
    TResult Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
    required TResult orElse(),
  }) {
    if (getTcStatus != null) {
      return getTcStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTcReason value) getTcReason,
    required TResult Function(_GetTcStatus value) getTcStatus,
    required TResult Function(_CancelTc value) cancelTc,
    required TResult Function(_ApplyTc value) applyTc,
  }) {
    return getTcStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTcReason value)? getTcReason,
    TResult? Function(_GetTcStatus value)? getTcStatus,
    TResult? Function(_CancelTc value)? cancelTc,
    TResult? Function(_ApplyTc value)? applyTc,
  }) {
    return getTcStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTcReason value)? getTcReason,
    TResult Function(_GetTcStatus value)? getTcStatus,
    TResult Function(_CancelTc value)? cancelTc,
    TResult Function(_ApplyTc value)? applyTc,
    required TResult orElse(),
  }) {
    if (getTcStatus != null) {
      return getTcStatus(this);
    }
    return orElse();
  }
}

abstract class _GetTcStatus implements TcEvent {
  const factory _GetTcStatus() = _$GetTcStatusImpl;
}

/// @nodoc
abstract class _$$CancelTcImplCopyWith<$Res> {
  factory _$$CancelTcImplCopyWith(
          _$CancelTcImpl value, $Res Function(_$CancelTcImpl) then) =
      __$$CancelTcImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tcId, BuildContext context});
}

/// @nodoc
class __$$CancelTcImplCopyWithImpl<$Res>
    extends _$TcEventCopyWithImpl<$Res, _$CancelTcImpl>
    implements _$$CancelTcImplCopyWith<$Res> {
  __$$CancelTcImplCopyWithImpl(
      _$CancelTcImpl _value, $Res Function(_$CancelTcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tcId = null,
    Object? context = null,
  }) {
    return _then(_$CancelTcImpl(
      null == tcId
          ? _value.tcId
          : tcId // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$CancelTcImpl implements _CancelTc {
  const _$CancelTcImpl(this.tcId, this.context);

  @override
  final String tcId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TcEvent.cancelTc(tcId: $tcId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelTcImpl &&
            (identical(other.tcId, tcId) || other.tcId == tcId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tcId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelTcImplCopyWith<_$CancelTcImpl> get copyWith =>
      __$$CancelTcImplCopyWithImpl<_$CancelTcImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTcReason,
    required TResult Function() getTcStatus,
    required TResult Function(String tcId, BuildContext context) cancelTc,
    required TResult Function(
            String studentId, String reaseonId, String expectedDate)
        applyTc,
  }) {
    return cancelTc(tcId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTcReason,
    TResult? Function()? getTcStatus,
    TResult? Function(String tcId, BuildContext context)? cancelTc,
    TResult? Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
  }) {
    return cancelTc?.call(tcId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTcReason,
    TResult Function()? getTcStatus,
    TResult Function(String tcId, BuildContext context)? cancelTc,
    TResult Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
    required TResult orElse(),
  }) {
    if (cancelTc != null) {
      return cancelTc(tcId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTcReason value) getTcReason,
    required TResult Function(_GetTcStatus value) getTcStatus,
    required TResult Function(_CancelTc value) cancelTc,
    required TResult Function(_ApplyTc value) applyTc,
  }) {
    return cancelTc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTcReason value)? getTcReason,
    TResult? Function(_GetTcStatus value)? getTcStatus,
    TResult? Function(_CancelTc value)? cancelTc,
    TResult? Function(_ApplyTc value)? applyTc,
  }) {
    return cancelTc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTcReason value)? getTcReason,
    TResult Function(_GetTcStatus value)? getTcStatus,
    TResult Function(_CancelTc value)? cancelTc,
    TResult Function(_ApplyTc value)? applyTc,
    required TResult orElse(),
  }) {
    if (cancelTc != null) {
      return cancelTc(this);
    }
    return orElse();
  }
}

abstract class _CancelTc implements TcEvent {
  const factory _CancelTc(final String tcId, final BuildContext context) =
      _$CancelTcImpl;

  String get tcId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$CancelTcImplCopyWith<_$CancelTcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyTcImplCopyWith<$Res> {
  factory _$$ApplyTcImplCopyWith(
          _$ApplyTcImpl value, $Res Function(_$ApplyTcImpl) then) =
      __$$ApplyTcImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId, String reaseonId, String expectedDate});
}

/// @nodoc
class __$$ApplyTcImplCopyWithImpl<$Res>
    extends _$TcEventCopyWithImpl<$Res, _$ApplyTcImpl>
    implements _$$ApplyTcImplCopyWith<$Res> {
  __$$ApplyTcImplCopyWithImpl(
      _$ApplyTcImpl _value, $Res Function(_$ApplyTcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? reaseonId = null,
    Object? expectedDate = null,
  }) {
    return _then(_$ApplyTcImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      reaseonId: null == reaseonId
          ? _value.reaseonId
          : reaseonId // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDate: null == expectedDate
          ? _value.expectedDate
          : expectedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplyTcImpl implements _ApplyTc {
  const _$ApplyTcImpl(
      {required this.studentId,
      required this.reaseonId,
      required this.expectedDate});

  @override
  final String studentId;
  @override
  final String reaseonId;
  @override
  final String expectedDate;

  @override
  String toString() {
    return 'TcEvent.applyTc(studentId: $studentId, reaseonId: $reaseonId, expectedDate: $expectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyTcImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.reaseonId, reaseonId) ||
                other.reaseonId == reaseonId) &&
            (identical(other.expectedDate, expectedDate) ||
                other.expectedDate == expectedDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, reaseonId, expectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyTcImplCopyWith<_$ApplyTcImpl> get copyWith =>
      __$$ApplyTcImplCopyWithImpl<_$ApplyTcImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTcReason,
    required TResult Function() getTcStatus,
    required TResult Function(String tcId, BuildContext context) cancelTc,
    required TResult Function(
            String studentId, String reaseonId, String expectedDate)
        applyTc,
  }) {
    return applyTc(studentId, reaseonId, expectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTcReason,
    TResult? Function()? getTcStatus,
    TResult? Function(String tcId, BuildContext context)? cancelTc,
    TResult? Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
  }) {
    return applyTc?.call(studentId, reaseonId, expectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTcReason,
    TResult Function()? getTcStatus,
    TResult Function(String tcId, BuildContext context)? cancelTc,
    TResult Function(String studentId, String reaseonId, String expectedDate)?
        applyTc,
    required TResult orElse(),
  }) {
    if (applyTc != null) {
      return applyTc(studentId, reaseonId, expectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTcReason value) getTcReason,
    required TResult Function(_GetTcStatus value) getTcStatus,
    required TResult Function(_CancelTc value) cancelTc,
    required TResult Function(_ApplyTc value) applyTc,
  }) {
    return applyTc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTcReason value)? getTcReason,
    TResult? Function(_GetTcStatus value)? getTcStatus,
    TResult? Function(_CancelTc value)? cancelTc,
    TResult? Function(_ApplyTc value)? applyTc,
  }) {
    return applyTc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTcReason value)? getTcReason,
    TResult Function(_GetTcStatus value)? getTcStatus,
    TResult Function(_CancelTc value)? cancelTc,
    TResult Function(_ApplyTc value)? applyTc,
    required TResult orElse(),
  }) {
    if (applyTc != null) {
      return applyTc(this);
    }
    return orElse();
  }
}

abstract class _ApplyTc implements TcEvent {
  const factory _ApplyTc(
      {required final String studentId,
      required final String reaseonId,
      required final String expectedDate}) = _$ApplyTcImpl;

  String get studentId;
  String get reaseonId;
  String get expectedDate;
  @JsonKey(ignore: true)
  _$$ApplyTcImplCopyWith<_$ApplyTcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TcState {
  ResponseClassify<List<TcReasonEntity>> get tcReasonResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<TcStatusEntity>> get tcStatusResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TcStateCopyWith<TcState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TcStateCopyWith<$Res> {
  factory $TcStateCopyWith(TcState value, $Res Function(TcState) then) =
      _$TcStateCopyWithImpl<$Res, TcState>;
  @useResult
  $Res call(
      {ResponseClassify<List<TcReasonEntity>> tcReasonResponse,
      ResponseClassify<List<TcStatusEntity>> tcStatusResponse});
}

/// @nodoc
class _$TcStateCopyWithImpl<$Res, $Val extends TcState>
    implements $TcStateCopyWith<$Res> {
  _$TcStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tcReasonResponse = null,
    Object? tcStatusResponse = null,
  }) {
    return _then(_value.copyWith(
      tcReasonResponse: null == tcReasonResponse
          ? _value.tcReasonResponse
          : tcReasonResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TcReasonEntity>>,
      tcStatusResponse: null == tcStatusResponse
          ? _value.tcStatusResponse
          : tcStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TcStatusEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TcStateImplCopyWith<$Res> implements $TcStateCopyWith<$Res> {
  factory _$$TcStateImplCopyWith(
          _$TcStateImpl value, $Res Function(_$TcStateImpl) then) =
      __$$TcStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<TcReasonEntity>> tcReasonResponse,
      ResponseClassify<List<TcStatusEntity>> tcStatusResponse});
}

/// @nodoc
class __$$TcStateImplCopyWithImpl<$Res>
    extends _$TcStateCopyWithImpl<$Res, _$TcStateImpl>
    implements _$$TcStateImplCopyWith<$Res> {
  __$$TcStateImplCopyWithImpl(
      _$TcStateImpl _value, $Res Function(_$TcStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tcReasonResponse = null,
    Object? tcStatusResponse = null,
  }) {
    return _then(_$TcStateImpl(
      tcReasonResponse: null == tcReasonResponse
          ? _value.tcReasonResponse
          : tcReasonResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TcReasonEntity>>,
      tcStatusResponse: null == tcStatusResponse
          ? _value.tcStatusResponse
          : tcStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TcStatusEntity>>,
    ));
  }
}

/// @nodoc

class _$TcStateImpl implements _TcState {
  const _$TcStateImpl(
      {required this.tcReasonResponse, required this.tcStatusResponse});

  @override
  final ResponseClassify<List<TcReasonEntity>> tcReasonResponse;
  @override
  final ResponseClassify<List<TcStatusEntity>> tcStatusResponse;

  @override
  String toString() {
    return 'TcState(tcReasonResponse: $tcReasonResponse, tcStatusResponse: $tcStatusResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TcStateImpl &&
            (identical(other.tcReasonResponse, tcReasonResponse) ||
                other.tcReasonResponse == tcReasonResponse) &&
            (identical(other.tcStatusResponse, tcStatusResponse) ||
                other.tcStatusResponse == tcStatusResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tcReasonResponse, tcStatusResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TcStateImplCopyWith<_$TcStateImpl> get copyWith =>
      __$$TcStateImplCopyWithImpl<_$TcStateImpl>(this, _$identity);
}

abstract class _TcState implements TcState {
  const factory _TcState(
      {required final ResponseClassify<List<TcReasonEntity>> tcReasonResponse,
      required final ResponseClassify<List<TcStatusEntity>>
          tcStatusResponse}) = _$TcStateImpl;

  @override
  ResponseClassify<List<TcReasonEntity>> get tcReasonResponse;
  @override
  ResponseClassify<List<TcStatusEntity>> get tcStatusResponse;
  @override
  @JsonKey(ignore: true)
  _$$TcStateImplCopyWith<_$TcStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
    required TResult Function(String termId, String studentId)
        getScoreboardDetailsEvent,
    required TResult Function(int index) selectedTermIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
    TResult? Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult? Function(int index)? selectedTermIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    TResult Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult Function(int index)? selectedTermIndexEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
    required TResult Function(_GetScoreboardDetailsEvent value)
        getScoreboardDetailsEvent,
    required TResult Function(_SelectedTermIndexEvent value)
        selectedTermIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult? Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult? Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWordAndThoughtOftheDayEventImplCopyWith<$Res> {
  factory _$$FetchWordAndThoughtOftheDayEventImplCopyWith(
          _$FetchWordAndThoughtOftheDayEventImpl value,
          $Res Function(_$FetchWordAndThoughtOftheDayEventImpl) then) =
      __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res,
        _$FetchWordAndThoughtOftheDayEventImpl>
    implements _$$FetchWordAndThoughtOftheDayEventImplCopyWith<$Res> {
  __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl(
      _$FetchWordAndThoughtOftheDayEventImpl _value,
      $Res Function(_$FetchWordAndThoughtOftheDayEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchWordAndThoughtOftheDayEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchWordAndThoughtOftheDayEventImpl
    implements _FetchWordAndThoughtOftheDayEvent {
  const _$FetchWordAndThoughtOftheDayEventImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DashboardEvent.fetchWordAndThoughtOftheDayEvent(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWordAndThoughtOftheDayEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWordAndThoughtOftheDayEventImplCopyWith<
          _$FetchWordAndThoughtOftheDayEventImpl>
      get copyWith => __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<
          _$FetchWordAndThoughtOftheDayEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
    required TResult Function(String termId, String studentId)
        getScoreboardDetailsEvent,
    required TResult Function(int index) selectedTermIndexEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
    TResult? Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult? Function(int index)? selectedTermIndexEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    TResult Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult Function(int index)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (fetchWordAndThoughtOftheDayEvent != null) {
      return fetchWordAndThoughtOftheDayEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
    required TResult Function(_GetScoreboardDetailsEvent value)
        getScoreboardDetailsEvent,
    required TResult Function(_SelectedTermIndexEvent value)
        selectedTermIndexEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult? Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult? Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (fetchWordAndThoughtOftheDayEvent != null) {
      return fetchWordAndThoughtOftheDayEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchWordAndThoughtOftheDayEvent implements DashboardEvent {
  const factory _FetchWordAndThoughtOftheDayEvent(final BuildContext context) =
      _$FetchWordAndThoughtOftheDayEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchWordAndThoughtOftheDayEventImplCopyWith<
          _$FetchWordAndThoughtOftheDayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTermDetailsEventImplCopyWith<$Res> {
  factory _$$GetTermDetailsEventImplCopyWith(_$GetTermDetailsEventImpl value,
          $Res Function(_$GetTermDetailsEventImpl) then) =
      __$$GetTermDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTermDetailsEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetTermDetailsEventImpl>
    implements _$$GetTermDetailsEventImplCopyWith<$Res> {
  __$$GetTermDetailsEventImplCopyWithImpl(_$GetTermDetailsEventImpl _value,
      $Res Function(_$GetTermDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTermDetailsEventImpl implements _GetTermDetailsEvent {
  const _$GetTermDetailsEventImpl();

  @override
  String toString() {
    return 'DashboardEvent.getTermDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTermDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
    required TResult Function(String termId, String studentId)
        getScoreboardDetailsEvent,
    required TResult Function(int index) selectedTermIndexEvent,
  }) {
    return getTermDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
    TResult? Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult? Function(int index)? selectedTermIndexEvent,
  }) {
    return getTermDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    TResult Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult Function(int index)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (getTermDetailsEvent != null) {
      return getTermDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
    required TResult Function(_GetScoreboardDetailsEvent value)
        getScoreboardDetailsEvent,
    required TResult Function(_SelectedTermIndexEvent value)
        selectedTermIndexEvent,
  }) {
    return getTermDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult? Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult? Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
  }) {
    return getTermDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (getTermDetailsEvent != null) {
      return getTermDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class _GetTermDetailsEvent implements DashboardEvent {
  const factory _GetTermDetailsEvent() = _$GetTermDetailsEventImpl;
}

/// @nodoc
abstract class _$$GetScoreboardDetailsEventImplCopyWith<$Res> {
  factory _$$GetScoreboardDetailsEventImplCopyWith(
          _$GetScoreboardDetailsEventImpl value,
          $Res Function(_$GetScoreboardDetailsEventImpl) then) =
      __$$GetScoreboardDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String termId, String studentId});
}

/// @nodoc
class __$$GetScoreboardDetailsEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetScoreboardDetailsEventImpl>
    implements _$$GetScoreboardDetailsEventImplCopyWith<$Res> {
  __$$GetScoreboardDetailsEventImplCopyWithImpl(
      _$GetScoreboardDetailsEventImpl _value,
      $Res Function(_$GetScoreboardDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetScoreboardDetailsEventImpl(
      termId: null == termId
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetScoreboardDetailsEventImpl implements _GetScoreboardDetailsEvent {
  const _$GetScoreboardDetailsEventImpl(
      {required this.termId, required this.studentId});

  @override
  final String termId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'DashboardEvent.getScoreboardDetailsEvent(termId: $termId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScoreboardDetailsEventImpl &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScoreboardDetailsEventImplCopyWith<_$GetScoreboardDetailsEventImpl>
      get copyWith => __$$GetScoreboardDetailsEventImplCopyWithImpl<
          _$GetScoreboardDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
    required TResult Function(String termId, String studentId)
        getScoreboardDetailsEvent,
    required TResult Function(int index) selectedTermIndexEvent,
  }) {
    return getScoreboardDetailsEvent(termId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
    TResult? Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult? Function(int index)? selectedTermIndexEvent,
  }) {
    return getScoreboardDetailsEvent?.call(termId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    TResult Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult Function(int index)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (getScoreboardDetailsEvent != null) {
      return getScoreboardDetailsEvent(termId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
    required TResult Function(_GetScoreboardDetailsEvent value)
        getScoreboardDetailsEvent,
    required TResult Function(_SelectedTermIndexEvent value)
        selectedTermIndexEvent,
  }) {
    return getScoreboardDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult? Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult? Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
  }) {
    return getScoreboardDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (getScoreboardDetailsEvent != null) {
      return getScoreboardDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class _GetScoreboardDetailsEvent implements DashboardEvent {
  const factory _GetScoreboardDetailsEvent(
      {required final String termId,
      required final String studentId}) = _$GetScoreboardDetailsEventImpl;

  String get termId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetScoreboardDetailsEventImplCopyWith<_$GetScoreboardDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedTermIndexEventImplCopyWith<$Res> {
  factory _$$SelectedTermIndexEventImplCopyWith(
          _$SelectedTermIndexEventImpl value,
          $Res Function(_$SelectedTermIndexEventImpl) then) =
      __$$SelectedTermIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectedTermIndexEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$SelectedTermIndexEventImpl>
    implements _$$SelectedTermIndexEventImplCopyWith<$Res> {
  __$$SelectedTermIndexEventImplCopyWithImpl(
      _$SelectedTermIndexEventImpl _value,
      $Res Function(_$SelectedTermIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectedTermIndexEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedTermIndexEventImpl implements _SelectedTermIndexEvent {
  const _$SelectedTermIndexEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DashboardEvent.selectedTermIndexEvent(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedTermIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedTermIndexEventImplCopyWith<_$SelectedTermIndexEventImpl>
      get copyWith => __$$SelectedTermIndexEventImplCopyWithImpl<
          _$SelectedTermIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
    required TResult Function(String termId, String studentId)
        getScoreboardDetailsEvent,
    required TResult Function(int index) selectedTermIndexEvent,
  }) {
    return selectedTermIndexEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
    TResult? Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult? Function(int index)? selectedTermIndexEvent,
  }) {
    return selectedTermIndexEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    TResult Function(String termId, String studentId)?
        getScoreboardDetailsEvent,
    TResult Function(int index)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (selectedTermIndexEvent != null) {
      return selectedTermIndexEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
    required TResult Function(_GetScoreboardDetailsEvent value)
        getScoreboardDetailsEvent,
    required TResult Function(_SelectedTermIndexEvent value)
        selectedTermIndexEvent,
  }) {
    return selectedTermIndexEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult? Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult? Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
  }) {
    return selectedTermIndexEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    TResult Function(_GetScoreboardDetailsEvent value)?
        getScoreboardDetailsEvent,
    TResult Function(_SelectedTermIndexEvent value)? selectedTermIndexEvent,
    required TResult orElse(),
  }) {
    if (selectedTermIndexEvent != null) {
      return selectedTermIndexEvent(this);
    }
    return orElse();
  }
}

abstract class _SelectedTermIndexEvent implements DashboardEvent {
  const factory _SelectedTermIndexEvent(final int index) =
      _$SelectedTermIndexEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectedTermIndexEventImplCopyWith<_$SelectedTermIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  ResponseClassify<WordThoughtsEntity>? get wordThoughtResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<TermDetailsEntity>>? get termDetailsResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<ScoreBoardDetailsEntity> get scoreBoardResponse =>
      throw _privateConstructorUsedError;
  int get selectedTermIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      ResponseClassify<List<TermDetailsEntity>>? termDetailsResponse,
      ResponseClassify<ScoreBoardDetailsEntity> scoreBoardResponse,
      int selectedTermIndex});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordThoughtResponse = freezed,
    Object? termDetailsResponse = freezed,
    Object? scoreBoardResponse = null,
    Object? selectedTermIndex = null,
  }) {
    return _then(_value.copyWith(
      wordThoughtResponse: freezed == wordThoughtResponse
          ? _value.wordThoughtResponse
          : wordThoughtResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<WordThoughtsEntity>?,
      termDetailsResponse: freezed == termDetailsResponse
          ? _value.termDetailsResponse
          : termDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TermDetailsEntity>>?,
      scoreBoardResponse: null == scoreBoardResponse
          ? _value.scoreBoardResponse
          : scoreBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<ScoreBoardDetailsEntity>,
      selectedTermIndex: null == selectedTermIndex
          ? _value.selectedTermIndex
          : selectedTermIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      ResponseClassify<List<TermDetailsEntity>>? termDetailsResponse,
      ResponseClassify<ScoreBoardDetailsEntity> scoreBoardResponse,
      int selectedTermIndex});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordThoughtResponse = freezed,
    Object? termDetailsResponse = freezed,
    Object? scoreBoardResponse = null,
    Object? selectedTermIndex = null,
  }) {
    return _then(_$DashboardStateImpl(
      wordThoughtResponse: freezed == wordThoughtResponse
          ? _value.wordThoughtResponse
          : wordThoughtResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<WordThoughtsEntity>?,
      termDetailsResponse: freezed == termDetailsResponse
          ? _value.termDetailsResponse
          : termDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TermDetailsEntity>>?,
      scoreBoardResponse: null == scoreBoardResponse
          ? _value.scoreBoardResponse
          : scoreBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<ScoreBoardDetailsEntity>,
      selectedTermIndex: null == selectedTermIndex
          ? _value.selectedTermIndex
          : selectedTermIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required this.wordThoughtResponse,
      required this.termDetailsResponse,
      required this.scoreBoardResponse,
      required this.selectedTermIndex});

  @override
  final ResponseClassify<WordThoughtsEntity>? wordThoughtResponse;
  @override
  final ResponseClassify<List<TermDetailsEntity>>? termDetailsResponse;
  @override
  final ResponseClassify<ScoreBoardDetailsEntity> scoreBoardResponse;
  @override
  final int selectedTermIndex;

  @override
  String toString() {
    return 'DashboardState(wordThoughtResponse: $wordThoughtResponse, termDetailsResponse: $termDetailsResponse, scoreBoardResponse: $scoreBoardResponse, selectedTermIndex: $selectedTermIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.wordThoughtResponse, wordThoughtResponse) ||
                other.wordThoughtResponse == wordThoughtResponse) &&
            (identical(other.termDetailsResponse, termDetailsResponse) ||
                other.termDetailsResponse == termDetailsResponse) &&
            (identical(other.scoreBoardResponse, scoreBoardResponse) ||
                other.scoreBoardResponse == scoreBoardResponse) &&
            (identical(other.selectedTermIndex, selectedTermIndex) ||
                other.selectedTermIndex == selectedTermIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordThoughtResponse,
      termDetailsResponse, scoreBoardResponse, selectedTermIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      required final ResponseClassify<List<TermDetailsEntity>>?
          termDetailsResponse,
      required final ResponseClassify<ScoreBoardDetailsEntity>
          scoreBoardResponse,
      required final int selectedTermIndex}) = _$DashboardStateImpl;

  @override
  ResponseClassify<WordThoughtsEntity>? get wordThoughtResponse;
  @override
  ResponseClassify<List<TermDetailsEntity>>? get termDetailsResponse;
  @override
  ResponseClassify<ScoreBoardDetailsEntity> get scoreBoardResponse;
  @override
  int get selectedTermIndex;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_work_notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeWorkNotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate,
            String subjectId, String divId, String classId)
        getNotesWorkReport,
    required TResult Function(String noteId) getNoteReportDetails,
    required TResult Function(String workId) getHomeWorkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult? Function(String noteId)? getNoteReportDetails,
    TResult? Function(String workId)? getHomeWorkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult Function(String noteId)? getNoteReportDetails,
    TResult Function(String workId)? getHomeWorkDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
    required TResult Function(_GetNoteReportDetails value) getNoteReportDetails,
    required TResult Function(_GetHomeWorkDetails value) getHomeWorkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult? Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult? Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkNotesEventCopyWith<$Res> {
  factory $HomeWorkNotesEventCopyWith(
          HomeWorkNotesEvent value, $Res Function(HomeWorkNotesEvent) then) =
      _$HomeWorkNotesEventCopyWithImpl<$Res, HomeWorkNotesEvent>;
}

/// @nodoc
class _$HomeWorkNotesEventCopyWithImpl<$Res, $Val extends HomeWorkNotesEvent>
    implements $HomeWorkNotesEventCopyWith<$Res> {
  _$HomeWorkNotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeWorkReportEventImplCopyWith<$Res> {
  factory _$$GetHomeWorkReportEventImplCopyWith(
          _$GetHomeWorkReportEventImpl value,
          $Res Function(_$GetHomeWorkReportEventImpl) then) =
      __$$GetHomeWorkReportEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String startDate,
      String endDate,
      String subId,
      String divId,
      String classId});
}

/// @nodoc
class __$$GetHomeWorkReportEventImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetHomeWorkReportEventImpl>
    implements _$$GetHomeWorkReportEventImplCopyWith<$Res> {
  __$$GetHomeWorkReportEventImplCopyWithImpl(
      _$GetHomeWorkReportEventImpl _value,
      $Res Function(_$GetHomeWorkReportEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? subId = null,
    Object? divId = null,
    Object? classId = null,
  }) {
    return _then(_$GetHomeWorkReportEventImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      subId: null == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String,
      divId: null == divId
          ? _value.divId
          : divId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeWorkReportEventImpl implements _GetHomeWorkReportEvent {
  const _$GetHomeWorkReportEventImpl(
      {required this.startDate,
      required this.endDate,
      required this.subId,
      required this.divId,
      required this.classId});

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String subId;
  @override
  final String divId;
  @override
  final String classId;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getHomeWorkReportEvent(startDate: $startDate, endDate: $endDate, subId: $subId, divId: $divId, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeWorkReportEventImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.divId, divId) || other.divId == divId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, subId, divId, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeWorkReportEventImplCopyWith<_$GetHomeWorkReportEventImpl>
      get copyWith => __$$GetHomeWorkReportEventImplCopyWithImpl<
          _$GetHomeWorkReportEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate,
            String subjectId, String divId, String classId)
        getNotesWorkReport,
    required TResult Function(String noteId) getNoteReportDetails,
    required TResult Function(String workId) getHomeWorkDetails,
  }) {
    return getHomeWorkReportEvent(startDate, endDate, subId, divId, classId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult? Function(String noteId)? getNoteReportDetails,
    TResult? Function(String workId)? getHomeWorkDetails,
  }) {
    return getHomeWorkReportEvent?.call(
        startDate, endDate, subId, divId, classId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult Function(String noteId)? getNoteReportDetails,
    TResult Function(String workId)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getHomeWorkReportEvent != null) {
      return getHomeWorkReportEvent(startDate, endDate, subId, divId, classId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
    required TResult Function(_GetNoteReportDetails value) getNoteReportDetails,
    required TResult Function(_GetHomeWorkDetails value) getHomeWorkDetails,
  }) {
    return getHomeWorkReportEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult? Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult? Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
  }) {
    return getHomeWorkReportEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getHomeWorkReportEvent != null) {
      return getHomeWorkReportEvent(this);
    }
    return orElse();
  }
}

abstract class _GetHomeWorkReportEvent implements HomeWorkNotesEvent {
  const factory _GetHomeWorkReportEvent(
      {required final String startDate,
      required final String endDate,
      required final String subId,
      required final String divId,
      required final String classId}) = _$GetHomeWorkReportEventImpl;

  String get startDate;
  String get endDate;
  String get subId;
  String get divId;
  String get classId;
  @JsonKey(ignore: true)
  _$$GetHomeWorkReportEventImplCopyWith<_$GetHomeWorkReportEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotesWorkReportImplCopyWith<$Res> {
  factory _$$GetNotesWorkReportImplCopyWith(_$GetNotesWorkReportImpl value,
          $Res Function(_$GetNotesWorkReportImpl) then) =
      __$$GetNotesWorkReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String startDate,
      String endDate,
      String subjectId,
      String divId,
      String classId});
}

/// @nodoc
class __$$GetNotesWorkReportImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetNotesWorkReportImpl>
    implements _$$GetNotesWorkReportImplCopyWith<$Res> {
  __$$GetNotesWorkReportImplCopyWithImpl(_$GetNotesWorkReportImpl _value,
      $Res Function(_$GetNotesWorkReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? subjectId = null,
    Object? divId = null,
    Object? classId = null,
  }) {
    return _then(_$GetNotesWorkReportImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      divId: null == divId
          ? _value.divId
          : divId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotesWorkReportImpl implements _GetNotesWorkReport {
  const _$GetNotesWorkReportImpl(
      {required this.startDate,
      required this.endDate,
      required this.subjectId,
      required this.divId,
      required this.classId});

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String subjectId;
  @override
  final String divId;
  @override
  final String classId;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getNotesWorkReport(startDate: $startDate, endDate: $endDate, subjectId: $subjectId, divId: $divId, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotesWorkReportImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.divId, divId) || other.divId == divId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, subjectId, divId, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesWorkReportImplCopyWith<_$GetNotesWorkReportImpl> get copyWith =>
      __$$GetNotesWorkReportImplCopyWithImpl<_$GetNotesWorkReportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate,
            String subjectId, String divId, String classId)
        getNotesWorkReport,
    required TResult Function(String noteId) getNoteReportDetails,
    required TResult Function(String workId) getHomeWorkDetails,
  }) {
    return getNotesWorkReport(startDate, endDate, subjectId, divId, classId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult? Function(String noteId)? getNoteReportDetails,
    TResult? Function(String workId)? getHomeWorkDetails,
  }) {
    return getNotesWorkReport?.call(
        startDate, endDate, subjectId, divId, classId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult Function(String noteId)? getNoteReportDetails,
    TResult Function(String workId)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getNotesWorkReport != null) {
      return getNotesWorkReport(startDate, endDate, subjectId, divId, classId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
    required TResult Function(_GetNoteReportDetails value) getNoteReportDetails,
    required TResult Function(_GetHomeWorkDetails value) getHomeWorkDetails,
  }) {
    return getNotesWorkReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult? Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult? Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
  }) {
    return getNotesWorkReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getNotesWorkReport != null) {
      return getNotesWorkReport(this);
    }
    return orElse();
  }
}

abstract class _GetNotesWorkReport implements HomeWorkNotesEvent {
  const factory _GetNotesWorkReport(
      {required final String startDate,
      required final String endDate,
      required final String subjectId,
      required final String divId,
      required final String classId}) = _$GetNotesWorkReportImpl;

  String get startDate;
  String get endDate;
  String get subjectId;
  String get divId;
  String get classId;
  @JsonKey(ignore: true)
  _$$GetNotesWorkReportImplCopyWith<_$GetNotesWorkReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNoteReportDetailsImplCopyWith<$Res> {
  factory _$$GetNoteReportDetailsImplCopyWith(_$GetNoteReportDetailsImpl value,
          $Res Function(_$GetNoteReportDetailsImpl) then) =
      __$$GetNoteReportDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class __$$GetNoteReportDetailsImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetNoteReportDetailsImpl>
    implements _$$GetNoteReportDetailsImplCopyWith<$Res> {
  __$$GetNoteReportDetailsImplCopyWithImpl(_$GetNoteReportDetailsImpl _value,
      $Res Function(_$GetNoteReportDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_$GetNoteReportDetailsImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNoteReportDetailsImpl implements _GetNoteReportDetails {
  const _$GetNoteReportDetailsImpl({required this.noteId});

  @override
  final String noteId;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getNoteReportDetails(noteId: $noteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNoteReportDetailsImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNoteReportDetailsImplCopyWith<_$GetNoteReportDetailsImpl>
      get copyWith =>
          __$$GetNoteReportDetailsImplCopyWithImpl<_$GetNoteReportDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate,
            String subjectId, String divId, String classId)
        getNotesWorkReport,
    required TResult Function(String noteId) getNoteReportDetails,
    required TResult Function(String workId) getHomeWorkDetails,
  }) {
    return getNoteReportDetails(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult? Function(String noteId)? getNoteReportDetails,
    TResult? Function(String workId)? getHomeWorkDetails,
  }) {
    return getNoteReportDetails?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult Function(String noteId)? getNoteReportDetails,
    TResult Function(String workId)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getNoteReportDetails != null) {
      return getNoteReportDetails(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
    required TResult Function(_GetNoteReportDetails value) getNoteReportDetails,
    required TResult Function(_GetHomeWorkDetails value) getHomeWorkDetails,
  }) {
    return getNoteReportDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult? Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult? Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
  }) {
    return getNoteReportDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getNoteReportDetails != null) {
      return getNoteReportDetails(this);
    }
    return orElse();
  }
}

abstract class _GetNoteReportDetails implements HomeWorkNotesEvent {
  const factory _GetNoteReportDetails({required final String noteId}) =
      _$GetNoteReportDetailsImpl;

  String get noteId;
  @JsonKey(ignore: true)
  _$$GetNoteReportDetailsImplCopyWith<_$GetNoteReportDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeWorkDetailsImplCopyWith<$Res> {
  factory _$$GetHomeWorkDetailsImplCopyWith(_$GetHomeWorkDetailsImpl value,
          $Res Function(_$GetHomeWorkDetailsImpl) then) =
      __$$GetHomeWorkDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String workId});
}

/// @nodoc
class __$$GetHomeWorkDetailsImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetHomeWorkDetailsImpl>
    implements _$$GetHomeWorkDetailsImplCopyWith<$Res> {
  __$$GetHomeWorkDetailsImplCopyWithImpl(_$GetHomeWorkDetailsImpl _value,
      $Res Function(_$GetHomeWorkDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$GetHomeWorkDetailsImpl(
      workId: null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeWorkDetailsImpl implements _GetHomeWorkDetails {
  const _$GetHomeWorkDetailsImpl({required this.workId});

  @override
  final String workId;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getHomeWorkDetails(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeWorkDetailsImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeWorkDetailsImplCopyWith<_$GetHomeWorkDetailsImpl> get copyWith =>
      __$$GetHomeWorkDetailsImplCopyWithImpl<_$GetHomeWorkDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate,
            String subjectId, String divId, String classId)
        getNotesWorkReport,
    required TResult Function(String noteId) getNoteReportDetails,
    required TResult Function(String workId) getHomeWorkDetails,
  }) {
    return getHomeWorkDetails(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult? Function(String noteId)? getNoteReportDetails,
    TResult? Function(String workId)? getHomeWorkDetails,
  }) {
    return getHomeWorkDetails?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate, String subId,
            String divId, String classId)?
        getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate, String subjectId,
            String divId, String classId)?
        getNotesWorkReport,
    TResult Function(String noteId)? getNoteReportDetails,
    TResult Function(String workId)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getHomeWorkDetails != null) {
      return getHomeWorkDetails(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
    required TResult Function(_GetNoteReportDetails value) getNoteReportDetails,
    required TResult Function(_GetHomeWorkDetails value) getHomeWorkDetails,
  }) {
    return getHomeWorkDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult? Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult? Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
  }) {
    return getHomeWorkDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    TResult Function(_GetNoteReportDetails value)? getNoteReportDetails,
    TResult Function(_GetHomeWorkDetails value)? getHomeWorkDetails,
    required TResult orElse(),
  }) {
    if (getHomeWorkDetails != null) {
      return getHomeWorkDetails(this);
    }
    return orElse();
  }
}

abstract class _GetHomeWorkDetails implements HomeWorkNotesEvent {
  const factory _GetHomeWorkDetails({required final String workId}) =
      _$GetHomeWorkDetailsImpl;

  String get workId;
  @JsonKey(ignore: true)
  _$$GetHomeWorkDetailsImplCopyWith<_$GetHomeWorkDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWorkNotesState {
  ResponseClassify<List<HomeWorkReportsEntity>> get homeWorkReportResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<NotesReportEntity>> get noteWorkReportResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<NotesReportDetailsEntity> get noteReportDetailResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<NotesReportDetailsEntity> get homeWorkReportDetailResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWorkNotesStateCopyWith<HomeWorkNotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkNotesStateCopyWith<$Res> {
  factory $HomeWorkNotesStateCopyWith(
          HomeWorkNotesState value, $Res Function(HomeWorkNotesState) then) =
      _$HomeWorkNotesStateCopyWithImpl<$Res, HomeWorkNotesState>;
  @useResult
  $Res call(
      {ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse,
      ResponseClassify<List<NotesReportEntity>> noteWorkReportResponse,
      ResponseClassify<NotesReportDetailsEntity> noteReportDetailResponse,
      ResponseClassify<NotesReportDetailsEntity> homeWorkReportDetailResponse});
}

/// @nodoc
class _$HomeWorkNotesStateCopyWithImpl<$Res, $Val extends HomeWorkNotesState>
    implements $HomeWorkNotesStateCopyWith<$Res> {
  _$HomeWorkNotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkReportResponse = null,
    Object? noteWorkReportResponse = null,
    Object? noteReportDetailResponse = null,
    Object? homeWorkReportDetailResponse = null,
  }) {
    return _then(_value.copyWith(
      homeWorkReportResponse: null == homeWorkReportResponse
          ? _value.homeWorkReportResponse
          : homeWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<HomeWorkReportsEntity>>,
      noteWorkReportResponse: null == noteWorkReportResponse
          ? _value.noteWorkReportResponse
          : noteWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NotesReportEntity>>,
      noteReportDetailResponse: null == noteReportDetailResponse
          ? _value.noteReportDetailResponse
          : noteReportDetailResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<NotesReportDetailsEntity>,
      homeWorkReportDetailResponse: null == homeWorkReportDetailResponse
          ? _value.homeWorkReportDetailResponse
          : homeWorkReportDetailResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<NotesReportDetailsEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeWorkNotesStateImplCopyWith<$Res>
    implements $HomeWorkNotesStateCopyWith<$Res> {
  factory _$$HomeWorkNotesStateImplCopyWith(_$HomeWorkNotesStateImpl value,
          $Res Function(_$HomeWorkNotesStateImpl) then) =
      __$$HomeWorkNotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse,
      ResponseClassify<List<NotesReportEntity>> noteWorkReportResponse,
      ResponseClassify<NotesReportDetailsEntity> noteReportDetailResponse,
      ResponseClassify<NotesReportDetailsEntity> homeWorkReportDetailResponse});
}

/// @nodoc
class __$$HomeWorkNotesStateImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesStateCopyWithImpl<$Res, _$HomeWorkNotesStateImpl>
    implements _$$HomeWorkNotesStateImplCopyWith<$Res> {
  __$$HomeWorkNotesStateImplCopyWithImpl(_$HomeWorkNotesStateImpl _value,
      $Res Function(_$HomeWorkNotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkReportResponse = null,
    Object? noteWorkReportResponse = null,
    Object? noteReportDetailResponse = null,
    Object? homeWorkReportDetailResponse = null,
  }) {
    return _then(_$HomeWorkNotesStateImpl(
      homeWorkReportResponse: null == homeWorkReportResponse
          ? _value.homeWorkReportResponse
          : homeWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<HomeWorkReportsEntity>>,
      noteWorkReportResponse: null == noteWorkReportResponse
          ? _value.noteWorkReportResponse
          : noteWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NotesReportEntity>>,
      noteReportDetailResponse: null == noteReportDetailResponse
          ? _value.noteReportDetailResponse
          : noteReportDetailResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<NotesReportDetailsEntity>,
      homeWorkReportDetailResponse: null == homeWorkReportDetailResponse
          ? _value.homeWorkReportDetailResponse
          : homeWorkReportDetailResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<NotesReportDetailsEntity>,
    ));
  }
}

/// @nodoc

class _$HomeWorkNotesStateImpl implements _HomeWorkNotesState {
  const _$HomeWorkNotesStateImpl(
      {required this.homeWorkReportResponse,
      required this.noteWorkReportResponse,
      required this.noteReportDetailResponse,
      required this.homeWorkReportDetailResponse});

  @override
  final ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse;
  @override
  final ResponseClassify<List<NotesReportEntity>> noteWorkReportResponse;
  @override
  final ResponseClassify<NotesReportDetailsEntity> noteReportDetailResponse;
  @override
  final ResponseClassify<NotesReportDetailsEntity> homeWorkReportDetailResponse;

  @override
  String toString() {
    return 'HomeWorkNotesState(homeWorkReportResponse: $homeWorkReportResponse, noteWorkReportResponse: $noteWorkReportResponse, noteReportDetailResponse: $noteReportDetailResponse, homeWorkReportDetailResponse: $homeWorkReportDetailResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeWorkNotesStateImpl &&
            (identical(other.homeWorkReportResponse, homeWorkReportResponse) ||
                other.homeWorkReportResponse == homeWorkReportResponse) &&
            (identical(other.noteWorkReportResponse, noteWorkReportResponse) ||
                other.noteWorkReportResponse == noteWorkReportResponse) &&
            (identical(
                    other.noteReportDetailResponse, noteReportDetailResponse) ||
                other.noteReportDetailResponse == noteReportDetailResponse) &&
            (identical(other.homeWorkReportDetailResponse,
                    homeWorkReportDetailResponse) ||
                other.homeWorkReportDetailResponse ==
                    homeWorkReportDetailResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeWorkReportResponse,
      noteWorkReportResponse,
      noteReportDetailResponse,
      homeWorkReportDetailResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeWorkNotesStateImplCopyWith<_$HomeWorkNotesStateImpl> get copyWith =>
      __$$HomeWorkNotesStateImplCopyWithImpl<_$HomeWorkNotesStateImpl>(
          this, _$identity);
}

abstract class _HomeWorkNotesState implements HomeWorkNotesState {
  const factory _HomeWorkNotesState(
      {required final ResponseClassify<List<HomeWorkReportsEntity>>
          homeWorkReportResponse,
      required final ResponseClassify<List<NotesReportEntity>>
          noteWorkReportResponse,
      required final ResponseClassify<NotesReportDetailsEntity>
          noteReportDetailResponse,
      required final ResponseClassify<NotesReportDetailsEntity>
          homeWorkReportDetailResponse}) = _$HomeWorkNotesStateImpl;

  @override
  ResponseClassify<List<HomeWorkReportsEntity>> get homeWorkReportResponse;
  @override
  ResponseClassify<List<NotesReportEntity>> get noteWorkReportResponse;
  @override
  ResponseClassify<NotesReportDetailsEntity> get noteReportDetailResponse;
  @override
  ResponseClassify<NotesReportDetailsEntity> get homeWorkReportDetailResponse;
  @override
  @JsonKey(ignore: true)
  _$$HomeWorkNotesStateImplCopyWith<_$HomeWorkNotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

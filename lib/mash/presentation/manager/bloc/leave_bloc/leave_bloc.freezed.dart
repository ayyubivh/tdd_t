// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveEventCopyWith<$Res> {
  factory $LeaveEventCopyWith(
          LeaveEvent value, $Res Function(LeaveEvent) then) =
      _$LeaveEventCopyWithImpl<$Res, LeaveEvent>;
}

/// @nodoc
class _$LeaveEventCopyWithImpl<$Res, $Val extends LeaveEvent>
    implements $LeaveEventCopyWith<$Res> {
  _$LeaveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LeaveEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LeaveEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetLeaveDashboardDataImplCopyWith<$Res> {
  factory _$$GetLeaveDashboardDataImplCopyWith(
          _$GetLeaveDashboardDataImpl value,
          $Res Function(_$GetLeaveDashboardDataImpl) then) =
      __$$GetLeaveDashboardDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLeaveDashboardDataImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$GetLeaveDashboardDataImpl>
    implements _$$GetLeaveDashboardDataImplCopyWith<$Res> {
  __$$GetLeaveDashboardDataImplCopyWithImpl(_$GetLeaveDashboardDataImpl _value,
      $Res Function(_$GetLeaveDashboardDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLeaveDashboardDataImpl implements _GetLeaveDashboardData {
  const _$GetLeaveDashboardDataImpl();

  @override
  String toString() {
    return 'LeaveEvent.getLeaveDashboardData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaveDashboardDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return getLeaveDashboardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return getLeaveDashboardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveDashboardData != null) {
      return getLeaveDashboardData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return getLeaveDashboardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return getLeaveDashboardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveDashboardData != null) {
      return getLeaveDashboardData(this);
    }
    return orElse();
  }
}

abstract class _GetLeaveDashboardData implements LeaveEvent {
  const factory _GetLeaveDashboardData() = _$GetLeaveDashboardDataImpl;
}

/// @nodoc
abstract class _$$GetLeaveStatusImplCopyWith<$Res> {
  factory _$$GetLeaveStatusImplCopyWith(_$GetLeaveStatusImpl value,
          $Res Function(_$GetLeaveStatusImpl) then) =
      __$$GetLeaveStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId, int studentLeaveStatus});
}

/// @nodoc
class __$$GetLeaveStatusImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$GetLeaveStatusImpl>
    implements _$$GetLeaveStatusImplCopyWith<$Res> {
  __$$GetLeaveStatusImplCopyWithImpl(
      _$GetLeaveStatusImpl _value, $Res Function(_$GetLeaveStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentLeaveStatus = null,
  }) {
    return _then(_$GetLeaveStatusImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentLeaveStatus: null == studentLeaveStatus
          ? _value.studentLeaveStatus
          : studentLeaveStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetLeaveStatusImpl implements _GetLeaveStatus {
  const _$GetLeaveStatusImpl(
      {required this.studentId, required this.studentLeaveStatus});

  @override
  final String studentId;
  @override
  final int studentLeaveStatus;

  @override
  String toString() {
    return 'LeaveEvent.getLeaveStatus(studentId: $studentId, studentLeaveStatus: $studentLeaveStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaveStatusImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentLeaveStatus, studentLeaveStatus) ||
                other.studentLeaveStatus == studentLeaveStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId, studentLeaveStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeaveStatusImplCopyWith<_$GetLeaveStatusImpl> get copyWith =>
      __$$GetLeaveStatusImplCopyWithImpl<_$GetLeaveStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return getLeaveStatus(studentId, studentLeaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return getLeaveStatus?.call(studentId, studentLeaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveStatus != null) {
      return getLeaveStatus(studentId, studentLeaveStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return getLeaveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return getLeaveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveStatus != null) {
      return getLeaveStatus(this);
    }
    return orElse();
  }
}

abstract class _GetLeaveStatus implements LeaveEvent {
  const factory _GetLeaveStatus(
      {required final String studentId,
      required final int studentLeaveStatus}) = _$GetLeaveStatusImpl;

  String get studentId;
  int get studentLeaveStatus;
  @JsonKey(ignore: true)
  _$$GetLeaveStatusImplCopyWith<_$GetLeaveStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLeaveStatusDetailsImplCopyWith<$Res> {
  factory _$$GetLeaveStatusDetailsImplCopyWith(
          _$GetLeaveStatusDetailsImpl value,
          $Res Function(_$GetLeaveStatusDetailsImpl) then) =
      __$$GetLeaveStatusDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String leaveStatus, String leaveStatusId, String studentId});
}

/// @nodoc
class __$$GetLeaveStatusDetailsImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$GetLeaveStatusDetailsImpl>
    implements _$$GetLeaveStatusDetailsImplCopyWith<$Res> {
  __$$GetLeaveStatusDetailsImplCopyWithImpl(_$GetLeaveStatusDetailsImpl _value,
      $Res Function(_$GetLeaveStatusDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveStatus = null,
    Object? leaveStatusId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetLeaveStatusDetailsImpl(
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leaveStatusId: null == leaveStatusId
          ? _value.leaveStatusId
          : leaveStatusId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLeaveStatusDetailsImpl implements _GetLeaveStatusDetails {
  const _$GetLeaveStatusDetailsImpl(
      {required this.leaveStatus,
      required this.leaveStatusId,
      required this.studentId});

  @override
  final String leaveStatus;
  @override
  final String leaveStatusId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'LeaveEvent.getLeaveStatusDetails(leaveStatus: $leaveStatus, leaveStatusId: $leaveStatusId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaveStatusDetailsImpl &&
            (identical(other.leaveStatus, leaveStatus) ||
                other.leaveStatus == leaveStatus) &&
            (identical(other.leaveStatusId, leaveStatusId) ||
                other.leaveStatusId == leaveStatusId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, leaveStatus, leaveStatusId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeaveStatusDetailsImplCopyWith<_$GetLeaveStatusDetailsImpl>
      get copyWith => __$$GetLeaveStatusDetailsImplCopyWithImpl<
          _$GetLeaveStatusDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return getLeaveStatusDetails(leaveStatus, leaveStatusId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return getLeaveStatusDetails?.call(leaveStatus, leaveStatusId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveStatusDetails != null) {
      return getLeaveStatusDetails(leaveStatus, leaveStatusId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return getLeaveStatusDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return getLeaveStatusDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (getLeaveStatusDetails != null) {
      return getLeaveStatusDetails(this);
    }
    return orElse();
  }
}

abstract class _GetLeaveStatusDetails implements LeaveEvent {
  const factory _GetLeaveStatusDetails(
      {required final String leaveStatus,
      required final String leaveStatusId,
      required final String studentId}) = _$GetLeaveStatusDetailsImpl;

  String get leaveStatus;
  String get leaveStatusId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetLeaveStatusDetailsImplCopyWith<_$GetLeaveStatusDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelLeaveImplCopyWith<$Res> {
  factory _$$CancelLeaveImplCopyWith(
          _$CancelLeaveImpl value, $Res Function(_$CancelLeaveImpl) then) =
      __$$CancelLeaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String reason,
      String leaveDetailsId,
      String studentId,
      int leaveStatus});
}

/// @nodoc
class __$$CancelLeaveImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$CancelLeaveImpl>
    implements _$$CancelLeaveImplCopyWith<$Res> {
  __$$CancelLeaveImplCopyWithImpl(
      _$CancelLeaveImpl _value, $Res Function(_$CancelLeaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? leaveDetailsId = null,
    Object? studentId = null,
    Object? leaveStatus = null,
  }) {
    return _then(_$CancelLeaveImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDetailsId: null == leaveDetailsId
          ? _value.leaveDetailsId
          : leaveDetailsId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelLeaveImpl implements _CancelLeave {
  const _$CancelLeaveImpl(
      {required this.reason,
      required this.leaveDetailsId,
      required this.studentId,
      required this.leaveStatus});

  @override
  final String reason;
  @override
  final String leaveDetailsId;
  @override
  final String studentId;
  @override
  final int leaveStatus;

  @override
  String toString() {
    return 'LeaveEvent.cancelLeave(reason: $reason, leaveDetailsId: $leaveDetailsId, studentId: $studentId, leaveStatus: $leaveStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelLeaveImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.leaveDetailsId, leaveDetailsId) ||
                other.leaveDetailsId == leaveDetailsId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.leaveStatus, leaveStatus) ||
                other.leaveStatus == leaveStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, leaveDetailsId, studentId, leaveStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelLeaveImplCopyWith<_$CancelLeaveImpl> get copyWith =>
      __$$CancelLeaveImplCopyWithImpl<_$CancelLeaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return cancelLeave(reason, leaveDetailsId, studentId, leaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return cancelLeave?.call(reason, leaveDetailsId, studentId, leaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (cancelLeave != null) {
      return cancelLeave(reason, leaveDetailsId, studentId, leaveStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return cancelLeave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return cancelLeave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (cancelLeave != null) {
      return cancelLeave(this);
    }
    return orElse();
  }
}

abstract class _CancelLeave implements LeaveEvent {
  const factory _CancelLeave(
      {required final String reason,
      required final String leaveDetailsId,
      required final String studentId,
      required final int leaveStatus}) = _$CancelLeaveImpl;

  String get reason;
  String get leaveDetailsId;
  String get studentId;
  int get leaveStatus;
  @JsonKey(ignore: true)
  _$$CancelLeaveImplCopyWith<_$CancelLeaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyLeaveImplCopyWith<$Res> {
  factory _$$ApplyLeaveImplCopyWith(
          _$ApplyLeaveImpl value, $Res Function(_$ApplyLeaveImpl) then) =
      __$$ApplyLeaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplyLeaveImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$ApplyLeaveImpl>
    implements _$$ApplyLeaveImplCopyWith<$Res> {
  __$$ApplyLeaveImplCopyWithImpl(
      _$ApplyLeaveImpl _value, $Res Function(_$ApplyLeaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplyLeaveImpl implements _ApplyLeave {
  const _$ApplyLeaveImpl();

  @override
  String toString() {
    return 'LeaveEvent.applyLeave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplyLeaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return applyLeave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return applyLeave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (applyLeave != null) {
      return applyLeave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return applyLeave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return applyLeave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (applyLeave != null) {
      return applyLeave(this);
    }
    return orElse();
  }
}

abstract class _ApplyLeave implements LeaveEvent {
  const factory _ApplyLeave() = _$ApplyLeaveImpl;
}

/// @nodoc
abstract class _$$SaveLeaveAttachmentsImplCopyWith<$Res> {
  factory _$$SaveLeaveAttachmentsImplCopyWith(_$SaveLeaveAttachmentsImpl value,
          $Res Function(_$SaveLeaveAttachmentsImpl) then) =
      __$$SaveLeaveAttachmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeaveAttachmentModel leaveAttachments});

  $LeaveAttachmentModelCopyWith<$Res> get leaveAttachments;
}

/// @nodoc
class __$$SaveLeaveAttachmentsImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$SaveLeaveAttachmentsImpl>
    implements _$$SaveLeaveAttachmentsImplCopyWith<$Res> {
  __$$SaveLeaveAttachmentsImplCopyWithImpl(_$SaveLeaveAttachmentsImpl _value,
      $Res Function(_$SaveLeaveAttachmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveAttachments = null,
  }) {
    return _then(_$SaveLeaveAttachmentsImpl(
      null == leaveAttachments
          ? _value.leaveAttachments
          : leaveAttachments // ignore: cast_nullable_to_non_nullable
              as LeaveAttachmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaveAttachmentModelCopyWith<$Res> get leaveAttachments {
    return $LeaveAttachmentModelCopyWith<$Res>(_value.leaveAttachments,
        (value) {
      return _then(_value.copyWith(leaveAttachments: value));
    });
  }
}

/// @nodoc

class _$SaveLeaveAttachmentsImpl implements _SaveLeaveAttachments {
  const _$SaveLeaveAttachmentsImpl(this.leaveAttachments);

  @override
  final LeaveAttachmentModel leaveAttachments;

  @override
  String toString() {
    return 'LeaveEvent.saveLeaveAttachments(leaveAttachments: $leaveAttachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveLeaveAttachmentsImpl &&
            (identical(other.leaveAttachments, leaveAttachments) ||
                other.leaveAttachments == leaveAttachments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaveAttachments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveLeaveAttachmentsImplCopyWith<_$SaveLeaveAttachmentsImpl>
      get copyWith =>
          __$$SaveLeaveAttachmentsImplCopyWithImpl<_$SaveLeaveAttachmentsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, int studentLeaveStatus)
        getLeaveStatus,
    required TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)
        getLeaveStatusDetails,
    required TResult Function(String reason, String leaveDetailsId,
            String studentId, int leaveStatus)
        cancelLeave,
    required TResult Function() applyLeave,
    required TResult Function(LeaveAttachmentModel leaveAttachments)
        saveLeaveAttachments,
  }) {
    return saveLeaveAttachments(leaveAttachments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult? Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult? Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult? Function()? applyLeave,
    TResult? Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
  }) {
    return saveLeaveAttachments?.call(leaveAttachments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, int studentLeaveStatus)? getLeaveStatus,
    TResult Function(
            String leaveStatus, String leaveStatusId, String studentId)?
        getLeaveStatusDetails,
    TResult Function(String reason, String leaveDetailsId, String studentId,
            int leaveStatus)?
        cancelLeave,
    TResult Function()? applyLeave,
    TResult Function(LeaveAttachmentModel leaveAttachments)?
        saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (saveLeaveAttachments != null) {
      return saveLeaveAttachments(leaveAttachments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
    required TResult Function(_GetLeaveStatusDetails value)
        getLeaveStatusDetails,
    required TResult Function(_CancelLeave value) cancelLeave,
    required TResult Function(_ApplyLeave value) applyLeave,
    required TResult Function(_SaveLeaveAttachments value) saveLeaveAttachments,
  }) {
    return saveLeaveAttachments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult? Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult? Function(_CancelLeave value)? cancelLeave,
    TResult? Function(_ApplyLeave value)? applyLeave,
    TResult? Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
  }) {
    return saveLeaveAttachments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    TResult Function(_GetLeaveStatusDetails value)? getLeaveStatusDetails,
    TResult Function(_CancelLeave value)? cancelLeave,
    TResult Function(_ApplyLeave value)? applyLeave,
    TResult Function(_SaveLeaveAttachments value)? saveLeaveAttachments,
    required TResult orElse(),
  }) {
    if (saveLeaveAttachments != null) {
      return saveLeaveAttachments(this);
    }
    return orElse();
  }
}

abstract class _SaveLeaveAttachments implements LeaveEvent {
  const factory _SaveLeaveAttachments(
      final LeaveAttachmentModel leaveAttachments) = _$SaveLeaveAttachmentsImpl;

  LeaveAttachmentModel get leaveAttachments;
  @JsonKey(ignore: true)
  _$$SaveLeaveAttachmentsImplCopyWith<_$SaveLeaveAttachmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaveState {
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData =>
      throw _privateConstructorUsedError;
  ResponseClassify<LeaveStatusEntity> get leaveStatusResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<LeaveDetailsEntity> get leaveDetailsResponse =>
      throw _privateConstructorUsedError;
  LeaveAttachmentModel? get leaveAttachmentModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaveStateCopyWith<LeaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveStateCopyWith<$Res> {
  factory $LeaveStateCopyWith(
          LeaveState value, $Res Function(LeaveState) then) =
      _$LeaveStateCopyWithImpl<$Res, LeaveState>;
  @useResult
  $Res call(
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
      ResponseClassify<LeaveStatusEntity> leaveStatusResponse,
      ResponseClassify<LeaveDetailsEntity> leaveDetailsResponse,
      LeaveAttachmentModel? leaveAttachmentModel});

  $LeaveAttachmentModelCopyWith<$Res>? get leaveAttachmentModel;
}

/// @nodoc
class _$LeaveStateCopyWithImpl<$Res, $Val extends LeaveState>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLeaveDashboardData = freezed,
    Object? leaveStatusResponse = null,
    Object? leaveDetailsResponse = null,
    Object? leaveAttachmentModel = freezed,
  }) {
    return _then(_value.copyWith(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
      leaveStatusResponse: null == leaveStatusResponse
          ? _value.leaveStatusResponse
          : leaveStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveStatusEntity>,
      leaveDetailsResponse: null == leaveDetailsResponse
          ? _value.leaveDetailsResponse
          : leaveDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveDetailsEntity>,
      leaveAttachmentModel: freezed == leaveAttachmentModel
          ? _value.leaveAttachmentModel
          : leaveAttachmentModel // ignore: cast_nullable_to_non_nullable
              as LeaveAttachmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaveAttachmentModelCopyWith<$Res>? get leaveAttachmentModel {
    if (_value.leaveAttachmentModel == null) {
      return null;
    }

    return $LeaveAttachmentModelCopyWith<$Res>(_value.leaveAttachmentModel!,
        (value) {
      return _then(_value.copyWith(leaveAttachmentModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaveStateImplCopyWith<$Res>
    implements $LeaveStateCopyWith<$Res> {
  factory _$$LeaveStateImplCopyWith(
          _$LeaveStateImpl value, $Res Function(_$LeaveStateImpl) then) =
      __$$LeaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
      ResponseClassify<LeaveStatusEntity> leaveStatusResponse,
      ResponseClassify<LeaveDetailsEntity> leaveDetailsResponse,
      LeaveAttachmentModel? leaveAttachmentModel});

  @override
  $LeaveAttachmentModelCopyWith<$Res>? get leaveAttachmentModel;
}

/// @nodoc
class __$$LeaveStateImplCopyWithImpl<$Res>
    extends _$LeaveStateCopyWithImpl<$Res, _$LeaveStateImpl>
    implements _$$LeaveStateImplCopyWith<$Res> {
  __$$LeaveStateImplCopyWithImpl(
      _$LeaveStateImpl _value, $Res Function(_$LeaveStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLeaveDashboardData = freezed,
    Object? leaveStatusResponse = null,
    Object? leaveDetailsResponse = null,
    Object? leaveAttachmentModel = freezed,
  }) {
    return _then(_$LeaveStateImpl(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
      leaveStatusResponse: null == leaveStatusResponse
          ? _value.leaveStatusResponse
          : leaveStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveStatusEntity>,
      leaveDetailsResponse: null == leaveDetailsResponse
          ? _value.leaveDetailsResponse
          : leaveDetailsResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveDetailsEntity>,
      leaveAttachmentModel: freezed == leaveAttachmentModel
          ? _value.leaveAttachmentModel
          : leaveAttachmentModel // ignore: cast_nullable_to_non_nullable
              as LeaveAttachmentModel?,
    ));
  }
}

/// @nodoc

class _$LeaveStateImpl implements _LeaveState {
  const _$LeaveStateImpl(
      {this.getLeaveDashboardData,
      required this.leaveStatusResponse,
      required this.leaveDetailsResponse,
      required this.leaveAttachmentModel});

  @override
  final ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData;
  @override
  final ResponseClassify<LeaveStatusEntity> leaveStatusResponse;
  @override
  final ResponseClassify<LeaveDetailsEntity> leaveDetailsResponse;
  @override
  final LeaveAttachmentModel? leaveAttachmentModel;

  @override
  String toString() {
    return 'LeaveState(getLeaveDashboardData: $getLeaveDashboardData, leaveStatusResponse: $leaveStatusResponse, leaveDetailsResponse: $leaveDetailsResponse, leaveAttachmentModel: $leaveAttachmentModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveStateImpl &&
            (identical(other.getLeaveDashboardData, getLeaveDashboardData) ||
                other.getLeaveDashboardData == getLeaveDashboardData) &&
            (identical(other.leaveStatusResponse, leaveStatusResponse) ||
                other.leaveStatusResponse == leaveStatusResponse) &&
            (identical(other.leaveDetailsResponse, leaveDetailsResponse) ||
                other.leaveDetailsResponse == leaveDetailsResponse) &&
            (identical(other.leaveAttachmentModel, leaveAttachmentModel) ||
                other.leaveAttachmentModel == leaveAttachmentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getLeaveDashboardData,
      leaveStatusResponse, leaveDetailsResponse, leaveAttachmentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      __$$LeaveStateImplCopyWithImpl<_$LeaveStateImpl>(this, _$identity);
}

abstract class _LeaveState implements LeaveState {
  const factory _LeaveState(
      {final ResponseClassify<List<LeaveDashboardEntity>>?
          getLeaveDashboardData,
      required final ResponseClassify<LeaveStatusEntity> leaveStatusResponse,
      required final ResponseClassify<LeaveDetailsEntity> leaveDetailsResponse,
      required final LeaveAttachmentModel?
          leaveAttachmentModel}) = _$LeaveStateImpl;

  @override
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData;
  @override
  ResponseClassify<LeaveStatusEntity> get leaveStatusResponse;
  @override
  ResponseClassify<LeaveDetailsEntity> get leaveDetailsResponse;
  @override
  LeaveAttachmentModel? get leaveAttachmentModel;
  @override
  @JsonKey(ignore: true)
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

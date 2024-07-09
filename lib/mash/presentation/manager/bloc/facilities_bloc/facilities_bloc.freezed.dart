// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facilities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FacilitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesEventCopyWith<$Res> {
  factory $FacilitiesEventCopyWith(
          FacilitiesEvent value, $Res Function(FacilitiesEvent) then) =
      _$FacilitiesEventCopyWithImpl<$Res, FacilitiesEvent>;
}

/// @nodoc
class _$FacilitiesEventCopyWithImpl<$Res, $Val extends FacilitiesEvent>
    implements $FacilitiesEventCopyWith<$Res> {
  _$FacilitiesEventCopyWithImpl(this._value, this._then);

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
    extends _$FacilitiesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'FacilitiesEvent.started()';
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
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
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
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FacilitiesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFacilityDashBoardDataImplCopyWith<$Res> {
  factory _$$GetFacilityDashBoardDataImplCopyWith(
          _$GetFacilityDashBoardDataImpl value,
          $Res Function(_$GetFacilityDashBoardDataImpl) then) =
      __$$GetFacilityDashBoardDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? pTabId, String? studentId});
}

/// @nodoc
class __$$GetFacilityDashBoardDataImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetFacilityDashBoardDataImpl>
    implements _$$GetFacilityDashBoardDataImplCopyWith<$Res> {
  __$$GetFacilityDashBoardDataImplCopyWithImpl(
      _$GetFacilityDashBoardDataImpl _value,
      $Res Function(_$GetFacilityDashBoardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pTabId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$GetFacilityDashBoardDataImpl(
      pTabId: freezed == pTabId
          ? _value.pTabId
          : pTabId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFacilityDashBoardDataImpl implements _GetFacilityDashBoardData {
  const _$GetFacilityDashBoardDataImpl(
      {required this.pTabId, required this.studentId});

  @override
  final String? pTabId;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'FacilitiesEvent.getFacilityDashBoard(pTabId: $pTabId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityDashBoardDataImpl &&
            (identical(other.pTabId, pTabId) || other.pTabId == pTabId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pTabId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityDashBoardDataImplCopyWith<_$GetFacilityDashBoardDataImpl>
      get copyWith => __$$GetFacilityDashBoardDataImplCopyWithImpl<
          _$GetFacilityDashBoardDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return getFacilityDashBoard(pTabId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return getFacilityDashBoard?.call(pTabId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityDashBoard != null) {
      return getFacilityDashBoard(pTabId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return getFacilityDashBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return getFacilityDashBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityDashBoard != null) {
      return getFacilityDashBoard(this);
    }
    return orElse();
  }
}

abstract class _GetFacilityDashBoardData implements FacilitiesEvent {
  const factory _GetFacilityDashBoardData(
      {required final String? pTabId,
      required final String? studentId}) = _$GetFacilityDashBoardDataImpl;

  String? get pTabId;
  String? get studentId;
  @JsonKey(ignore: true)
  _$$GetFacilityDashBoardDataImplCopyWith<_$GetFacilityDashBoardDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFacilityInstalmentsImplCopyWith<$Res> {
  factory _$$GetFacilityInstalmentsImplCopyWith(
          _$GetFacilityInstalmentsImpl value,
          $Res Function(_$GetFacilityInstalmentsImpl) then) =
      __$$GetFacilityInstalmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? subHeadId, String? studentId});
}

/// @nodoc
class __$$GetFacilityInstalmentsImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetFacilityInstalmentsImpl>
    implements _$$GetFacilityInstalmentsImplCopyWith<$Res> {
  __$$GetFacilityInstalmentsImplCopyWithImpl(
      _$GetFacilityInstalmentsImpl _value,
      $Res Function(_$GetFacilityInstalmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subHeadId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$GetFacilityInstalmentsImpl(
      subHeadId: freezed == subHeadId
          ? _value.subHeadId
          : subHeadId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFacilityInstalmentsImpl implements _GetFacilityInstalments {
  const _$GetFacilityInstalmentsImpl(
      {required this.subHeadId, required this.studentId});

  @override
  final String? subHeadId;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'FacilitiesEvent.getFacilityInstalments(subHeadId: $subHeadId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityInstalmentsImpl &&
            (identical(other.subHeadId, subHeadId) ||
                other.subHeadId == subHeadId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subHeadId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityInstalmentsImplCopyWith<_$GetFacilityInstalmentsImpl>
      get copyWith => __$$GetFacilityInstalmentsImplCopyWithImpl<
          _$GetFacilityInstalmentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return getFacilityInstalments(subHeadId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return getFacilityInstalments?.call(subHeadId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityInstalments != null) {
      return getFacilityInstalments(subHeadId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return getFacilityInstalments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return getFacilityInstalments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityInstalments != null) {
      return getFacilityInstalments(this);
    }
    return orElse();
  }
}

abstract class _GetFacilityInstalments implements FacilitiesEvent {
  const factory _GetFacilityInstalments(
      {required final String? subHeadId,
      required final String? studentId}) = _$GetFacilityInstalmentsImpl;

  String? get subHeadId;
  String? get studentId;
  @JsonKey(ignore: true)
  _$$GetFacilityInstalmentsImplCopyWith<_$GetFacilityInstalmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFacilityStopsImplCopyWith<$Res> {
  factory _$$GetFacilityStopsImplCopyWith(_$GetFacilityStopsImpl value,
          $Res Function(_$GetFacilityStopsImpl) then) =
      __$$GetFacilityStopsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchQuery});
}

/// @nodoc
class __$$GetFacilityStopsImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetFacilityStopsImpl>
    implements _$$GetFacilityStopsImplCopyWith<$Res> {
  __$$GetFacilityStopsImplCopyWithImpl(_$GetFacilityStopsImpl _value,
      $Res Function(_$GetFacilityStopsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
  }) {
    return _then(_$GetFacilityStopsImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFacilityStopsImpl implements _GetFacilityStops {
  const _$GetFacilityStopsImpl({required this.searchQuery});

  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'FacilitiesEvent.getFacilityStops(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityStopsImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityStopsImplCopyWith<_$GetFacilityStopsImpl> get copyWith =>
      __$$GetFacilityStopsImplCopyWithImpl<_$GetFacilityStopsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return getFacilityStops(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return getFacilityStops?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityStops != null) {
      return getFacilityStops(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return getFacilityStops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return getFacilityStops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityStops != null) {
      return getFacilityStops(this);
    }
    return orElse();
  }
}

abstract class _GetFacilityStops implements FacilitiesEvent {
  const factory _GetFacilityStops({required final String? searchQuery}) =
      _$GetFacilityStopsImpl;

  String? get searchQuery;
  @JsonKey(ignore: true)
  _$$GetFacilityStopsImplCopyWith<_$GetFacilityStopsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFacilityAmountImplCopyWith<$Res> {
  factory _$$GetFacilityAmountImplCopyWith(_$GetFacilityAmountImpl value,
          $Res Function(_$GetFacilityAmountImpl) then) =
      __$$GetFacilityAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? pickUpId, String? dropOffId});
}

/// @nodoc
class __$$GetFacilityAmountImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetFacilityAmountImpl>
    implements _$$GetFacilityAmountImplCopyWith<$Res> {
  __$$GetFacilityAmountImplCopyWithImpl(_$GetFacilityAmountImpl _value,
      $Res Function(_$GetFacilityAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpId = freezed,
    Object? dropOffId = freezed,
  }) {
    return _then(_$GetFacilityAmountImpl(
      pickUpId: freezed == pickUpId
          ? _value.pickUpId
          : pickUpId // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffId: freezed == dropOffId
          ? _value.dropOffId
          : dropOffId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFacilityAmountImpl implements _GetFacilityAmount {
  const _$GetFacilityAmountImpl(
      {required this.pickUpId, required this.dropOffId});

  @override
  final String? pickUpId;
  @override
  final String? dropOffId;

  @override
  String toString() {
    return 'FacilitiesEvent.getFacilityAmount(pickUpId: $pickUpId, dropOffId: $dropOffId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityAmountImpl &&
            (identical(other.pickUpId, pickUpId) ||
                other.pickUpId == pickUpId) &&
            (identical(other.dropOffId, dropOffId) ||
                other.dropOffId == dropOffId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickUpId, dropOffId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityAmountImplCopyWith<_$GetFacilityAmountImpl> get copyWith =>
      __$$GetFacilityAmountImplCopyWithImpl<_$GetFacilityAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return getFacilityAmount(pickUpId, dropOffId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return getFacilityAmount?.call(pickUpId, dropOffId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityAmount != null) {
      return getFacilityAmount(pickUpId, dropOffId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return getFacilityAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return getFacilityAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (getFacilityAmount != null) {
      return getFacilityAmount(this);
    }
    return orElse();
  }
}

abstract class _GetFacilityAmount implements FacilitiesEvent {
  const factory _GetFacilityAmount(
      {required final String? pickUpId,
      required final String? dropOffId}) = _$GetFacilityAmountImpl;

  String? get pickUpId;
  String? get dropOffId;
  @JsonKey(ignore: true)
  _$$GetFacilityAmountImplCopyWith<_$GetFacilityAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTransportationDetailImplCopyWith<$Res> {
  factory _$$GetTransportationDetailImplCopyWith(
          _$GetTransportationDetailImpl value,
          $Res Function(_$GetTransportationDetailImpl) then) =
      __$$GetTransportationDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? studentId});
}

/// @nodoc
class __$$GetTransportationDetailImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetTransportationDetailImpl>
    implements _$$GetTransportationDetailImplCopyWith<$Res> {
  __$$GetTransportationDetailImplCopyWithImpl(
      _$GetTransportationDetailImpl _value,
      $Res Function(_$GetTransportationDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
  }) {
    return _then(_$GetTransportationDetailImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetTransportationDetailImpl implements _GetTransportationDetail {
  const _$GetTransportationDetailImpl({required this.studentId});

  @override
  final String? studentId;

  @override
  String toString() {
    return 'FacilitiesEvent.getTransportationDetail(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransportationDetailImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransportationDetailImplCopyWith<_$GetTransportationDetailImpl>
      get copyWith => __$$GetTransportationDetailImplCopyWithImpl<
          _$GetTransportationDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return getTransportationDetail(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return getTransportationDetail?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (getTransportationDetail != null) {
      return getTransportationDetail(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return getTransportationDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return getTransportationDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (getTransportationDetail != null) {
      return getTransportationDetail(this);
    }
    return orElse();
  }
}

abstract class _GetTransportationDetail implements FacilitiesEvent {
  const factory _GetTransportationDetail({required final String? studentId}) =
      _$GetTransportationDetailImpl;

  String? get studentId;
  @JsonKey(ignore: true)
  _$$GetTransportationDetailImplCopyWith<_$GetTransportationDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FacilitySubUnSubImplCopyWith<$Res> {
  factory _$$FacilitySubUnSubImplCopyWith(_$FacilitySubUnSubImpl value,
          $Res Function(_$FacilitySubUnSubImpl) then) =
      __$$FacilitySubUnSubImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? dropId,
      String? pickUpId,
      String? feeHeadId,
      String? subHeadId,
      String? unSubDate,
      String? flag,
      String? studentId});
}

/// @nodoc
class __$$FacilitySubUnSubImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$FacilitySubUnSubImpl>
    implements _$$FacilitySubUnSubImplCopyWith<$Res> {
  __$$FacilitySubUnSubImplCopyWithImpl(_$FacilitySubUnSubImpl _value,
      $Res Function(_$FacilitySubUnSubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropId = freezed,
    Object? pickUpId = freezed,
    Object? feeHeadId = freezed,
    Object? subHeadId = freezed,
    Object? unSubDate = freezed,
    Object? flag = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$FacilitySubUnSubImpl(
      dropId: freezed == dropId
          ? _value.dropId
          : dropId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpId: freezed == pickUpId
          ? _value.pickUpId
          : pickUpId // ignore: cast_nullable_to_non_nullable
              as String?,
      feeHeadId: freezed == feeHeadId
          ? _value.feeHeadId
          : feeHeadId // ignore: cast_nullable_to_non_nullable
              as String?,
      subHeadId: freezed == subHeadId
          ? _value.subHeadId
          : subHeadId // ignore: cast_nullable_to_non_nullable
              as String?,
      unSubDate: freezed == unSubDate
          ? _value.unSubDate
          : unSubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FacilitySubUnSubImpl implements _FacilitySubUnSub {
  const _$FacilitySubUnSubImpl(
      {required this.dropId,
      required this.pickUpId,
      required this.feeHeadId,
      required this.subHeadId,
      required this.unSubDate,
      required this.flag,
      required this.studentId});

  @override
  final String? dropId;
  @override
  final String? pickUpId;
  @override
  final String? feeHeadId;
  @override
  final String? subHeadId;
  @override
  final String? unSubDate;
  @override
  final String? flag;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'FacilitiesEvent.facilitySubUnSub(dropId: $dropId, pickUpId: $pickUpId, feeHeadId: $feeHeadId, subHeadId: $subHeadId, unSubDate: $unSubDate, flag: $flag, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitySubUnSubImpl &&
            (identical(other.dropId, dropId) || other.dropId == dropId) &&
            (identical(other.pickUpId, pickUpId) ||
                other.pickUpId == pickUpId) &&
            (identical(other.feeHeadId, feeHeadId) ||
                other.feeHeadId == feeHeadId) &&
            (identical(other.subHeadId, subHeadId) ||
                other.subHeadId == subHeadId) &&
            (identical(other.unSubDate, unSubDate) ||
                other.unSubDate == unSubDate) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dropId, pickUpId, feeHeadId,
      subHeadId, unSubDate, flag, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitySubUnSubImplCopyWith<_$FacilitySubUnSubImpl> get copyWith =>
      __$$FacilitySubUnSubImplCopyWithImpl<_$FacilitySubUnSubImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return facilitySubUnSub(
        dropId, pickUpId, feeHeadId, subHeadId, unSubDate, flag, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return facilitySubUnSub?.call(
        dropId, pickUpId, feeHeadId, subHeadId, unSubDate, flag, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (facilitySubUnSub != null) {
      return facilitySubUnSub(
          dropId, pickUpId, feeHeadId, subHeadId, unSubDate, flag, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return facilitySubUnSub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return facilitySubUnSub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (facilitySubUnSub != null) {
      return facilitySubUnSub(this);
    }
    return orElse();
  }
}

abstract class _FacilitySubUnSub implements FacilitiesEvent {
  const factory _FacilitySubUnSub(
      {required final String? dropId,
      required final String? pickUpId,
      required final String? feeHeadId,
      required final String? subHeadId,
      required final String? unSubDate,
      required final String? flag,
      required final String? studentId}) = _$FacilitySubUnSubImpl;

  String? get dropId;
  String? get pickUpId;
  String? get feeHeadId;
  String? get subHeadId;
  String? get unSubDate;
  String? get flag;
  String? get studentId;
  @JsonKey(ignore: true)
  _$$FacilitySubUnSubImplCopyWith<_$FacilitySubUnSubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransportationStopChangeImplCopyWith<$Res> {
  factory _$$TransportationStopChangeImplCopyWith(
          _$TransportationStopChangeImpl value,
          $Res Function(_$TransportationStopChangeImpl) then) =
      __$$TransportationStopChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? dropId, String? pickUpId, String? studentId});
}

/// @nodoc
class __$$TransportationStopChangeImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$TransportationStopChangeImpl>
    implements _$$TransportationStopChangeImplCopyWith<$Res> {
  __$$TransportationStopChangeImplCopyWithImpl(
      _$TransportationStopChangeImpl _value,
      $Res Function(_$TransportationStopChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropId = freezed,
    Object? pickUpId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$TransportationStopChangeImpl(
      dropId: freezed == dropId
          ? _value.dropId
          : dropId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpId: freezed == pickUpId
          ? _value.pickUpId
          : pickUpId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransportationStopChangeImpl implements _TransportationStopChange {
  const _$TransportationStopChangeImpl(
      {required this.dropId, required this.pickUpId, required this.studentId});

  @override
  final String? dropId;
  @override
  final String? pickUpId;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'FacilitiesEvent.transportationStopChange(dropId: $dropId, pickUpId: $pickUpId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportationStopChangeImpl &&
            (identical(other.dropId, dropId) || other.dropId == dropId) &&
            (identical(other.pickUpId, pickUpId) ||
                other.pickUpId == pickUpId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dropId, pickUpId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportationStopChangeImplCopyWith<_$TransportationStopChangeImpl>
      get copyWith => __$$TransportationStopChangeImplCopyWithImpl<
          _$TransportationStopChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId, String? studentId)
        getFacilityDashBoard,
    required TResult Function(String? subHeadId, String? studentId)
        getFacilityInstalments,
    required TResult Function(String? searchQuery) getFacilityStops,
    required TResult Function(String? pickUpId, String? dropOffId)
        getFacilityAmount,
    required TResult Function(String? studentId) getTransportationDetail,
    required TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)
        facilitySubUnSub,
    required TResult Function(
            String? dropId, String? pickUpId, String? studentId)
        transportationStopChange,
  }) {
    return transportationStopChange(dropId, pickUpId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult? Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult? Function(String? searchQuery)? getFacilityStops,
    TResult? Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult? Function(String? studentId)? getTransportationDetail,
    TResult? Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult? Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
  }) {
    return transportationStopChange?.call(dropId, pickUpId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId, String? studentId)? getFacilityDashBoard,
    TResult Function(String? subHeadId, String? studentId)?
        getFacilityInstalments,
    TResult Function(String? searchQuery)? getFacilityStops,
    TResult Function(String? pickUpId, String? dropOffId)? getFacilityAmount,
    TResult Function(String? studentId)? getTransportationDetail,
    TResult Function(
            String? dropId,
            String? pickUpId,
            String? feeHeadId,
            String? subHeadId,
            String? unSubDate,
            String? flag,
            String? studentId)?
        facilitySubUnSub,
    TResult Function(String? dropId, String? pickUpId, String? studentId)?
        transportationStopChange,
    required TResult orElse(),
  }) {
    if (transportationStopChange != null) {
      return transportationStopChange(dropId, pickUpId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
    required TResult Function(_GetFacilityInstalments value)
        getFacilityInstalments,
    required TResult Function(_GetFacilityStops value) getFacilityStops,
    required TResult Function(_GetFacilityAmount value) getFacilityAmount,
    required TResult Function(_GetTransportationDetail value)
        getTransportationDetail,
    required TResult Function(_FacilitySubUnSub value) facilitySubUnSub,
    required TResult Function(_TransportationStopChange value)
        transportationStopChange,
  }) {
    return transportationStopChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult? Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult? Function(_GetFacilityStops value)? getFacilityStops,
    TResult? Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult? Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult? Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult? Function(_TransportationStopChange value)?
        transportationStopChange,
  }) {
    return transportationStopChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    TResult Function(_GetFacilityInstalments value)? getFacilityInstalments,
    TResult Function(_GetFacilityStops value)? getFacilityStops,
    TResult Function(_GetFacilityAmount value)? getFacilityAmount,
    TResult Function(_GetTransportationDetail value)? getTransportationDetail,
    TResult Function(_FacilitySubUnSub value)? facilitySubUnSub,
    TResult Function(_TransportationStopChange value)? transportationStopChange,
    required TResult orElse(),
  }) {
    if (transportationStopChange != null) {
      return transportationStopChange(this);
    }
    return orElse();
  }
}

abstract class _TransportationStopChange implements FacilitiesEvent {
  const factory _TransportationStopChange(
      {required final String? dropId,
      required final String? pickUpId,
      required final String? studentId}) = _$TransportationStopChangeImpl;

  String? get dropId;
  String? get pickUpId;
  String? get studentId;
  @JsonKey(ignore: true)
  _$$TransportationStopChangeImplCopyWith<_$TransportationStopChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FacilitiesState {
  ResponseClassify<List<GetFacilityDashBoardEntity?>>
      get getFacilityDashBoard => throw _privateConstructorUsedError;
  ResponseClassify<List<FacilityInstalmentsEntity?>>
      get getFacilityInstalments => throw _privateConstructorUsedError;
  ResponseClassify<List<GetFacilityStopsEntity?>> get getFacilityStops =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<GetTransportAmountEntity?>> get getFacilityAmount =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<TransportationDetailEntity?>>
      get getTransportationDetail => throw _privateConstructorUsedError;
  ResponseClassify<FacilitySubUnSubEntity> get facilitySubUnSub =>
      throw _privateConstructorUsedError;
  ResponseClassify<FacilitySubUnSubEntity> get transportationStopChange =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacilitiesStateCopyWith<FacilitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesStateCopyWith<$Res> {
  factory $FacilitiesStateCopyWith(
          FacilitiesState value, $Res Function(FacilitiesState) then) =
      _$FacilitiesStateCopyWithImpl<$Res, FacilitiesState>;
  @useResult
  $Res call(
      {ResponseClassify<List<GetFacilityDashBoardEntity?>> getFacilityDashBoard,
      ResponseClassify<List<FacilityInstalmentsEntity?>> getFacilityInstalments,
      ResponseClassify<List<GetFacilityStopsEntity?>> getFacilityStops,
      ResponseClassify<List<GetTransportAmountEntity?>> getFacilityAmount,
      ResponseClassify<List<TransportationDetailEntity?>>
          getTransportationDetail,
      ResponseClassify<FacilitySubUnSubEntity> facilitySubUnSub,
      ResponseClassify<FacilitySubUnSubEntity> transportationStopChange});
}

/// @nodoc
class _$FacilitiesStateCopyWithImpl<$Res, $Val extends FacilitiesState>
    implements $FacilitiesStateCopyWith<$Res> {
  _$FacilitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getFacilityDashBoard = null,
    Object? getFacilityInstalments = null,
    Object? getFacilityStops = null,
    Object? getFacilityAmount = null,
    Object? getTransportationDetail = null,
    Object? facilitySubUnSub = null,
    Object? transportationStopChange = null,
  }) {
    return _then(_value.copyWith(
      getFacilityDashBoard: null == getFacilityDashBoard
          ? _value.getFacilityDashBoard
          : getFacilityDashBoard // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityDashBoardEntity?>>,
      getFacilityInstalments: null == getFacilityInstalments
          ? _value.getFacilityInstalments
          : getFacilityInstalments // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<FacilityInstalmentsEntity?>>,
      getFacilityStops: null == getFacilityStops
          ? _value.getFacilityStops
          : getFacilityStops // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityStopsEntity?>>,
      getFacilityAmount: null == getFacilityAmount
          ? _value.getFacilityAmount
          : getFacilityAmount // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetTransportAmountEntity?>>,
      getTransportationDetail: null == getTransportationDetail
          ? _value.getTransportationDetail
          : getTransportationDetail // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TransportationDetailEntity?>>,
      facilitySubUnSub: null == facilitySubUnSub
          ? _value.facilitySubUnSub
          : facilitySubUnSub // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<FacilitySubUnSubEntity>,
      transportationStopChange: null == transportationStopChange
          ? _value.transportationStopChange
          : transportationStopChange // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<FacilitySubUnSubEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilitiesStateImplCopyWith<$Res>
    implements $FacilitiesStateCopyWith<$Res> {
  factory _$$FacilitiesStateImplCopyWith(_$FacilitiesStateImpl value,
          $Res Function(_$FacilitiesStateImpl) then) =
      __$$FacilitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<GetFacilityDashBoardEntity?>> getFacilityDashBoard,
      ResponseClassify<List<FacilityInstalmentsEntity?>> getFacilityInstalments,
      ResponseClassify<List<GetFacilityStopsEntity?>> getFacilityStops,
      ResponseClassify<List<GetTransportAmountEntity?>> getFacilityAmount,
      ResponseClassify<List<TransportationDetailEntity?>>
          getTransportationDetail,
      ResponseClassify<FacilitySubUnSubEntity> facilitySubUnSub,
      ResponseClassify<FacilitySubUnSubEntity> transportationStopChange});
}

/// @nodoc
class __$$FacilitiesStateImplCopyWithImpl<$Res>
    extends _$FacilitiesStateCopyWithImpl<$Res, _$FacilitiesStateImpl>
    implements _$$FacilitiesStateImplCopyWith<$Res> {
  __$$FacilitiesStateImplCopyWithImpl(
      _$FacilitiesStateImpl _value, $Res Function(_$FacilitiesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getFacilityDashBoard = null,
    Object? getFacilityInstalments = null,
    Object? getFacilityStops = null,
    Object? getFacilityAmount = null,
    Object? getTransportationDetail = null,
    Object? facilitySubUnSub = null,
    Object? transportationStopChange = null,
  }) {
    return _then(_$FacilitiesStateImpl(
      getFacilityDashBoard: null == getFacilityDashBoard
          ? _value.getFacilityDashBoard
          : getFacilityDashBoard // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityDashBoardEntity?>>,
      getFacilityInstalments: null == getFacilityInstalments
          ? _value.getFacilityInstalments
          : getFacilityInstalments // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<FacilityInstalmentsEntity?>>,
      getFacilityStops: null == getFacilityStops
          ? _value.getFacilityStops
          : getFacilityStops // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityStopsEntity?>>,
      getFacilityAmount: null == getFacilityAmount
          ? _value.getFacilityAmount
          : getFacilityAmount // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetTransportAmountEntity?>>,
      getTransportationDetail: null == getTransportationDetail
          ? _value.getTransportationDetail
          : getTransportationDetail // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TransportationDetailEntity?>>,
      facilitySubUnSub: null == facilitySubUnSub
          ? _value.facilitySubUnSub
          : facilitySubUnSub // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<FacilitySubUnSubEntity>,
      transportationStopChange: null == transportationStopChange
          ? _value.transportationStopChange
          : transportationStopChange // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<FacilitySubUnSubEntity>,
    ));
  }
}

/// @nodoc

class _$FacilitiesStateImpl implements _FacilitiesState {
  const _$FacilitiesStateImpl(
      {required this.getFacilityDashBoard,
      required this.getFacilityInstalments,
      required this.getFacilityStops,
      required this.getFacilityAmount,
      required this.getTransportationDetail,
      required this.facilitySubUnSub,
      required this.transportationStopChange});

  @override
  final ResponseClassify<List<GetFacilityDashBoardEntity?>>
      getFacilityDashBoard;
  @override
  final ResponseClassify<List<FacilityInstalmentsEntity?>>
      getFacilityInstalments;
  @override
  final ResponseClassify<List<GetFacilityStopsEntity?>> getFacilityStops;
  @override
  final ResponseClassify<List<GetTransportAmountEntity?>> getFacilityAmount;
  @override
  final ResponseClassify<List<TransportationDetailEntity?>>
      getTransportationDetail;
  @override
  final ResponseClassify<FacilitySubUnSubEntity> facilitySubUnSub;
  @override
  final ResponseClassify<FacilitySubUnSubEntity> transportationStopChange;

  @override
  String toString() {
    return 'FacilitiesState(getFacilityDashBoard: $getFacilityDashBoard, getFacilityInstalments: $getFacilityInstalments, getFacilityStops: $getFacilityStops, getFacilityAmount: $getFacilityAmount, getTransportationDetail: $getTransportationDetail, facilitySubUnSub: $facilitySubUnSub, transportationStopChange: $transportationStopChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitiesStateImpl &&
            (identical(other.getFacilityDashBoard, getFacilityDashBoard) ||
                other.getFacilityDashBoard == getFacilityDashBoard) &&
            (identical(other.getFacilityInstalments, getFacilityInstalments) ||
                other.getFacilityInstalments == getFacilityInstalments) &&
            (identical(other.getFacilityStops, getFacilityStops) ||
                other.getFacilityStops == getFacilityStops) &&
            (identical(other.getFacilityAmount, getFacilityAmount) ||
                other.getFacilityAmount == getFacilityAmount) &&
            (identical(
                    other.getTransportationDetail, getTransportationDetail) ||
                other.getTransportationDetail == getTransportationDetail) &&
            (identical(other.facilitySubUnSub, facilitySubUnSub) ||
                other.facilitySubUnSub == facilitySubUnSub) &&
            (identical(
                    other.transportationStopChange, transportationStopChange) ||
                other.transportationStopChange == transportationStopChange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getFacilityDashBoard,
      getFacilityInstalments,
      getFacilityStops,
      getFacilityAmount,
      getTransportationDetail,
      facilitySubUnSub,
      transportationStopChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitiesStateImplCopyWith<_$FacilitiesStateImpl> get copyWith =>
      __$$FacilitiesStateImplCopyWithImpl<_$FacilitiesStateImpl>(
          this, _$identity);
}

abstract class _FacilitiesState implements FacilitiesState {
  const factory _FacilitiesState(
      {required final ResponseClassify<List<GetFacilityDashBoardEntity?>>
          getFacilityDashBoard,
      required final ResponseClassify<List<FacilityInstalmentsEntity?>>
          getFacilityInstalments,
      required final ResponseClassify<List<GetFacilityStopsEntity?>>
          getFacilityStops,
      required final ResponseClassify<List<GetTransportAmountEntity?>>
          getFacilityAmount,
      required final ResponseClassify<List<TransportationDetailEntity?>>
          getTransportationDetail,
      required final ResponseClassify<FacilitySubUnSubEntity> facilitySubUnSub,
      required final ResponseClassify<FacilitySubUnSubEntity>
          transportationStopChange}) = _$FacilitiesStateImpl;

  @override
  ResponseClassify<List<GetFacilityDashBoardEntity?>> get getFacilityDashBoard;
  @override
  ResponseClassify<List<FacilityInstalmentsEntity?>> get getFacilityInstalments;
  @override
  ResponseClassify<List<GetFacilityStopsEntity?>> get getFacilityStops;
  @override
  ResponseClassify<List<GetTransportAmountEntity?>> get getFacilityAmount;
  @override
  ResponseClassify<List<TransportationDetailEntity?>>
      get getTransportationDetail;
  @override
  ResponseClassify<FacilitySubUnSubEntity> get facilitySubUnSub;
  @override
  ResponseClassify<FacilitySubUnSubEntity> get transportationStopChange;
  @override
  @JsonKey(ignore: true)
  _$$FacilitiesStateImplCopyWith<_$FacilitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

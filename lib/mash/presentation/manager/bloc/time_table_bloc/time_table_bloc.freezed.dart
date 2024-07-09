// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeTableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedUserId) getOfflineExamTerms,
    required TResult Function(String termId, bool isInit, String selectedUserId)
        getOfflineExamTimeTable,
    required TResult Function(String date) getDailyTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedUserId)? getOfflineExamTerms,
    TResult? Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult? Function(String date)? getDailyTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedUserId)? getOfflineExamTerms,
    TResult Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult Function(String date)? getDailyTimeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
    required TResult Function(_GetDailyTimeTable value) getDailyTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult? Function(_GetDailyTimeTable value)? getDailyTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult Function(_GetDailyTimeTable value)? getDailyTimeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableEventCopyWith<$Res> {
  factory $TimeTableEventCopyWith(
          TimeTableEvent value, $Res Function(TimeTableEvent) then) =
      _$TimeTableEventCopyWithImpl<$Res, TimeTableEvent>;
}

/// @nodoc
class _$TimeTableEventCopyWithImpl<$Res, $Val extends TimeTableEvent>
    implements $TimeTableEventCopyWith<$Res> {
  _$TimeTableEventCopyWithImpl(this._value, this._then);

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
    extends _$TimeTableEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TimeTableEvent.started()';
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
    required TResult Function(String selectedUserId) getOfflineExamTerms,
    required TResult Function(String termId, bool isInit, String selectedUserId)
        getOfflineExamTimeTable,
    required TResult Function(String date) getDailyTimeTable,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedUserId)? getOfflineExamTerms,
    TResult? Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult? Function(String date)? getDailyTimeTable,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedUserId)? getOfflineExamTerms,
    TResult Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult Function(String date)? getDailyTimeTable,
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
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
    required TResult Function(_GetDailyTimeTable value) getDailyTimeTable,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult? Function(_GetDailyTimeTable value)? getDailyTimeTable,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult Function(_GetDailyTimeTable value)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TimeTableEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOfflineExamTermsImplCopyWith<$Res> {
  factory _$$GetOfflineExamTermsImplCopyWith(_$GetOfflineExamTermsImpl value,
          $Res Function(_$GetOfflineExamTermsImpl) then) =
      __$$GetOfflineExamTermsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedUserId});
}

/// @nodoc
class __$$GetOfflineExamTermsImplCopyWithImpl<$Res>
    extends _$TimeTableEventCopyWithImpl<$Res, _$GetOfflineExamTermsImpl>
    implements _$$GetOfflineExamTermsImplCopyWith<$Res> {
  __$$GetOfflineExamTermsImplCopyWithImpl(_$GetOfflineExamTermsImpl _value,
      $Res Function(_$GetOfflineExamTermsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUserId = null,
  }) {
    return _then(_$GetOfflineExamTermsImpl(
      selectedUserId: null == selectedUserId
          ? _value.selectedUserId
          : selectedUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOfflineExamTermsImpl implements _GetOfflineExamTerms {
  const _$GetOfflineExamTermsImpl({required this.selectedUserId});

  @override
  final String selectedUserId;

  @override
  String toString() {
    return 'TimeTableEvent.getOfflineExamTerms(selectedUserId: $selectedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOfflineExamTermsImpl &&
            (identical(other.selectedUserId, selectedUserId) ||
                other.selectedUserId == selectedUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOfflineExamTermsImplCopyWith<_$GetOfflineExamTermsImpl> get copyWith =>
      __$$GetOfflineExamTermsImplCopyWithImpl<_$GetOfflineExamTermsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedUserId) getOfflineExamTerms,
    required TResult Function(String termId, bool isInit, String selectedUserId)
        getOfflineExamTimeTable,
    required TResult Function(String date) getDailyTimeTable,
  }) {
    return getOfflineExamTerms(selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedUserId)? getOfflineExamTerms,
    TResult? Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult? Function(String date)? getDailyTimeTable,
  }) {
    return getOfflineExamTerms?.call(selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedUserId)? getOfflineExamTerms,
    TResult Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult Function(String date)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTerms != null) {
      return getOfflineExamTerms(selectedUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
    required TResult Function(_GetDailyTimeTable value) getDailyTimeTable,
  }) {
    return getOfflineExamTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult? Function(_GetDailyTimeTable value)? getDailyTimeTable,
  }) {
    return getOfflineExamTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult Function(_GetDailyTimeTable value)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTerms != null) {
      return getOfflineExamTerms(this);
    }
    return orElse();
  }
}

abstract class _GetOfflineExamTerms implements TimeTableEvent {
  const factory _GetOfflineExamTerms({required final String selectedUserId}) =
      _$GetOfflineExamTermsImpl;

  String get selectedUserId;
  @JsonKey(ignore: true)
  _$$GetOfflineExamTermsImplCopyWith<_$GetOfflineExamTermsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOfflineExamTimeTableImplCopyWith<$Res> {
  factory _$$GetOfflineExamTimeTableImplCopyWith(
          _$GetOfflineExamTimeTableImpl value,
          $Res Function(_$GetOfflineExamTimeTableImpl) then) =
      __$$GetOfflineExamTimeTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String termId, bool isInit, String selectedUserId});
}

/// @nodoc
class __$$GetOfflineExamTimeTableImplCopyWithImpl<$Res>
    extends _$TimeTableEventCopyWithImpl<$Res, _$GetOfflineExamTimeTableImpl>
    implements _$$GetOfflineExamTimeTableImplCopyWith<$Res> {
  __$$GetOfflineExamTimeTableImplCopyWithImpl(
      _$GetOfflineExamTimeTableImpl _value,
      $Res Function(_$GetOfflineExamTimeTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
    Object? isInit = null,
    Object? selectedUserId = null,
  }) {
    return _then(_$GetOfflineExamTimeTableImpl(
      termId: null == termId
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedUserId: null == selectedUserId
          ? _value.selectedUserId
          : selectedUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOfflineExamTimeTableImpl implements _GetOfflineExamTimeTable {
  const _$GetOfflineExamTimeTableImpl(
      {required this.termId,
      required this.isInit,
      required this.selectedUserId});

  @override
  final String termId;
  @override
  final bool isInit;
  @override
  final String selectedUserId;

  @override
  String toString() {
    return 'TimeTableEvent.getOfflineExamTimeTable(termId: $termId, isInit: $isInit, selectedUserId: $selectedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOfflineExamTimeTableImpl &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.isInit, isInit) || other.isInit == isInit) &&
            (identical(other.selectedUserId, selectedUserId) ||
                other.selectedUserId == selectedUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId, isInit, selectedUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOfflineExamTimeTableImplCopyWith<_$GetOfflineExamTimeTableImpl>
      get copyWith => __$$GetOfflineExamTimeTableImplCopyWithImpl<
          _$GetOfflineExamTimeTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedUserId) getOfflineExamTerms,
    required TResult Function(String termId, bool isInit, String selectedUserId)
        getOfflineExamTimeTable,
    required TResult Function(String date) getDailyTimeTable,
  }) {
    return getOfflineExamTimeTable(termId, isInit, selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedUserId)? getOfflineExamTerms,
    TResult? Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult? Function(String date)? getDailyTimeTable,
  }) {
    return getOfflineExamTimeTable?.call(termId, isInit, selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedUserId)? getOfflineExamTerms,
    TResult Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult Function(String date)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTimeTable != null) {
      return getOfflineExamTimeTable(termId, isInit, selectedUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
    required TResult Function(_GetDailyTimeTable value) getDailyTimeTable,
  }) {
    return getOfflineExamTimeTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult? Function(_GetDailyTimeTable value)? getDailyTimeTable,
  }) {
    return getOfflineExamTimeTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult Function(_GetDailyTimeTable value)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTimeTable != null) {
      return getOfflineExamTimeTable(this);
    }
    return orElse();
  }
}

abstract class _GetOfflineExamTimeTable implements TimeTableEvent {
  const factory _GetOfflineExamTimeTable(
      {required final String termId,
      required final bool isInit,
      required final String selectedUserId}) = _$GetOfflineExamTimeTableImpl;

  String get termId;
  bool get isInit;
  String get selectedUserId;
  @JsonKey(ignore: true)
  _$$GetOfflineExamTimeTableImplCopyWith<_$GetOfflineExamTimeTableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDailyTimeTableImplCopyWith<$Res> {
  factory _$$GetDailyTimeTableImplCopyWith(_$GetDailyTimeTableImpl value,
          $Res Function(_$GetDailyTimeTableImpl) then) =
      __$$GetDailyTimeTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$GetDailyTimeTableImplCopyWithImpl<$Res>
    extends _$TimeTableEventCopyWithImpl<$Res, _$GetDailyTimeTableImpl>
    implements _$$GetDailyTimeTableImplCopyWith<$Res> {
  __$$GetDailyTimeTableImplCopyWithImpl(_$GetDailyTimeTableImpl _value,
      $Res Function(_$GetDailyTimeTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetDailyTimeTableImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDailyTimeTableImpl implements _GetDailyTimeTable {
  const _$GetDailyTimeTableImpl({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'TimeTableEvent.getDailyTimeTable(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyTimeTableImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyTimeTableImplCopyWith<_$GetDailyTimeTableImpl> get copyWith =>
      __$$GetDailyTimeTableImplCopyWithImpl<_$GetDailyTimeTableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedUserId) getOfflineExamTerms,
    required TResult Function(String termId, bool isInit, String selectedUserId)
        getOfflineExamTimeTable,
    required TResult Function(String date) getDailyTimeTable,
  }) {
    return getDailyTimeTable(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedUserId)? getOfflineExamTerms,
    TResult? Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult? Function(String date)? getDailyTimeTable,
  }) {
    return getDailyTimeTable?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedUserId)? getOfflineExamTerms,
    TResult Function(String termId, bool isInit, String selectedUserId)?
        getOfflineExamTimeTable,
    TResult Function(String date)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getDailyTimeTable != null) {
      return getDailyTimeTable(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
    required TResult Function(_GetDailyTimeTable value) getDailyTimeTable,
  }) {
    return getDailyTimeTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult? Function(_GetDailyTimeTable value)? getDailyTimeTable,
  }) {
    return getDailyTimeTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    TResult Function(_GetDailyTimeTable value)? getDailyTimeTable,
    required TResult orElse(),
  }) {
    if (getDailyTimeTable != null) {
      return getDailyTimeTable(this);
    }
    return orElse();
  }
}

abstract class _GetDailyTimeTable implements TimeTableEvent {
  const factory _GetDailyTimeTable({required final String date}) =
      _$GetDailyTimeTableImpl;

  String get date;
  @JsonKey(ignore: true)
  _$$GetDailyTimeTableImplCopyWith<_$GetDailyTimeTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeTableState {
  ResponseClassify<List<OfflineTimeTableTermEntity>>? get getOfflineExamTerms =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<OfflineExamTimeTableEntity>>?
      get getOfflineExamTimeTable => throw _privateConstructorUsedError;
  ResponseClassify<List<DailyTimeTableEntity>>? get getDailyTimeTable =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeTableStateCopyWith<TimeTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableStateCopyWith<$Res> {
  factory $TimeTableStateCopyWith(
          TimeTableState value, $Res Function(TimeTableState) then) =
      _$TimeTableStateCopyWithImpl<$Res, TimeTableState>;
  @useResult
  $Res call(
      {ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,
      ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable,
      ResponseClassify<List<DailyTimeTableEntity>>? getDailyTimeTable});
}

/// @nodoc
class _$TimeTableStateCopyWithImpl<$Res, $Val extends TimeTableState>
    implements $TimeTableStateCopyWith<$Res> {
  _$TimeTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOfflineExamTerms = freezed,
    Object? getOfflineExamTimeTable = freezed,
    Object? getDailyTimeTable = freezed,
  }) {
    return _then(_value.copyWith(
      getOfflineExamTerms: freezed == getOfflineExamTerms
          ? _value.getOfflineExamTerms
          : getOfflineExamTerms // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineTimeTableTermEntity>>?,
      getOfflineExamTimeTable: freezed == getOfflineExamTimeTable
          ? _value.getOfflineExamTimeTable
          : getOfflineExamTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineExamTimeTableEntity>>?,
      getDailyTimeTable: freezed == getDailyTimeTable
          ? _value.getDailyTimeTable
          : getDailyTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DailyTimeTableEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineExamTimeTableStateImplCopyWith<$Res>
    implements $TimeTableStateCopyWith<$Res> {
  factory _$$OfflineExamTimeTableStateImplCopyWith(
          _$OfflineExamTimeTableStateImpl value,
          $Res Function(_$OfflineExamTimeTableStateImpl) then) =
      __$$OfflineExamTimeTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,
      ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable,
      ResponseClassify<List<DailyTimeTableEntity>>? getDailyTimeTable});
}

/// @nodoc
class __$$OfflineExamTimeTableStateImplCopyWithImpl<$Res>
    extends _$TimeTableStateCopyWithImpl<$Res, _$OfflineExamTimeTableStateImpl>
    implements _$$OfflineExamTimeTableStateImplCopyWith<$Res> {
  __$$OfflineExamTimeTableStateImplCopyWithImpl(
      _$OfflineExamTimeTableStateImpl _value,
      $Res Function(_$OfflineExamTimeTableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOfflineExamTerms = freezed,
    Object? getOfflineExamTimeTable = freezed,
    Object? getDailyTimeTable = freezed,
  }) {
    return _then(_$OfflineExamTimeTableStateImpl(
      getOfflineExamTerms: freezed == getOfflineExamTerms
          ? _value.getOfflineExamTerms
          : getOfflineExamTerms // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineTimeTableTermEntity>>?,
      getOfflineExamTimeTable: freezed == getOfflineExamTimeTable
          ? _value.getOfflineExamTimeTable
          : getOfflineExamTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineExamTimeTableEntity>>?,
      getDailyTimeTable: freezed == getDailyTimeTable
          ? _value.getDailyTimeTable
          : getDailyTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DailyTimeTableEntity>>?,
    ));
  }
}

/// @nodoc

class _$OfflineExamTimeTableStateImpl implements _OfflineExamTimeTableState {
  const _$OfflineExamTimeTableStateImpl(
      {required this.getOfflineExamTerms,
      required this.getOfflineExamTimeTable,
      required this.getDailyTimeTable});

  @override
  final ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms;
  @override
  final ResponseClassify<List<OfflineExamTimeTableEntity>>?
      getOfflineExamTimeTable;
  @override
  final ResponseClassify<List<DailyTimeTableEntity>>? getDailyTimeTable;

  @override
  String toString() {
    return 'TimeTableState(getOfflineExamTerms: $getOfflineExamTerms, getOfflineExamTimeTable: $getOfflineExamTimeTable, getDailyTimeTable: $getDailyTimeTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineExamTimeTableStateImpl &&
            (identical(other.getOfflineExamTerms, getOfflineExamTerms) ||
                other.getOfflineExamTerms == getOfflineExamTerms) &&
            (identical(
                    other.getOfflineExamTimeTable, getOfflineExamTimeTable) ||
                other.getOfflineExamTimeTable == getOfflineExamTimeTable) &&
            (identical(other.getDailyTimeTable, getDailyTimeTable) ||
                other.getDailyTimeTable == getDailyTimeTable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getOfflineExamTerms,
      getOfflineExamTimeTable, getDailyTimeTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineExamTimeTableStateImplCopyWith<_$OfflineExamTimeTableStateImpl>
      get copyWith => __$$OfflineExamTimeTableStateImplCopyWithImpl<
          _$OfflineExamTimeTableStateImpl>(this, _$identity);
}

abstract class _OfflineExamTimeTableState implements TimeTableState {
  const factory _OfflineExamTimeTableState(
      {required final ResponseClassify<List<OfflineTimeTableTermEntity>>?
          getOfflineExamTerms,
      required final ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable,
      required final ResponseClassify<List<DailyTimeTableEntity>>?
          getDailyTimeTable}) = _$OfflineExamTimeTableStateImpl;

  @override
  ResponseClassify<List<OfflineTimeTableTermEntity>>? get getOfflineExamTerms;
  @override
  ResponseClassify<List<OfflineExamTimeTableEntity>>?
      get getOfflineExamTimeTable;
  @override
  ResponseClassify<List<DailyTimeTableEntity>>? get getDailyTimeTable;
  @override
  @JsonKey(ignore: true)
  _$$OfflineExamTimeTableStateImplCopyWith<_$OfflineExamTimeTableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

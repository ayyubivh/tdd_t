// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

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
    extends _$TeacherEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TeacherEvent.started()';
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
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
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
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TeacherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetRatingsImplCopyWith<$Res> {
  factory _$$GetRatingsImplCopyWith(
          _$GetRatingsImpl value, $Res Function(_$GetRatingsImpl) then) =
      __$$GetRatingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRatingsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$GetRatingsImpl>
    implements _$$GetRatingsImplCopyWith<$Res> {
  __$$GetRatingsImplCopyWithImpl(
      _$GetRatingsImpl _value, $Res Function(_$GetRatingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRatingsImpl implements _GetRatings {
  const _$GetRatingsImpl();

  @override
  String toString() {
    return 'TeacherEvent.getRatings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRatingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) {
    return getRatings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) {
    return getRatings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
    required TResult orElse(),
  }) {
    if (getRatings != null) {
      return getRatings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) {
    return getRatings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) {
    return getRatings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) {
    if (getRatings != null) {
      return getRatings(this);
    }
    return orElse();
  }
}

abstract class _GetRatings implements TeacherEvent {
  const factory _GetRatings() = _$GetRatingsImpl;
}

/// @nodoc
abstract class _$$GetRatingQuestionsImplCopyWith<$Res> {
  factory _$$GetRatingQuestionsImplCopyWith(_$GetRatingQuestionsImpl value,
          $Res Function(_$GetRatingQuestionsImpl) then) =
      __$$GetRatingQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRatingQuestionsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$GetRatingQuestionsImpl>
    implements _$$GetRatingQuestionsImplCopyWith<$Res> {
  __$$GetRatingQuestionsImplCopyWithImpl(_$GetRatingQuestionsImpl _value,
      $Res Function(_$GetRatingQuestionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRatingQuestionsImpl implements _GetRatingQuestions {
  const _$GetRatingQuestionsImpl();

  @override
  String toString() {
    return 'TeacherEvent.getRatingQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRatingQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) {
    return getRatingQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) {
    return getRatingQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
    required TResult orElse(),
  }) {
    if (getRatingQuestions != null) {
      return getRatingQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) {
    return getRatingQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) {
    return getRatingQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) {
    if (getRatingQuestions != null) {
      return getRatingQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetRatingQuestions implements TeacherEvent {
  const factory _GetRatingQuestions() = _$GetRatingQuestionsImpl;
}

/// @nodoc
abstract class _$$ClearTeacherRatingsImplCopyWith<$Res> {
  factory _$$ClearTeacherRatingsImplCopyWith(_$ClearTeacherRatingsImpl value,
          $Res Function(_$ClearTeacherRatingsImpl) then) =
      __$$ClearTeacherRatingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTeacherRatingsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$ClearTeacherRatingsImpl>
    implements _$$ClearTeacherRatingsImplCopyWith<$Res> {
  __$$ClearTeacherRatingsImplCopyWithImpl(_$ClearTeacherRatingsImpl _value,
      $Res Function(_$ClearTeacherRatingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTeacherRatingsImpl implements _ClearTeacherRatings {
  const _$ClearTeacherRatingsImpl();

  @override
  String toString() {
    return 'TeacherEvent.clearTeacherRatingList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTeacherRatingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) {
    return clearTeacherRatingList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) {
    return clearTeacherRatingList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
    required TResult orElse(),
  }) {
    if (clearTeacherRatingList != null) {
      return clearTeacherRatingList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) {
    return clearTeacherRatingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) {
    return clearTeacherRatingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) {
    if (clearTeacherRatingList != null) {
      return clearTeacherRatingList(this);
    }
    return orElse();
  }
}

abstract class _ClearTeacherRatings implements TeacherEvent {
  const factory _ClearTeacherRatings() = _$ClearTeacherRatingsImpl;
}

/// @nodoc
abstract class _$$PostTeacherRatingImplCopyWith<$Res> {
  factory _$$PostTeacherRatingImplCopyWith(_$PostTeacherRatingImpl value,
          $Res Function(_$PostTeacherRatingImpl) then) =
      __$$PostTeacherRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String teacherId,
      String subId,
      String? remarks,
      List<RatedQuestion> ratedQuestions});
}

/// @nodoc
class __$$PostTeacherRatingImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$PostTeacherRatingImpl>
    implements _$$PostTeacherRatingImplCopyWith<$Res> {
  __$$PostTeacherRatingImplCopyWithImpl(_$PostTeacherRatingImpl _value,
      $Res Function(_$PostTeacherRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? subId = null,
    Object? remarks = freezed,
    Object? ratedQuestions = null,
  }) {
    return _then(_$PostTeacherRatingImpl(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      subId: null == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      ratedQuestions: null == ratedQuestions
          ? _value._ratedQuestions
          : ratedQuestions // ignore: cast_nullable_to_non_nullable
              as List<RatedQuestion>,
    ));
  }
}

/// @nodoc

class _$PostTeacherRatingImpl implements _PostTeacherRating {
  const _$PostTeacherRatingImpl(
      {required this.teacherId,
      required this.subId,
      this.remarks,
      required final List<RatedQuestion> ratedQuestions})
      : _ratedQuestions = ratedQuestions;

  @override
  final String teacherId;
  @override
  final String subId;
  @override
  final String? remarks;
  final List<RatedQuestion> _ratedQuestions;
  @override
  List<RatedQuestion> get ratedQuestions {
    if (_ratedQuestions is EqualUnmodifiableListView) return _ratedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratedQuestions);
  }

  @override
  String toString() {
    return 'TeacherEvent.postTeacherRating(teacherId: $teacherId, subId: $subId, remarks: $remarks, ratedQuestions: $ratedQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTeacherRatingImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            const DeepCollectionEquality()
                .equals(other._ratedQuestions, _ratedQuestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId, subId, remarks,
      const DeepCollectionEquality().hash(_ratedQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTeacherRatingImplCopyWith<_$PostTeacherRatingImpl> get copyWith =>
      __$$PostTeacherRatingImplCopyWithImpl<_$PostTeacherRatingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
    required TResult Function() clearTeacherRatingList,
    required TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)
        postTeacherRating,
  }) {
    return postTeacherRating(teacherId, subId, remarks, ratedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
    TResult? Function()? clearTeacherRatingList,
    TResult? Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
  }) {
    return postTeacherRating?.call(teacherId, subId, remarks, ratedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    TResult Function()? clearTeacherRatingList,
    TResult Function(String teacherId, String subId, String? remarks,
            List<RatedQuestion> ratedQuestions)?
        postTeacherRating,
    required TResult orElse(),
  }) {
    if (postTeacherRating != null) {
      return postTeacherRating(teacherId, subId, remarks, ratedQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
    required TResult Function(_ClearTeacherRatings value)
        clearTeacherRatingList,
    required TResult Function(_PostTeacherRating value) postTeacherRating,
  }) {
    return postTeacherRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult? Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult? Function(_PostTeacherRating value)? postTeacherRating,
  }) {
    return postTeacherRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    TResult Function(_ClearTeacherRatings value)? clearTeacherRatingList,
    TResult Function(_PostTeacherRating value)? postTeacherRating,
    required TResult orElse(),
  }) {
    if (postTeacherRating != null) {
      return postTeacherRating(this);
    }
    return orElse();
  }
}

abstract class _PostTeacherRating implements TeacherEvent {
  const factory _PostTeacherRating(
          {required final String teacherId,
          required final String subId,
          final String? remarks,
          required final List<RatedQuestion> ratedQuestions}) =
      _$PostTeacherRatingImpl;

  String get teacherId;
  String get subId;
  String? get remarks;
  List<RatedQuestion> get ratedQuestions;
  @JsonKey(ignore: true)
  _$$PostTeacherRatingImplCopyWith<_$PostTeacherRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherState {
  ResponseClassify<List<TeacherRatingEntity>>? get getTeacherRating =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      get getTeacherRatingQuestions => throw _privateConstructorUsedError;
  ResponseClassify<void>? get postTeacherRating =>
      throw _privateConstructorUsedError;
  List<RatedQuestion> get selectedTeacherRating =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call(
      {ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions,
      ResponseClassify<void>? postTeacherRating,
      List<RatedQuestion> selectedTeacherRating});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTeacherRating = freezed,
    Object? getTeacherRatingQuestions = freezed,
    Object? postTeacherRating = freezed,
    Object? selectedTeacherRating = null,
  }) {
    return _then(_value.copyWith(
      getTeacherRating: freezed == getTeacherRating
          ? _value.getTeacherRating
          : getTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingEntity>>?,
      getTeacherRatingQuestions: freezed == getTeacherRatingQuestions
          ? _value.getTeacherRatingQuestions
          : getTeacherRatingQuestions // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingQuestionsEntity>>?,
      postTeacherRating: freezed == postTeacherRating
          ? _value.postTeacherRating
          : postTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      selectedTeacherRating: null == selectedTeacherRating
          ? _value.selectedTeacherRating
          : selectedTeacherRating // ignore: cast_nullable_to_non_nullable
              as List<RatedQuestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherStateImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$TeacherStateImplCopyWith(
          _$TeacherStateImpl value, $Res Function(_$TeacherStateImpl) then) =
      __$$TeacherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions,
      ResponseClassify<void>? postTeacherRating,
      List<RatedQuestion> selectedTeacherRating});
}

/// @nodoc
class __$$TeacherStateImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$TeacherStateImpl>
    implements _$$TeacherStateImplCopyWith<$Res> {
  __$$TeacherStateImplCopyWithImpl(
      _$TeacherStateImpl _value, $Res Function(_$TeacherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTeacherRating = freezed,
    Object? getTeacherRatingQuestions = freezed,
    Object? postTeacherRating = freezed,
    Object? selectedTeacherRating = null,
  }) {
    return _then(_$TeacherStateImpl(
      getTeacherRating: freezed == getTeacherRating
          ? _value.getTeacherRating
          : getTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingEntity>>?,
      getTeacherRatingQuestions: freezed == getTeacherRatingQuestions
          ? _value.getTeacherRatingQuestions
          : getTeacherRatingQuestions // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingQuestionsEntity>>?,
      postTeacherRating: freezed == postTeacherRating
          ? _value.postTeacherRating
          : postTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      selectedTeacherRating: null == selectedTeacherRating
          ? _value._selectedTeacherRating
          : selectedTeacherRating // ignore: cast_nullable_to_non_nullable
              as List<RatedQuestion>,
    ));
  }
}

/// @nodoc

class _$TeacherStateImpl implements _TeacherState {
  const _$TeacherStateImpl(
      {this.getTeacherRating,
      this.getTeacherRatingQuestions,
      this.postTeacherRating,
      final List<RatedQuestion> selectedTeacherRating = const []})
      : _selectedTeacherRating = selectedTeacherRating;

  @override
  final ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating;
  @override
  final ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      getTeacherRatingQuestions;
  @override
  final ResponseClassify<void>? postTeacherRating;
  final List<RatedQuestion> _selectedTeacherRating;
  @override
  @JsonKey()
  List<RatedQuestion> get selectedTeacherRating {
    if (_selectedTeacherRating is EqualUnmodifiableListView)
      return _selectedTeacherRating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTeacherRating);
  }

  @override
  String toString() {
    return 'TeacherState(getTeacherRating: $getTeacherRating, getTeacherRatingQuestions: $getTeacherRatingQuestions, postTeacherRating: $postTeacherRating, selectedTeacherRating: $selectedTeacherRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherStateImpl &&
            (identical(other.getTeacherRating, getTeacherRating) ||
                other.getTeacherRating == getTeacherRating) &&
            (identical(other.getTeacherRatingQuestions,
                    getTeacherRatingQuestions) ||
                other.getTeacherRatingQuestions == getTeacherRatingQuestions) &&
            (identical(other.postTeacherRating, postTeacherRating) ||
                other.postTeacherRating == postTeacherRating) &&
            const DeepCollectionEquality()
                .equals(other._selectedTeacherRating, _selectedTeacherRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getTeacherRating,
      getTeacherRatingQuestions,
      postTeacherRating,
      const DeepCollectionEquality().hash(_selectedTeacherRating));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      __$$TeacherStateImplCopyWithImpl<_$TeacherStateImpl>(this, _$identity);
}

abstract class _TeacherState implements TeacherState {
  const factory _TeacherState(
      {final ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      final ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions,
      final ResponseClassify<void>? postTeacherRating,
      final List<RatedQuestion> selectedTeacherRating}) = _$TeacherStateImpl;

  @override
  ResponseClassify<List<TeacherRatingEntity>>? get getTeacherRating;
  @override
  ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      get getTeacherRatingQuestions;
  @override
  ResponseClassify<void>? get postTeacherRating;
  @override
  List<RatedQuestion> get selectedTeacherRating;
  @override
  @JsonKey(ignore: true)
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

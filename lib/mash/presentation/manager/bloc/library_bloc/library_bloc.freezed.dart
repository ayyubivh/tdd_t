// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String prmLangId, String prmAuthId, String prmSearch)
        getPhysicalLibrary,
    required TResult Function() getRequiredFilterData,
    required TResult Function(String bookId) postBookRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult? Function()? getRequiredFilterData,
    TResult? Function(String bookId)? postBookRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult Function()? getRequiredFilterData,
    TResult Function(String bookId)? postBookRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPhysicalLibrary value) getPhysicalLibrary,
    required TResult Function(_GetPhysicalLibraryFilterData value)
        getRequiredFilterData,
    required TResult Function(_PostBookRequest value) postBookRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult? Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult? Function(_PostBookRequest value)? postBookRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult Function(_PostBookRequest value)? postBookRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res, LibraryEvent>;
}

/// @nodoc
class _$LibraryEventCopyWithImpl<$Res, $Val extends LibraryEvent>
    implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

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
    extends _$LibraryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LibraryEvent.started()';
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
    required TResult Function(
            String prmLangId, String prmAuthId, String prmSearch)
        getPhysicalLibrary,
    required TResult Function() getRequiredFilterData,
    required TResult Function(String bookId) postBookRequest,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult? Function()? getRequiredFilterData,
    TResult? Function(String bookId)? postBookRequest,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult Function()? getRequiredFilterData,
    TResult Function(String bookId)? postBookRequest,
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
    required TResult Function(_GetPhysicalLibrary value) getPhysicalLibrary,
    required TResult Function(_GetPhysicalLibraryFilterData value)
        getRequiredFilterData,
    required TResult Function(_PostBookRequest value) postBookRequest,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult? Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult? Function(_PostBookRequest value)? postBookRequest,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult Function(_PostBookRequest value)? postBookRequest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LibraryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPhysicalLibraryImplCopyWith<$Res> {
  factory _$$GetPhysicalLibraryImplCopyWith(_$GetPhysicalLibraryImpl value,
          $Res Function(_$GetPhysicalLibraryImpl) then) =
      __$$GetPhysicalLibraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prmLangId, String prmAuthId, String prmSearch});
}

/// @nodoc
class __$$GetPhysicalLibraryImplCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res, _$GetPhysicalLibraryImpl>
    implements _$$GetPhysicalLibraryImplCopyWith<$Res> {
  __$$GetPhysicalLibraryImplCopyWithImpl(_$GetPhysicalLibraryImpl _value,
      $Res Function(_$GetPhysicalLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prmLangId = null,
    Object? prmAuthId = null,
    Object? prmSearch = null,
  }) {
    return _then(_$GetPhysicalLibraryImpl(
      prmLangId: null == prmLangId
          ? _value.prmLangId
          : prmLangId // ignore: cast_nullable_to_non_nullable
              as String,
      prmAuthId: null == prmAuthId
          ? _value.prmAuthId
          : prmAuthId // ignore: cast_nullable_to_non_nullable
              as String,
      prmSearch: null == prmSearch
          ? _value.prmSearch
          : prmSearch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPhysicalLibraryImpl implements _GetPhysicalLibrary {
  const _$GetPhysicalLibraryImpl(
      {required this.prmLangId,
      required this.prmAuthId,
      required this.prmSearch});

  @override
  final String prmLangId;
  @override
  final String prmAuthId;
  @override
  final String prmSearch;

  @override
  String toString() {
    return 'LibraryEvent.getPhysicalLibrary(prmLangId: $prmLangId, prmAuthId: $prmAuthId, prmSearch: $prmSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhysicalLibraryImpl &&
            (identical(other.prmLangId, prmLangId) ||
                other.prmLangId == prmLangId) &&
            (identical(other.prmAuthId, prmAuthId) ||
                other.prmAuthId == prmAuthId) &&
            (identical(other.prmSearch, prmSearch) ||
                other.prmSearch == prmSearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prmLangId, prmAuthId, prmSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhysicalLibraryImplCopyWith<_$GetPhysicalLibraryImpl> get copyWith =>
      __$$GetPhysicalLibraryImplCopyWithImpl<_$GetPhysicalLibraryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String prmLangId, String prmAuthId, String prmSearch)
        getPhysicalLibrary,
    required TResult Function() getRequiredFilterData,
    required TResult Function(String bookId) postBookRequest,
  }) {
    return getPhysicalLibrary(prmLangId, prmAuthId, prmSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult? Function()? getRequiredFilterData,
    TResult? Function(String bookId)? postBookRequest,
  }) {
    return getPhysicalLibrary?.call(prmLangId, prmAuthId, prmSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult Function()? getRequiredFilterData,
    TResult Function(String bookId)? postBookRequest,
    required TResult orElse(),
  }) {
    if (getPhysicalLibrary != null) {
      return getPhysicalLibrary(prmLangId, prmAuthId, prmSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPhysicalLibrary value) getPhysicalLibrary,
    required TResult Function(_GetPhysicalLibraryFilterData value)
        getRequiredFilterData,
    required TResult Function(_PostBookRequest value) postBookRequest,
  }) {
    return getPhysicalLibrary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult? Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult? Function(_PostBookRequest value)? postBookRequest,
  }) {
    return getPhysicalLibrary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult Function(_PostBookRequest value)? postBookRequest,
    required TResult orElse(),
  }) {
    if (getPhysicalLibrary != null) {
      return getPhysicalLibrary(this);
    }
    return orElse();
  }
}

abstract class _GetPhysicalLibrary implements LibraryEvent {
  const factory _GetPhysicalLibrary(
      {required final String prmLangId,
      required final String prmAuthId,
      required final String prmSearch}) = _$GetPhysicalLibraryImpl;

  String get prmLangId;
  String get prmAuthId;
  String get prmSearch;
  @JsonKey(ignore: true)
  _$$GetPhysicalLibraryImplCopyWith<_$GetPhysicalLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPhysicalLibraryFilterDataImplCopyWith<$Res> {
  factory _$$GetPhysicalLibraryFilterDataImplCopyWith(
          _$GetPhysicalLibraryFilterDataImpl value,
          $Res Function(_$GetPhysicalLibraryFilterDataImpl) then) =
      __$$GetPhysicalLibraryFilterDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPhysicalLibraryFilterDataImplCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res, _$GetPhysicalLibraryFilterDataImpl>
    implements _$$GetPhysicalLibraryFilterDataImplCopyWith<$Res> {
  __$$GetPhysicalLibraryFilterDataImplCopyWithImpl(
      _$GetPhysicalLibraryFilterDataImpl _value,
      $Res Function(_$GetPhysicalLibraryFilterDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPhysicalLibraryFilterDataImpl
    implements _GetPhysicalLibraryFilterData {
  const _$GetPhysicalLibraryFilterDataImpl();

  @override
  String toString() {
    return 'LibraryEvent.getRequiredFilterData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhysicalLibraryFilterDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String prmLangId, String prmAuthId, String prmSearch)
        getPhysicalLibrary,
    required TResult Function() getRequiredFilterData,
    required TResult Function(String bookId) postBookRequest,
  }) {
    return getRequiredFilterData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult? Function()? getRequiredFilterData,
    TResult? Function(String bookId)? postBookRequest,
  }) {
    return getRequiredFilterData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult Function()? getRequiredFilterData,
    TResult Function(String bookId)? postBookRequest,
    required TResult orElse(),
  }) {
    if (getRequiredFilterData != null) {
      return getRequiredFilterData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPhysicalLibrary value) getPhysicalLibrary,
    required TResult Function(_GetPhysicalLibraryFilterData value)
        getRequiredFilterData,
    required TResult Function(_PostBookRequest value) postBookRequest,
  }) {
    return getRequiredFilterData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult? Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult? Function(_PostBookRequest value)? postBookRequest,
  }) {
    return getRequiredFilterData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult Function(_PostBookRequest value)? postBookRequest,
    required TResult orElse(),
  }) {
    if (getRequiredFilterData != null) {
      return getRequiredFilterData(this);
    }
    return orElse();
  }
}

abstract class _GetPhysicalLibraryFilterData implements LibraryEvent {
  const factory _GetPhysicalLibraryFilterData() =
      _$GetPhysicalLibraryFilterDataImpl;
}

/// @nodoc
abstract class _$$PostBookRequestImplCopyWith<$Res> {
  factory _$$PostBookRequestImplCopyWith(_$PostBookRequestImpl value,
          $Res Function(_$PostBookRequestImpl) then) =
      __$$PostBookRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$PostBookRequestImplCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res, _$PostBookRequestImpl>
    implements _$$PostBookRequestImplCopyWith<$Res> {
  __$$PostBookRequestImplCopyWithImpl(
      _$PostBookRequestImpl _value, $Res Function(_$PostBookRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$PostBookRequestImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostBookRequestImpl implements _PostBookRequest {
  const _$PostBookRequestImpl({required this.bookId});

  @override
  final String bookId;

  @override
  String toString() {
    return 'LibraryEvent.postBookRequest(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostBookRequestImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostBookRequestImplCopyWith<_$PostBookRequestImpl> get copyWith =>
      __$$PostBookRequestImplCopyWithImpl<_$PostBookRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String prmLangId, String prmAuthId, String prmSearch)
        getPhysicalLibrary,
    required TResult Function() getRequiredFilterData,
    required TResult Function(String bookId) postBookRequest,
  }) {
    return postBookRequest(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult? Function()? getRequiredFilterData,
    TResult? Function(String bookId)? postBookRequest,
  }) {
    return postBookRequest?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prmLangId, String prmAuthId, String prmSearch)?
        getPhysicalLibrary,
    TResult Function()? getRequiredFilterData,
    TResult Function(String bookId)? postBookRequest,
    required TResult orElse(),
  }) {
    if (postBookRequest != null) {
      return postBookRequest(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPhysicalLibrary value) getPhysicalLibrary,
    required TResult Function(_GetPhysicalLibraryFilterData value)
        getRequiredFilterData,
    required TResult Function(_PostBookRequest value) postBookRequest,
  }) {
    return postBookRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult? Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult? Function(_PostBookRequest value)? postBookRequest,
  }) {
    return postBookRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPhysicalLibrary value)? getPhysicalLibrary,
    TResult Function(_GetPhysicalLibraryFilterData value)?
        getRequiredFilterData,
    TResult Function(_PostBookRequest value)? postBookRequest,
    required TResult orElse(),
  }) {
    if (postBookRequest != null) {
      return postBookRequest(this);
    }
    return orElse();
  }
}

abstract class _PostBookRequest implements LibraryEvent {
  const factory _PostBookRequest({required final String bookId}) =
      _$PostBookRequestImpl;

  String get bookId;
  @JsonKey(ignore: true)
  _$$PostBookRequestImplCopyWith<_$PostBookRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LibraryState {
  ResponseClassify<List<PhysicalLibraryEntity>>? get getPhysicalLibrary =>
      throw _privateConstructorUsedError;
  ResponseClassify<RequiredPhysicalLibraryEntity>? get getRequiredFilterData =>
      throw _privateConstructorUsedError;
  ResponseClassify<String>? get postPhysicalLibraryRequest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res, LibraryState>;
  @useResult
  $Res call(
      {ResponseClassify<List<PhysicalLibraryEntity>>? getPhysicalLibrary,
      ResponseClassify<RequiredPhysicalLibraryEntity>? getRequiredFilterData,
      ResponseClassify<String>? postPhysicalLibraryRequest});
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhysicalLibrary = freezed,
    Object? getRequiredFilterData = freezed,
    Object? postPhysicalLibraryRequest = freezed,
  }) {
    return _then(_value.copyWith(
      getPhysicalLibrary: freezed == getPhysicalLibrary
          ? _value.getPhysicalLibrary
          : getPhysicalLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PhysicalLibraryEntity>>?,
      getRequiredFilterData: freezed == getRequiredFilterData
          ? _value.getRequiredFilterData
          : getRequiredFilterData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<RequiredPhysicalLibraryEntity>?,
      postPhysicalLibraryRequest: freezed == postPhysicalLibraryRequest
          ? _value.postPhysicalLibraryRequest
          : postPhysicalLibraryRequest // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryStateImplCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$$LibraryStateImplCopyWith(
          _$LibraryStateImpl value, $Res Function(_$LibraryStateImpl) then) =
      __$$LibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<PhysicalLibraryEntity>>? getPhysicalLibrary,
      ResponseClassify<RequiredPhysicalLibraryEntity>? getRequiredFilterData,
      ResponseClassify<String>? postPhysicalLibraryRequest});
}

/// @nodoc
class __$$LibraryStateImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateImpl>
    implements _$$LibraryStateImplCopyWith<$Res> {
  __$$LibraryStateImplCopyWithImpl(
      _$LibraryStateImpl _value, $Res Function(_$LibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhysicalLibrary = freezed,
    Object? getRequiredFilterData = freezed,
    Object? postPhysicalLibraryRequest = freezed,
  }) {
    return _then(_$LibraryStateImpl(
      getPhysicalLibrary: freezed == getPhysicalLibrary
          ? _value.getPhysicalLibrary
          : getPhysicalLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PhysicalLibraryEntity>>?,
      getRequiredFilterData: freezed == getRequiredFilterData
          ? _value.getRequiredFilterData
          : getRequiredFilterData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<RequiredPhysicalLibraryEntity>?,
      postPhysicalLibraryRequest: freezed == postPhysicalLibraryRequest
          ? _value.postPhysicalLibraryRequest
          : postPhysicalLibraryRequest // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>?,
    ));
  }
}

/// @nodoc

class _$LibraryStateImpl implements _LibraryState {
  const _$LibraryStateImpl(
      {this.getPhysicalLibrary,
      this.getRequiredFilterData,
      this.postPhysicalLibraryRequest});

  @override
  final ResponseClassify<List<PhysicalLibraryEntity>>? getPhysicalLibrary;
  @override
  final ResponseClassify<RequiredPhysicalLibraryEntity>? getRequiredFilterData;
  @override
  final ResponseClassify<String>? postPhysicalLibraryRequest;

  @override
  String toString() {
    return 'LibraryState(getPhysicalLibrary: $getPhysicalLibrary, getRequiredFilterData: $getRequiredFilterData, postPhysicalLibraryRequest: $postPhysicalLibraryRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStateImpl &&
            (identical(other.getPhysicalLibrary, getPhysicalLibrary) ||
                other.getPhysicalLibrary == getPhysicalLibrary) &&
            (identical(other.getRequiredFilterData, getRequiredFilterData) ||
                other.getRequiredFilterData == getRequiredFilterData) &&
            (identical(other.postPhysicalLibraryRequest,
                    postPhysicalLibraryRequest) ||
                other.postPhysicalLibraryRequest ==
                    postPhysicalLibraryRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getPhysicalLibrary,
      getRequiredFilterData, postPhysicalLibraryRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      __$$LibraryStateImplCopyWithImpl<_$LibraryStateImpl>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {final ResponseClassify<List<PhysicalLibraryEntity>>? getPhysicalLibrary,
      final ResponseClassify<RequiredPhysicalLibraryEntity>?
          getRequiredFilterData,
      final ResponseClassify<String>?
          postPhysicalLibraryRequest}) = _$LibraryStateImpl;

  @override
  ResponseClassify<List<PhysicalLibraryEntity>>? get getPhysicalLibrary;
  @override
  ResponseClassify<RequiredPhysicalLibraryEntity>? get getRequiredFilterData;
  @override
  ResponseClassify<String>? get postPhysicalLibraryRequest;
  @override
  @JsonKey(ignore: true)
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

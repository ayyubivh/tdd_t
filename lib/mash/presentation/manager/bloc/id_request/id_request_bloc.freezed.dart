// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
    required TResult Function(String reqId, String remarks, String userId)
        idPostRequest,
    required TResult Function(int index) selectRequestId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
    TResult? Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult? Function(int index)? selectRequestId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    TResult Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult Function(int index)? selectRequestId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
    required TResult Function(_IdRequestPost value) idPostRequest,
    required TResult Function(_SelectReqId value) selectRequestId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult? Function(_IdRequestPost value)? idPostRequest,
    TResult? Function(_SelectReqId value)? selectRequestId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult Function(_IdRequestPost value)? idPostRequest,
    TResult Function(_SelectReqId value)? selectRequestId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRequestEventCopyWith<$Res> {
  factory $IdRequestEventCopyWith(
          IdRequestEvent value, $Res Function(IdRequestEvent) then) =
      _$IdRequestEventCopyWithImpl<$Res, IdRequestEvent>;
}

/// @nodoc
class _$IdRequestEventCopyWithImpl<$Res, $Val extends IdRequestEvent>
    implements $IdRequestEventCopyWith<$Res> {
  _$IdRequestEventCopyWithImpl(this._value, this._then);

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
    extends _$IdRequestEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'IdRequestEvent.started()';
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
    required TResult Function() getTransferRequestEvent,
    required TResult Function(String reqId, String remarks, String userId)
        idPostRequest,
    required TResult Function(int index) selectRequestId,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
    TResult? Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult? Function(int index)? selectRequestId,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    TResult Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult Function(int index)? selectRequestId,
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
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
    required TResult Function(_IdRequestPost value) idPostRequest,
    required TResult Function(_SelectReqId value) selectRequestId,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult? Function(_IdRequestPost value)? idPostRequest,
    TResult? Function(_SelectReqId value)? selectRequestId,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult Function(_IdRequestPost value)? idPostRequest,
    TResult Function(_SelectReqId value)? selectRequestId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements IdRequestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetIdRequestImplCopyWith<$Res> {
  factory _$$GetIdRequestImplCopyWith(
          _$GetIdRequestImpl value, $Res Function(_$GetIdRequestImpl) then) =
      __$$GetIdRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIdRequestImplCopyWithImpl<$Res>
    extends _$IdRequestEventCopyWithImpl<$Res, _$GetIdRequestImpl>
    implements _$$GetIdRequestImplCopyWith<$Res> {
  __$$GetIdRequestImplCopyWithImpl(
      _$GetIdRequestImpl _value, $Res Function(_$GetIdRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIdRequestImpl implements _GetIdRequest {
  const _$GetIdRequestImpl();

  @override
  String toString() {
    return 'IdRequestEvent.getTransferRequestEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIdRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
    required TResult Function(String reqId, String remarks, String userId)
        idPostRequest,
    required TResult Function(int index) selectRequestId,
  }) {
    return getTransferRequestEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
    TResult? Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult? Function(int index)? selectRequestId,
  }) {
    return getTransferRequestEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    TResult Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult Function(int index)? selectRequestId,
    required TResult orElse(),
  }) {
    if (getTransferRequestEvent != null) {
      return getTransferRequestEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
    required TResult Function(_IdRequestPost value) idPostRequest,
    required TResult Function(_SelectReqId value) selectRequestId,
  }) {
    return getTransferRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult? Function(_IdRequestPost value)? idPostRequest,
    TResult? Function(_SelectReqId value)? selectRequestId,
  }) {
    return getTransferRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult Function(_IdRequestPost value)? idPostRequest,
    TResult Function(_SelectReqId value)? selectRequestId,
    required TResult orElse(),
  }) {
    if (getTransferRequestEvent != null) {
      return getTransferRequestEvent(this);
    }
    return orElse();
  }
}

abstract class _GetIdRequest implements IdRequestEvent {
  const factory _GetIdRequest() = _$GetIdRequestImpl;
}

/// @nodoc
abstract class _$$IdRequestPostImplCopyWith<$Res> {
  factory _$$IdRequestPostImplCopyWith(
          _$IdRequestPostImpl value, $Res Function(_$IdRequestPostImpl) then) =
      __$$IdRequestPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId, String remarks, String userId});
}

/// @nodoc
class __$$IdRequestPostImplCopyWithImpl<$Res>
    extends _$IdRequestEventCopyWithImpl<$Res, _$IdRequestPostImpl>
    implements _$$IdRequestPostImplCopyWith<$Res> {
  __$$IdRequestPostImplCopyWithImpl(
      _$IdRequestPostImpl _value, $Res Function(_$IdRequestPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
    Object? remarks = null,
    Object? userId = null,
  }) {
    return _then(_$IdRequestPostImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdRequestPostImpl implements _IdRequestPost {
  const _$IdRequestPostImpl(
      {required this.reqId, required this.remarks, required this.userId});

  @override
  final String reqId;
  @override
  final String remarks;
  @override
  final String userId;

  @override
  String toString() {
    return 'IdRequestEvent.idPostRequest(reqId: $reqId, remarks: $remarks, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdRequestPostImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId, remarks, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdRequestPostImplCopyWith<_$IdRequestPostImpl> get copyWith =>
      __$$IdRequestPostImplCopyWithImpl<_$IdRequestPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
    required TResult Function(String reqId, String remarks, String userId)
        idPostRequest,
    required TResult Function(int index) selectRequestId,
  }) {
    return idPostRequest(reqId, remarks, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
    TResult? Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult? Function(int index)? selectRequestId,
  }) {
    return idPostRequest?.call(reqId, remarks, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    TResult Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult Function(int index)? selectRequestId,
    required TResult orElse(),
  }) {
    if (idPostRequest != null) {
      return idPostRequest(reqId, remarks, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
    required TResult Function(_IdRequestPost value) idPostRequest,
    required TResult Function(_SelectReqId value) selectRequestId,
  }) {
    return idPostRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult? Function(_IdRequestPost value)? idPostRequest,
    TResult? Function(_SelectReqId value)? selectRequestId,
  }) {
    return idPostRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult Function(_IdRequestPost value)? idPostRequest,
    TResult Function(_SelectReqId value)? selectRequestId,
    required TResult orElse(),
  }) {
    if (idPostRequest != null) {
      return idPostRequest(this);
    }
    return orElse();
  }
}

abstract class _IdRequestPost implements IdRequestEvent {
  const factory _IdRequestPost(
      {required final String reqId,
      required final String remarks,
      required final String userId}) = _$IdRequestPostImpl;

  String get reqId;
  String get remarks;
  String get userId;
  @JsonKey(ignore: true)
  _$$IdRequestPostImplCopyWith<_$IdRequestPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectReqIdImplCopyWith<$Res> {
  factory _$$SelectReqIdImplCopyWith(
          _$SelectReqIdImpl value, $Res Function(_$SelectReqIdImpl) then) =
      __$$SelectReqIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectReqIdImplCopyWithImpl<$Res>
    extends _$IdRequestEventCopyWithImpl<$Res, _$SelectReqIdImpl>
    implements _$$SelectReqIdImplCopyWith<$Res> {
  __$$SelectReqIdImplCopyWithImpl(
      _$SelectReqIdImpl _value, $Res Function(_$SelectReqIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectReqIdImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectReqIdImpl implements _SelectReqId {
  const _$SelectReqIdImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'IdRequestEvent.selectRequestId(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectReqIdImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectReqIdImplCopyWith<_$SelectReqIdImpl> get copyWith =>
      __$$SelectReqIdImplCopyWithImpl<_$SelectReqIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
    required TResult Function(String reqId, String remarks, String userId)
        idPostRequest,
    required TResult Function(int index) selectRequestId,
  }) {
    return selectRequestId(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
    TResult? Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult? Function(int index)? selectRequestId,
  }) {
    return selectRequestId?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    TResult Function(String reqId, String remarks, String userId)?
        idPostRequest,
    TResult Function(int index)? selectRequestId,
    required TResult orElse(),
  }) {
    if (selectRequestId != null) {
      return selectRequestId(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
    required TResult Function(_IdRequestPost value) idPostRequest,
    required TResult Function(_SelectReqId value) selectRequestId,
  }) {
    return selectRequestId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult? Function(_IdRequestPost value)? idPostRequest,
    TResult? Function(_SelectReqId value)? selectRequestId,
  }) {
    return selectRequestId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    TResult Function(_IdRequestPost value)? idPostRequest,
    TResult Function(_SelectReqId value)? selectRequestId,
    required TResult orElse(),
  }) {
    if (selectRequestId != null) {
      return selectRequestId(this);
    }
    return orElse();
  }
}

abstract class _SelectReqId implements IdRequestEvent {
  const factory _SelectReqId({required final int index}) = _$SelectReqIdImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectReqIdImplCopyWith<_$SelectReqIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IdRequestState {
  int? get index => throw _privateConstructorUsedError;
  ResponseClassify<List<IdRequestEntity>>? get getIdRequestType =>
      throw _privateConstructorUsedError;
  ResponseClassify<void>? get postIdRequest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdRequestStateCopyWith<IdRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRequestStateCopyWith<$Res> {
  factory $IdRequestStateCopyWith(
          IdRequestState value, $Res Function(IdRequestState) then) =
      _$IdRequestStateCopyWithImpl<$Res, IdRequestState>;
  @useResult
  $Res call(
      {int? index,
      ResponseClassify<List<IdRequestEntity>>? getIdRequestType,
      ResponseClassify<void>? postIdRequest});
}

/// @nodoc
class _$IdRequestStateCopyWithImpl<$Res, $Val extends IdRequestState>
    implements $IdRequestStateCopyWith<$Res> {
  _$IdRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? getIdRequestType = freezed,
    Object? postIdRequest = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      getIdRequestType: freezed == getIdRequestType
          ? _value.getIdRequestType
          : getIdRequestType // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<IdRequestEntity>>?,
      postIdRequest: freezed == postIdRequest
          ? _value.postIdRequest
          : postIdRequest // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdRequestStateImplCopyWith<$Res>
    implements $IdRequestStateCopyWith<$Res> {
  factory _$$IdRequestStateImplCopyWith(_$IdRequestStateImpl value,
          $Res Function(_$IdRequestStateImpl) then) =
      __$$IdRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? index,
      ResponseClassify<List<IdRequestEntity>>? getIdRequestType,
      ResponseClassify<void>? postIdRequest});
}

/// @nodoc
class __$$IdRequestStateImplCopyWithImpl<$Res>
    extends _$IdRequestStateCopyWithImpl<$Res, _$IdRequestStateImpl>
    implements _$$IdRequestStateImplCopyWith<$Res> {
  __$$IdRequestStateImplCopyWithImpl(
      _$IdRequestStateImpl _value, $Res Function(_$IdRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? getIdRequestType = freezed,
    Object? postIdRequest = freezed,
  }) {
    return _then(_$IdRequestStateImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      getIdRequestType: freezed == getIdRequestType
          ? _value.getIdRequestType
          : getIdRequestType // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<IdRequestEntity>>?,
      postIdRequest: freezed == postIdRequest
          ? _value.postIdRequest
          : postIdRequest // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
    ));
  }
}

/// @nodoc

class _$IdRequestStateImpl implements _IdRequestState {
  const _$IdRequestStateImpl(
      {required this.index, this.getIdRequestType, this.postIdRequest});

  @override
  final int? index;
  @override
  final ResponseClassify<List<IdRequestEntity>>? getIdRequestType;
  @override
  final ResponseClassify<void>? postIdRequest;

  @override
  String toString() {
    return 'IdRequestState(index: $index, getIdRequestType: $getIdRequestType, postIdRequest: $postIdRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdRequestStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.getIdRequestType, getIdRequestType) ||
                other.getIdRequestType == getIdRequestType) &&
            (identical(other.postIdRequest, postIdRequest) ||
                other.postIdRequest == postIdRequest));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, getIdRequestType, postIdRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdRequestStateImplCopyWith<_$IdRequestStateImpl> get copyWith =>
      __$$IdRequestStateImplCopyWithImpl<_$IdRequestStateImpl>(
          this, _$identity);
}

abstract class _IdRequestState implements IdRequestState {
  const factory _IdRequestState(
      {required final int? index,
      final ResponseClassify<List<IdRequestEntity>>? getIdRequestType,
      final ResponseClassify<void>? postIdRequest}) = _$IdRequestStateImpl;

  @override
  int? get index;
  @override
  ResponseClassify<List<IdRequestEntity>>? get getIdRequestType;
  @override
  ResponseClassify<void>? get postIdRequest;
  @override
  @JsonKey(ignore: true)
  _$$IdRequestStateImplCopyWith<_$IdRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

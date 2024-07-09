// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_on_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOnEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String categoryId, String categorytype)
        getAddOnData,
    required TResult Function(String categoryId, String categorytype)
        getAddOnDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String categoryId, String categorytype)? getAddOnData,
    TResult? Function(String categoryId, String categorytype)? getAddOnDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String categoryId, String categorytype)? getAddOnData,
    TResult Function(String categoryId, String categorytype)? getAddOnDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAddOnData value) getAddOnData,
    required TResult Function(_GetAddOnDetailData value) getAddOnDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAddOnData value)? getAddOnData,
    TResult? Function(_GetAddOnDetailData value)? getAddOnDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAddOnData value)? getAddOnData,
    TResult Function(_GetAddOnDetailData value)? getAddOnDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOnEventCopyWith<$Res> {
  factory $AddOnEventCopyWith(
          AddOnEvent value, $Res Function(AddOnEvent) then) =
      _$AddOnEventCopyWithImpl<$Res, AddOnEvent>;
}

/// @nodoc
class _$AddOnEventCopyWithImpl<$Res, $Val extends AddOnEvent>
    implements $AddOnEventCopyWith<$Res> {
  _$AddOnEventCopyWithImpl(this._value, this._then);

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
    extends _$AddOnEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddOnEvent.started()';
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
    required TResult Function(String categoryId, String categorytype)
        getAddOnData,
    required TResult Function(String categoryId, String categorytype)
        getAddOnDetail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String categoryId, String categorytype)? getAddOnData,
    TResult? Function(String categoryId, String categorytype)? getAddOnDetail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String categoryId, String categorytype)? getAddOnData,
    TResult Function(String categoryId, String categorytype)? getAddOnDetail,
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
    required TResult Function(_GetAddOnData value) getAddOnData,
    required TResult Function(_GetAddOnDetailData value) getAddOnDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAddOnData value)? getAddOnData,
    TResult? Function(_GetAddOnDetailData value)? getAddOnDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAddOnData value)? getAddOnData,
    TResult Function(_GetAddOnDetailData value)? getAddOnDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddOnEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAddOnDataImplCopyWith<$Res> {
  factory _$$GetAddOnDataImplCopyWith(
          _$GetAddOnDataImpl value, $Res Function(_$GetAddOnDataImpl) then) =
      __$$GetAddOnDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, String categorytype});
}

/// @nodoc
class __$$GetAddOnDataImplCopyWithImpl<$Res>
    extends _$AddOnEventCopyWithImpl<$Res, _$GetAddOnDataImpl>
    implements _$$GetAddOnDataImplCopyWith<$Res> {
  __$$GetAddOnDataImplCopyWithImpl(
      _$GetAddOnDataImpl _value, $Res Function(_$GetAddOnDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categorytype = null,
  }) {
    return _then(_$GetAddOnDataImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categorytype: null == categorytype
          ? _value.categorytype
          : categorytype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAddOnDataImpl implements _GetAddOnData {
  const _$GetAddOnDataImpl(
      {required this.categoryId, required this.categorytype});

  @override
  final String categoryId;
  @override
  final String categorytype;

  @override
  String toString() {
    return 'AddOnEvent.getAddOnData(categoryId: $categoryId, categorytype: $categorytype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddOnDataImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categorytype, categorytype) ||
                other.categorytype == categorytype));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, categorytype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddOnDataImplCopyWith<_$GetAddOnDataImpl> get copyWith =>
      __$$GetAddOnDataImplCopyWithImpl<_$GetAddOnDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String categoryId, String categorytype)
        getAddOnData,
    required TResult Function(String categoryId, String categorytype)
        getAddOnDetail,
  }) {
    return getAddOnData(categoryId, categorytype);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String categoryId, String categorytype)? getAddOnData,
    TResult? Function(String categoryId, String categorytype)? getAddOnDetail,
  }) {
    return getAddOnData?.call(categoryId, categorytype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String categoryId, String categorytype)? getAddOnData,
    TResult Function(String categoryId, String categorytype)? getAddOnDetail,
    required TResult orElse(),
  }) {
    if (getAddOnData != null) {
      return getAddOnData(categoryId, categorytype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAddOnData value) getAddOnData,
    required TResult Function(_GetAddOnDetailData value) getAddOnDetail,
  }) {
    return getAddOnData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAddOnData value)? getAddOnData,
    TResult? Function(_GetAddOnDetailData value)? getAddOnDetail,
  }) {
    return getAddOnData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAddOnData value)? getAddOnData,
    TResult Function(_GetAddOnDetailData value)? getAddOnDetail,
    required TResult orElse(),
  }) {
    if (getAddOnData != null) {
      return getAddOnData(this);
    }
    return orElse();
  }
}

abstract class _GetAddOnData implements AddOnEvent {
  const factory _GetAddOnData(
      {required final String categoryId,
      required final String categorytype}) = _$GetAddOnDataImpl;

  String get categoryId;
  String get categorytype;
  @JsonKey(ignore: true)
  _$$GetAddOnDataImplCopyWith<_$GetAddOnDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddOnDetailDataImplCopyWith<$Res> {
  factory _$$GetAddOnDetailDataImplCopyWith(_$GetAddOnDetailDataImpl value,
          $Res Function(_$GetAddOnDetailDataImpl) then) =
      __$$GetAddOnDetailDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, String categorytype});
}

/// @nodoc
class __$$GetAddOnDetailDataImplCopyWithImpl<$Res>
    extends _$AddOnEventCopyWithImpl<$Res, _$GetAddOnDetailDataImpl>
    implements _$$GetAddOnDetailDataImplCopyWith<$Res> {
  __$$GetAddOnDetailDataImplCopyWithImpl(_$GetAddOnDetailDataImpl _value,
      $Res Function(_$GetAddOnDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categorytype = null,
  }) {
    return _then(_$GetAddOnDetailDataImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categorytype: null == categorytype
          ? _value.categorytype
          : categorytype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAddOnDetailDataImpl implements _GetAddOnDetailData {
  const _$GetAddOnDetailDataImpl(
      {required this.categoryId, required this.categorytype});

  @override
  final String categoryId;
  @override
  final String categorytype;

  @override
  String toString() {
    return 'AddOnEvent.getAddOnDetail(categoryId: $categoryId, categorytype: $categorytype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddOnDetailDataImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categorytype, categorytype) ||
                other.categorytype == categorytype));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, categorytype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddOnDetailDataImplCopyWith<_$GetAddOnDetailDataImpl> get copyWith =>
      __$$GetAddOnDetailDataImplCopyWithImpl<_$GetAddOnDetailDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String categoryId, String categorytype)
        getAddOnData,
    required TResult Function(String categoryId, String categorytype)
        getAddOnDetail,
  }) {
    return getAddOnDetail(categoryId, categorytype);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String categoryId, String categorytype)? getAddOnData,
    TResult? Function(String categoryId, String categorytype)? getAddOnDetail,
  }) {
    return getAddOnDetail?.call(categoryId, categorytype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String categoryId, String categorytype)? getAddOnData,
    TResult Function(String categoryId, String categorytype)? getAddOnDetail,
    required TResult orElse(),
  }) {
    if (getAddOnDetail != null) {
      return getAddOnDetail(categoryId, categorytype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAddOnData value) getAddOnData,
    required TResult Function(_GetAddOnDetailData value) getAddOnDetail,
  }) {
    return getAddOnDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAddOnData value)? getAddOnData,
    TResult? Function(_GetAddOnDetailData value)? getAddOnDetail,
  }) {
    return getAddOnDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAddOnData value)? getAddOnData,
    TResult Function(_GetAddOnDetailData value)? getAddOnDetail,
    required TResult orElse(),
  }) {
    if (getAddOnDetail != null) {
      return getAddOnDetail(this);
    }
    return orElse();
  }
}

abstract class _GetAddOnDetailData implements AddOnEvent {
  const factory _GetAddOnDetailData(
      {required final String categoryId,
      required final String categorytype}) = _$GetAddOnDetailDataImpl;

  String get categoryId;
  String get categorytype;
  @JsonKey(ignore: true)
  _$$GetAddOnDetailDataImplCopyWith<_$GetAddOnDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOnState {
  ResponseClassify<List<GetAddOnEntity?>> get getAddOnData =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AddOnDetailEntity?>> get getAddOnDetailData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddOnStateCopyWith<AddOnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOnStateCopyWith<$Res> {
  factory $AddOnStateCopyWith(
          AddOnState value, $Res Function(AddOnState) then) =
      _$AddOnStateCopyWithImpl<$Res, AddOnState>;
  @useResult
  $Res call(
      {ResponseClassify<List<GetAddOnEntity?>> getAddOnData,
      ResponseClassify<List<AddOnDetailEntity?>> getAddOnDetailData});
}

/// @nodoc
class _$AddOnStateCopyWithImpl<$Res, $Val extends AddOnState>
    implements $AddOnStateCopyWith<$Res> {
  _$AddOnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAddOnData = null,
    Object? getAddOnDetailData = null,
  }) {
    return _then(_value.copyWith(
      getAddOnData: null == getAddOnData
          ? _value.getAddOnData
          : getAddOnData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetAddOnEntity?>>,
      getAddOnDetailData: null == getAddOnDetailData
          ? _value.getAddOnDetailData
          : getAddOnDetailData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AddOnDetailEntity?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOnStateImplCopyWith<$Res>
    implements $AddOnStateCopyWith<$Res> {
  factory _$$AddOnStateImplCopyWith(
          _$AddOnStateImpl value, $Res Function(_$AddOnStateImpl) then) =
      __$$AddOnStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<GetAddOnEntity?>> getAddOnData,
      ResponseClassify<List<AddOnDetailEntity?>> getAddOnDetailData});
}

/// @nodoc
class __$$AddOnStateImplCopyWithImpl<$Res>
    extends _$AddOnStateCopyWithImpl<$Res, _$AddOnStateImpl>
    implements _$$AddOnStateImplCopyWith<$Res> {
  __$$AddOnStateImplCopyWithImpl(
      _$AddOnStateImpl _value, $Res Function(_$AddOnStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAddOnData = null,
    Object? getAddOnDetailData = null,
  }) {
    return _then(_$AddOnStateImpl(
      getAddOnData: null == getAddOnData
          ? _value.getAddOnData
          : getAddOnData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetAddOnEntity?>>,
      getAddOnDetailData: null == getAddOnDetailData
          ? _value.getAddOnDetailData
          : getAddOnDetailData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AddOnDetailEntity?>>,
    ));
  }
}

/// @nodoc

class _$AddOnStateImpl implements _AddOnState {
  const _$AddOnStateImpl(
      {required this.getAddOnData, required this.getAddOnDetailData});

  @override
  final ResponseClassify<List<GetAddOnEntity?>> getAddOnData;
  @override
  final ResponseClassify<List<AddOnDetailEntity?>> getAddOnDetailData;

  @override
  String toString() {
    return 'AddOnState(getAddOnData: $getAddOnData, getAddOnDetailData: $getAddOnDetailData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOnStateImpl &&
            (identical(other.getAddOnData, getAddOnData) ||
                other.getAddOnData == getAddOnData) &&
            (identical(other.getAddOnDetailData, getAddOnDetailData) ||
                other.getAddOnDetailData == getAddOnDetailData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getAddOnData, getAddOnDetailData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOnStateImplCopyWith<_$AddOnStateImpl> get copyWith =>
      __$$AddOnStateImplCopyWithImpl<_$AddOnStateImpl>(this, _$identity);
}

abstract class _AddOnState implements AddOnState {
  const factory _AddOnState(
      {required final ResponseClassify<List<GetAddOnEntity?>> getAddOnData,
      required final ResponseClassify<List<AddOnDetailEntity?>>
          getAddOnDetailData}) = _$AddOnStateImpl;

  @override
  ResponseClassify<List<GetAddOnEntity?>> get getAddOnData;
  @override
  ResponseClassify<List<AddOnDetailEntity?>> get getAddOnDetailData;
  @override
  @JsonKey(ignore: true)
  _$$AddOnStateImplCopyWith<_$AddOnStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

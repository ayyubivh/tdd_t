// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_download_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PdfDownloadState {
  ResponseClassify<String> get pdfDownloadResponse =>
      throw _privateConstructorUsedError;
  int get pdfDownloadProgressState => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfDownloadStateCopyWith<PdfDownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfDownloadStateCopyWith<$Res> {
  factory $PdfDownloadStateCopyWith(
          PdfDownloadState value, $Res Function(PdfDownloadState) then) =
      _$PdfDownloadStateCopyWithImpl<$Res, PdfDownloadState>;
  @useResult
  $Res call(
      {ResponseClassify<String> pdfDownloadResponse,
      int pdfDownloadProgressState,
      String image});
}

/// @nodoc
class _$PdfDownloadStateCopyWithImpl<$Res, $Val extends PdfDownloadState>
    implements $PdfDownloadStateCopyWith<$Res> {
  _$PdfDownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfDownloadResponse = null,
    Object? pdfDownloadProgressState = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      pdfDownloadResponse: null == pdfDownloadResponse
          ? _value.pdfDownloadResponse
          : pdfDownloadResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      pdfDownloadProgressState: null == pdfDownloadProgressState
          ? _value.pdfDownloadProgressState
          : pdfDownloadProgressState // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfDownloadStateImplCopyWith<$Res>
    implements $PdfDownloadStateCopyWith<$Res> {
  factory _$$PdfDownloadStateImplCopyWith(_$PdfDownloadStateImpl value,
          $Res Function(_$PdfDownloadStateImpl) then) =
      __$$PdfDownloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<String> pdfDownloadResponse,
      int pdfDownloadProgressState,
      String image});
}

/// @nodoc
class __$$PdfDownloadStateImplCopyWithImpl<$Res>
    extends _$PdfDownloadStateCopyWithImpl<$Res, _$PdfDownloadStateImpl>
    implements _$$PdfDownloadStateImplCopyWith<$Res> {
  __$$PdfDownloadStateImplCopyWithImpl(_$PdfDownloadStateImpl _value,
      $Res Function(_$PdfDownloadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfDownloadResponse = null,
    Object? pdfDownloadProgressState = null,
    Object? image = null,
  }) {
    return _then(_$PdfDownloadStateImpl(
      pdfDownloadResponse: null == pdfDownloadResponse
          ? _value.pdfDownloadResponse
          : pdfDownloadResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      pdfDownloadProgressState: null == pdfDownloadProgressState
          ? _value.pdfDownloadProgressState
          : pdfDownloadProgressState // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PdfDownloadStateImpl implements _PdfDownloadState {
  const _$PdfDownloadStateImpl(
      {required this.pdfDownloadResponse,
      required this.pdfDownloadProgressState,
      required this.image});

  @override
  final ResponseClassify<String> pdfDownloadResponse;
  @override
  final int pdfDownloadProgressState;
  @override
  final String image;

  @override
  String toString() {
    return 'PdfDownloadState(pdfDownloadResponse: $pdfDownloadResponse, pdfDownloadProgressState: $pdfDownloadProgressState, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfDownloadStateImpl &&
            (identical(other.pdfDownloadResponse, pdfDownloadResponse) ||
                other.pdfDownloadResponse == pdfDownloadResponse) &&
            (identical(
                    other.pdfDownloadProgressState, pdfDownloadProgressState) ||
                other.pdfDownloadProgressState == pdfDownloadProgressState) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pdfDownloadResponse, pdfDownloadProgressState, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfDownloadStateImplCopyWith<_$PdfDownloadStateImpl> get copyWith =>
      __$$PdfDownloadStateImplCopyWithImpl<_$PdfDownloadStateImpl>(
          this, _$identity);
}

abstract class _PdfDownloadState implements PdfDownloadState {
  const factory _PdfDownloadState(
      {required final ResponseClassify<String> pdfDownloadResponse,
      required final int pdfDownloadProgressState,
      required final String image}) = _$PdfDownloadStateImpl;

  @override
  ResponseClassify<String> get pdfDownloadResponse;
  @override
  int get pdfDownloadProgressState;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$PdfDownloadStateImplCopyWith<_$PdfDownloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

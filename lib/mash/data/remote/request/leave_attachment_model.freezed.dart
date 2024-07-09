// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaveAttachmentModel {
  String? get uploadPhoto => throw _privateConstructorUsedError;
  String? get takePhoto => throw _privateConstructorUsedError;
  String? get fromDate => throw _privateConstructorUsedError;
  String? get toDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaveAttachmentModelCopyWith<LeaveAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveAttachmentModelCopyWith<$Res> {
  factory $LeaveAttachmentModelCopyWith(LeaveAttachmentModel value,
          $Res Function(LeaveAttachmentModel) then) =
      _$LeaveAttachmentModelCopyWithImpl<$Res, LeaveAttachmentModel>;
  @useResult
  $Res call(
      {String? uploadPhoto,
      String? takePhoto,
      String? fromDate,
      String? toDate});
}

/// @nodoc
class _$LeaveAttachmentModelCopyWithImpl<$Res,
        $Val extends LeaveAttachmentModel>
    implements $LeaveAttachmentModelCopyWith<$Res> {
  _$LeaveAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadPhoto = freezed,
    Object? takePhoto = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      uploadPhoto: freezed == uploadPhoto
          ? _value.uploadPhoto
          : uploadPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      takePhoto: freezed == takePhoto
          ? _value.takePhoto
          : takePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveAttachmentModelImplCopyWith<$Res>
    implements $LeaveAttachmentModelCopyWith<$Res> {
  factory _$$LeaveAttachmentModelImplCopyWith(_$LeaveAttachmentModelImpl value,
          $Res Function(_$LeaveAttachmentModelImpl) then) =
      __$$LeaveAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uploadPhoto,
      String? takePhoto,
      String? fromDate,
      String? toDate});
}

/// @nodoc
class __$$LeaveAttachmentModelImplCopyWithImpl<$Res>
    extends _$LeaveAttachmentModelCopyWithImpl<$Res, _$LeaveAttachmentModelImpl>
    implements _$$LeaveAttachmentModelImplCopyWith<$Res> {
  __$$LeaveAttachmentModelImplCopyWithImpl(_$LeaveAttachmentModelImpl _value,
      $Res Function(_$LeaveAttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadPhoto = freezed,
    Object? takePhoto = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$LeaveAttachmentModelImpl(
      uploadPhoto: freezed == uploadPhoto
          ? _value.uploadPhoto
          : uploadPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      takePhoto: freezed == takePhoto
          ? _value.takePhoto
          : takePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LeaveAttachmentModelImpl implements _LeaveAttachmentModel {
  const _$LeaveAttachmentModelImpl(
      {this.uploadPhoto, this.takePhoto, this.fromDate, this.toDate});

  @override
  final String? uploadPhoto;
  @override
  final String? takePhoto;
  @override
  final String? fromDate;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'LeaveAttachmentModel(uploadPhoto: $uploadPhoto, takePhoto: $takePhoto, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveAttachmentModelImpl &&
            (identical(other.uploadPhoto, uploadPhoto) ||
                other.uploadPhoto == uploadPhoto) &&
            (identical(other.takePhoto, takePhoto) ||
                other.takePhoto == takePhoto) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uploadPhoto, takePhoto, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveAttachmentModelImplCopyWith<_$LeaveAttachmentModelImpl>
      get copyWith =>
          __$$LeaveAttachmentModelImplCopyWithImpl<_$LeaveAttachmentModelImpl>(
              this, _$identity);
}

abstract class _LeaveAttachmentModel implements LeaveAttachmentModel {
  const factory _LeaveAttachmentModel(
      {final String? uploadPhoto,
      final String? takePhoto,
      final String? fromDate,
      final String? toDate}) = _$LeaveAttachmentModelImpl;

  @override
  String? get uploadPhoto;
  @override
  String? get takePhoto;
  @override
  String? get fromDate;
  @override
  String? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$LeaveAttachmentModelImplCopyWith<_$LeaveAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

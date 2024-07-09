// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DigitalLibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalLibraryEventCopyWith<$Res> {
  factory $DigitalLibraryEventCopyWith(
          DigitalLibraryEvent value, $Res Function(DigitalLibraryEvent) then) =
      _$DigitalLibraryEventCopyWithImpl<$Res, DigitalLibraryEvent>;
}

/// @nodoc
class _$DigitalLibraryEventCopyWithImpl<$Res, $Val extends DigitalLibraryEvent>
    implements $DigitalLibraryEventCopyWith<$Res> {
  _$DigitalLibraryEventCopyWithImpl(this._value, this._then);

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
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DigitalLibraryEvent.started'));
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
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
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
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DigitalLibraryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetClassesImplCopyWith<$Res> {
  factory _$$GetClassesImplCopyWith(
          _$GetClassesImpl value, $Res Function(_$GetClassesImpl) then) =
      __$$GetClassesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetClassesImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetClassesImpl>
    implements _$$GetClassesImplCopyWith<$Res> {
  __$$GetClassesImplCopyWithImpl(
      _$GetClassesImpl _value, $Res Function(_$GetClassesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetClassesImpl with DiagnosticableTreeMixin implements _GetClasses {
  const _$GetClassesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getClasses()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getClasses'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetClassesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements DigitalLibraryEvent {
  const factory _GetClasses() = _$GetClassesImpl;
}

/// @nodoc
abstract class _$$GetUserActivityImplCopyWith<$Res> {
  factory _$$GetUserActivityImplCopyWith(_$GetUserActivityImpl value,
          $Res Function(_$GetUserActivityImpl) then) =
      __$$GetUserActivityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserActivityImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetUserActivityImpl>
    implements _$$GetUserActivityImplCopyWith<$Res> {
  __$$GetUserActivityImplCopyWithImpl(
      _$GetUserActivityImpl _value, $Res Function(_$GetUserActivityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserActivityImpl
    with DiagnosticableTreeMixin
    implements _GetUserActivity {
  const _$GetUserActivityImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getUserActivity()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'DigitalLibraryEvent.getUserActivity'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserActivityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getUserActivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getUserActivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getUserActivity != null) {
      return getUserActivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getUserActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getUserActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getUserActivity != null) {
      return getUserActivity(this);
    }
    return orElse();
  }
}

abstract class _GetUserActivity implements DigitalLibraryEvent {
  const factory _GetUserActivity() = _$GetUserActivityImpl;
}

/// @nodoc
abstract class _$$StartSearchImplCopyWith<$Res> {
  factory _$$StartSearchImplCopyWith(
          _$StartSearchImpl value, $Res Function(_$StartSearchImpl) then) =
      __$$StartSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartSearchImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$StartSearchImpl>
    implements _$$StartSearchImplCopyWith<$Res> {
  __$$StartSearchImplCopyWithImpl(
      _$StartSearchImpl _value, $Res Function(_$StartSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartSearchImpl with DiagnosticableTreeMixin implements _StartSearch {
  const _$StartSearchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.startSearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.startSearch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return startSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return startSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return startSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return startSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch(this);
    }
    return orElse();
  }
}

abstract class _StartSearch implements DigitalLibraryEvent {
  const factory _StartSearch() = _$StartSearchImpl;
}

/// @nodoc
abstract class _$$InsertDlClickImplCopyWith<$Res> {
  factory _$$InsertDlClickImplCopyWith(
          _$InsertDlClickImpl value, $Res Function(_$InsertDlClickImpl) then) =
      __$$InsertDlClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? moduleName, String? contentId, String? bookmark, String? like});
}

/// @nodoc
class __$$InsertDlClickImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$InsertDlClickImpl>
    implements _$$InsertDlClickImplCopyWith<$Res> {
  __$$InsertDlClickImplCopyWithImpl(
      _$InsertDlClickImpl _value, $Res Function(_$InsertDlClickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleName = freezed,
    Object? contentId = freezed,
    Object? bookmark = freezed,
    Object? like = freezed,
  }) {
    return _then(_$InsertDlClickImpl(
      moduleName: freezed == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentId: freezed == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookmark: freezed == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InsertDlClickImpl
    with DiagnosticableTreeMixin
    implements _InsertDlClick {
  const _$InsertDlClickImpl(
      {this.moduleName, this.contentId, this.bookmark, this.like});

  @override
  final String? moduleName;
  @override
  final String? contentId;
  @override
  final String? bookmark;
  @override
  final String? like;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.insertDlClick(moduleName: $moduleName, contentId: $contentId, bookmark: $bookmark, like: $like)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.insertDlClick'))
      ..add(DiagnosticsProperty('moduleName', moduleName))
      ..add(DiagnosticsProperty('contentId', contentId))
      ..add(DiagnosticsProperty('bookmark', bookmark))
      ..add(DiagnosticsProperty('like', like));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertDlClickImpl &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark) &&
            (identical(other.like, like) || other.like == like));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, moduleName, contentId, bookmark, like);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertDlClickImplCopyWith<_$InsertDlClickImpl> get copyWith =>
      __$$InsertDlClickImplCopyWithImpl<_$InsertDlClickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return insertDlClick(moduleName, contentId, bookmark, like);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return insertDlClick?.call(moduleName, contentId, bookmark, like);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (insertDlClick != null) {
      return insertDlClick(moduleName, contentId, bookmark, like);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return insertDlClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return insertDlClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (insertDlClick != null) {
      return insertDlClick(this);
    }
    return orElse();
  }
}

abstract class _InsertDlClick implements DigitalLibraryEvent {
  const factory _InsertDlClick(
      {final String? moduleName,
      final String? contentId,
      final String? bookmark,
      final String? like}) = _$InsertDlClickImpl;

  String? get moduleName;
  String? get contentId;
  String? get bookmark;
  String? get like;
  @JsonKey(ignore: true)
  _$$InsertDlClickImplCopyWith<_$InsertDlClickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseSearchImplCopyWith<$Res> {
  factory _$$CloseSearchImplCopyWith(
          _$CloseSearchImpl value, $Res Function(_$CloseSearchImpl) then) =
      __$$CloseSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseSearchImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$CloseSearchImpl>
    implements _$$CloseSearchImplCopyWith<$Res> {
  __$$CloseSearchImplCopyWithImpl(
      _$CloseSearchImpl _value, $Res Function(_$CloseSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseSearchImpl with DiagnosticableTreeMixin implements _CloseSearch {
  const _$CloseSearchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.closeSearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.closeSearch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return closeSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return closeSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (closeSearch != null) {
      return closeSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return closeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return closeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (closeSearch != null) {
      return closeSearch(this);
    }
    return orElse();
  }
}

abstract class _CloseSearch implements DigitalLibraryEvent {
  const factory _CloseSearch() = _$CloseSearchImpl;
}

/// @nodoc
abstract class _$$SeachAcademicImplCopyWith<$Res> {
  factory _$$SeachAcademicImplCopyWith(
          _$SeachAcademicImpl value, $Res Function(_$SeachAcademicImpl) then) =
      __$$SeachAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SeachAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SeachAcademicImpl>
    implements _$$SeachAcademicImplCopyWith<$Res> {
  __$$SeachAcademicImplCopyWithImpl(
      _$SeachAcademicImpl _value, $Res Function(_$SeachAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SeachAcademicImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeachAcademicImpl
    with DiagnosticableTreeMixin
    implements _SeachAcademic {
  const _$SeachAcademicImpl({required this.search});

  @override
  final String search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.searchAcademic(search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.searchAcademic'))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeachAcademicImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeachAcademicImplCopyWith<_$SeachAcademicImpl> get copyWith =>
      __$$SeachAcademicImplCopyWithImpl<_$SeachAcademicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return searchAcademic(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return searchAcademic?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (searchAcademic != null) {
      return searchAcademic(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return searchAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return searchAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (searchAcademic != null) {
      return searchAcademic(this);
    }
    return orElse();
  }
}

abstract class _SeachAcademic implements DigitalLibraryEvent {
  const factory _SeachAcademic({required final String search}) =
      _$SeachAcademicImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SeachAcademicImplCopyWith<_$SeachAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeachNonAcademicImplCopyWith<$Res> {
  factory _$$SeachNonAcademicImplCopyWith(_$SeachNonAcademicImpl value,
          $Res Function(_$SeachNonAcademicImpl) then) =
      __$$SeachNonAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SeachNonAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SeachNonAcademicImpl>
    implements _$$SeachNonAcademicImplCopyWith<$Res> {
  __$$SeachNonAcademicImplCopyWithImpl(_$SeachNonAcademicImpl _value,
      $Res Function(_$SeachNonAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SeachNonAcademicImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeachNonAcademicImpl
    with DiagnosticableTreeMixin
    implements _SeachNonAcademic {
  const _$SeachNonAcademicImpl({required this.search});

  @override
  final String search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.searchNonAcademic(search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'DigitalLibraryEvent.searchNonAcademic'))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeachNonAcademicImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeachNonAcademicImplCopyWith<_$SeachNonAcademicImpl> get copyWith =>
      __$$SeachNonAcademicImplCopyWithImpl<_$SeachNonAcademicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return searchNonAcademic(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return searchNonAcademic?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (searchNonAcademic != null) {
      return searchNonAcademic(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return searchNonAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return searchNonAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (searchNonAcademic != null) {
      return searchNonAcademic(this);
    }
    return orElse();
  }
}

abstract class _SeachNonAcademic implements DigitalLibraryEvent {
  const factory _SeachNonAcademic({required final String search}) =
      _$SeachNonAcademicImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SeachNonAcademicImplCopyWith<_$SeachNonAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginateAcademicImplCopyWith<$Res> {
  factory _$$PaginateAcademicImplCopyWith(_$PaginateAcademicImpl value,
          $Res Function(_$PaginateAcademicImpl) then) =
      __$$PaginateAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$PaginateAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$PaginateAcademicImpl>
    implements _$$PaginateAcademicImplCopyWith<$Res> {
  __$$PaginateAcademicImplCopyWithImpl(_$PaginateAcademicImpl _value,
      $Res Function(_$PaginateAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$PaginateAcademicImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaginateAcademicImpl
    with DiagnosticableTreeMixin
    implements _PaginateAcademic {
  const _$PaginateAcademicImpl({required this.search});

  @override
  final String search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.paginateAcademic(search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.paginateAcademic'))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateAcademicImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateAcademicImplCopyWith<_$PaginateAcademicImpl> get copyWith =>
      __$$PaginateAcademicImplCopyWithImpl<_$PaginateAcademicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return paginateAcademic(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return paginateAcademic?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (paginateAcademic != null) {
      return paginateAcademic(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return paginateAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return paginateAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (paginateAcademic != null) {
      return paginateAcademic(this);
    }
    return orElse();
  }
}

abstract class _PaginateAcademic implements DigitalLibraryEvent {
  const factory _PaginateAcademic({required final String search}) =
      _$PaginateAcademicImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$PaginateAcademicImplCopyWith<_$PaginateAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginateNonAcademicImplCopyWith<$Res> {
  factory _$$PaginateNonAcademicImplCopyWith(_$PaginateNonAcademicImpl value,
          $Res Function(_$PaginateNonAcademicImpl) then) =
      __$$PaginateNonAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$PaginateNonAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$PaginateNonAcademicImpl>
    implements _$$PaginateNonAcademicImplCopyWith<$Res> {
  __$$PaginateNonAcademicImplCopyWithImpl(_$PaginateNonAcademicImpl _value,
      $Res Function(_$PaginateNonAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$PaginateNonAcademicImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaginateNonAcademicImpl
    with DiagnosticableTreeMixin
    implements _PaginateNonAcademic {
  const _$PaginateNonAcademicImpl({required this.search});

  @override
  final String search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.paginateNonAcademic(search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DigitalLibraryEvent.paginateNonAcademic'))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateNonAcademicImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateNonAcademicImplCopyWith<_$PaginateNonAcademicImpl> get copyWith =>
      __$$PaginateNonAcademicImplCopyWithImpl<_$PaginateNonAcademicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return paginateNonAcademic(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return paginateNonAcademic?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (paginateNonAcademic != null) {
      return paginateNonAcademic(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return paginateNonAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return paginateNonAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (paginateNonAcademic != null) {
      return paginateNonAcademic(this);
    }
    return orElse();
  }
}

abstract class _PaginateNonAcademic implements DigitalLibraryEvent {
  const factory _PaginateNonAcademic({required final String search}) =
      _$PaginateNonAcademicImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$PaginateNonAcademicImplCopyWith<_$PaginateNonAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAcademicLibraryImplCopyWith<$Res> {
  factory _$$GetAcademicLibraryImplCopyWith(_$GetAcademicLibraryImpl value,
          $Res Function(_$GetAcademicLibraryImpl) then) =
      __$$GetAcademicLibraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? typeId, String? catId, String? subId});
}

/// @nodoc
class __$$GetAcademicLibraryImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetAcademicLibraryImpl>
    implements _$$GetAcademicLibraryImplCopyWith<$Res> {
  __$$GetAcademicLibraryImplCopyWithImpl(_$GetAcademicLibraryImpl _value,
      $Res Function(_$GetAcademicLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? catId = freezed,
    Object? subId = freezed,
  }) {
    return _then(_$GetAcademicLibraryImpl(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetAcademicLibraryImpl
    with DiagnosticableTreeMixin
    implements _GetAcademicLibrary {
  const _$GetAcademicLibraryImpl({this.typeId, this.catId, this.subId});

  @override
  final String? typeId;
  @override
  final String? catId;
  @override
  final String? subId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getAcademicLibrary(typeId: $typeId, catId: $catId, subId: $subId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'DigitalLibraryEvent.getAcademicLibrary'))
      ..add(DiagnosticsProperty('typeId', typeId))
      ..add(DiagnosticsProperty('catId', catId))
      ..add(DiagnosticsProperty('subId', subId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAcademicLibraryImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.subId, subId) || other.subId == subId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeId, catId, subId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAcademicLibraryImplCopyWith<_$GetAcademicLibraryImpl> get copyWith =>
      __$$GetAcademicLibraryImplCopyWithImpl<_$GetAcademicLibraryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getAcademicLibrary(typeId, catId, subId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getAcademicLibrary?.call(typeId, catId, subId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getAcademicLibrary != null) {
      return getAcademicLibrary(typeId, catId, subId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getAcademicLibrary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getAcademicLibrary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getAcademicLibrary != null) {
      return getAcademicLibrary(this);
    }
    return orElse();
  }
}

abstract class _GetAcademicLibrary implements DigitalLibraryEvent {
  const factory _GetAcademicLibrary(
      {final String? typeId,
      final String? catId,
      final String? subId}) = _$GetAcademicLibraryImpl;

  String? get typeId;
  String? get catId;
  String? get subId;
  @JsonKey(ignore: true)
  _$$GetAcademicLibraryImplCopyWith<_$GetAcademicLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadBookImplCopyWith<$Res> {
  factory _$$ReadBookImplCopyWith(
          _$ReadBookImpl value, $Res Function(_$ReadBookImpl) then) =
      __$$ReadBookImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DigitalLibraryEntity book, BuildContext context, bool isNonAcademic});
}

/// @nodoc
class __$$ReadBookImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$ReadBookImpl>
    implements _$$ReadBookImplCopyWith<$Res> {
  __$$ReadBookImplCopyWithImpl(
      _$ReadBookImpl _value, $Res Function(_$ReadBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? context = null,
    Object? isNonAcademic = null,
  }) {
    return _then(_$ReadBookImpl(
      null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as DigitalLibraryEntity,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      isNonAcademic: null == isNonAcademic
          ? _value.isNonAcademic
          : isNonAcademic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadBookImpl with DiagnosticableTreeMixin implements _ReadBook {
  const _$ReadBookImpl(this.book,
      {required this.context, required this.isNonAcademic});

  @override
  final DigitalLibraryEntity book;
  @override
  final BuildContext context;
  @override
  final bool isNonAcademic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.readBook(book: $book, context: $context, isNonAcademic: $isNonAcademic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.readBook'))
      ..add(DiagnosticsProperty('book', book))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('isNonAcademic', isNonAcademic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadBookImpl &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.isNonAcademic, isNonAcademic) ||
                other.isNonAcademic == isNonAcademic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, context, isNonAcademic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadBookImplCopyWith<_$ReadBookImpl> get copyWith =>
      __$$ReadBookImplCopyWithImpl<_$ReadBookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return readBook(book, context, isNonAcademic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return readBook?.call(book, context, isNonAcademic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (readBook != null) {
      return readBook(book, context, isNonAcademic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return readBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return readBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (readBook != null) {
      return readBook(this);
    }
    return orElse();
  }
}

abstract class _ReadBook implements DigitalLibraryEvent {
  const factory _ReadBook(final DigitalLibraryEntity book,
      {required final BuildContext context,
      required final bool isNonAcademic}) = _$ReadBookImpl;

  DigitalLibraryEntity get book;
  BuildContext get context;
  bool get isNonAcademic;
  @JsonKey(ignore: true)
  _$$ReadBookImplCopyWith<_$ReadBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResearchImplCopyWith<$Res> {
  factory _$$GetResearchImplCopyWith(
          _$GetResearchImpl value, $Res Function(_$GetResearchImpl) then) =
      __$$GetResearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResearchImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetResearchImpl>
    implements _$$GetResearchImplCopyWith<$Res> {
  __$$GetResearchImplCopyWithImpl(
      _$GetResearchImpl _value, $Res Function(_$GetResearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetResearchImpl with DiagnosticableTreeMixin implements _GetResearch {
  const _$GetResearchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getResearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getResearch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getResearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getResearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getResearch != null) {
      return getResearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getResearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getResearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getResearch != null) {
      return getResearch(this);
    }
    return orElse();
  }
}

abstract class _GetResearch implements DigitalLibraryEvent {
  const factory _GetResearch() = _$GetResearchImpl;
}

/// @nodoc
abstract class _$$GetTypesImplCopyWith<$Res> {
  factory _$$GetTypesImplCopyWith(
          _$GetTypesImpl value, $Res Function(_$GetTypesImpl) then) =
      __$$GetTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String moduleName, String pJson});
}

/// @nodoc
class __$$GetTypesImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetTypesImpl>
    implements _$$GetTypesImplCopyWith<$Res> {
  __$$GetTypesImplCopyWithImpl(
      _$GetTypesImpl _value, $Res Function(_$GetTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleName = null,
    Object? pJson = null,
  }) {
    return _then(_$GetTypesImpl(
      null == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String,
      null == pJson
          ? _value.pJson
          : pJson // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTypesImpl with DiagnosticableTreeMixin implements _GetTypes {
  const _$GetTypesImpl(this.moduleName, this.pJson);

  @override
  final String moduleName;
  @override
  final String pJson;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getTypes(moduleName: $moduleName, pJson: $pJson)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getTypes'))
      ..add(DiagnosticsProperty('moduleName', moduleName))
      ..add(DiagnosticsProperty('pJson', pJson));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTypesImpl &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName) &&
            (identical(other.pJson, pJson) || other.pJson == pJson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleName, pJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTypesImplCopyWith<_$GetTypesImpl> get copyWith =>
      __$$GetTypesImplCopyWithImpl<_$GetTypesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getTypes(moduleName, pJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getTypes?.call(moduleName, pJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getTypes != null) {
      return getTypes(moduleName, pJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getTypes != null) {
      return getTypes(this);
    }
    return orElse();
  }
}

abstract class _GetTypes implements DigitalLibraryEvent {
  const factory _GetTypes(final String moduleName, final String pJson) =
      _$GetTypesImpl;

  String get moduleName;
  String get pJson;
  @JsonKey(ignore: true)
  _$$GetTypesImplCopyWith<_$GetTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectMediumImplCopyWith<$Res> {
  factory _$$SelectMediumImplCopyWith(
          _$SelectMediumImpl value, $Res Function(_$SelectMediumImpl) then) =
      __$$SelectMediumImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcademicTypeEntity? selected});
}

/// @nodoc
class __$$SelectMediumImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectMediumImpl>
    implements _$$SelectMediumImplCopyWith<$Res> {
  __$$SelectMediumImplCopyWithImpl(
      _$SelectMediumImpl _value, $Res Function(_$SelectMediumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$SelectMediumImpl(
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
    ));
  }
}

/// @nodoc

class _$SelectMediumImpl with DiagnosticableTreeMixin implements _SelectMedium {
  const _$SelectMediumImpl(this.selected);

  @override
  final AcademicTypeEntity? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectMedium(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectMedium'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMediumImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMediumImplCopyWith<_$SelectMediumImpl> get copyWith =>
      __$$SelectMediumImplCopyWithImpl<_$SelectMediumImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectMedium(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectMedium?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectMedium != null) {
      return selectMedium(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectMedium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectMedium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectMedium != null) {
      return selectMedium(this);
    }
    return orElse();
  }
}

abstract class _SelectMedium implements DigitalLibraryEvent {
  const factory _SelectMedium(final AcademicTypeEntity? selected) =
      _$SelectMediumImpl;

  AcademicTypeEntity? get selected;
  @JsonKey(ignore: true)
  _$$SelectMediumImplCopyWith<_$SelectMediumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectSubCatImplCopyWith<$Res> {
  factory _$$SelectSubCatImplCopyWith(
          _$SelectSubCatImpl value, $Res Function(_$SelectSubCatImpl) then) =
      __$$SelectSubCatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcademicTypeEntity? selected});
}

/// @nodoc
class __$$SelectSubCatImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectSubCatImpl>
    implements _$$SelectSubCatImplCopyWith<$Res> {
  __$$SelectSubCatImplCopyWithImpl(
      _$SelectSubCatImpl _value, $Res Function(_$SelectSubCatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$SelectSubCatImpl(
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
    ));
  }
}

/// @nodoc

class _$SelectSubCatImpl with DiagnosticableTreeMixin implements _SelectSubCat {
  const _$SelectSubCatImpl(this.selected);

  @override
  final AcademicTypeEntity? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectSubCat(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectSubCat'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSubCatImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSubCatImplCopyWith<_$SelectSubCatImpl> get copyWith =>
      __$$SelectSubCatImplCopyWithImpl<_$SelectSubCatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectSubCat(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectSubCat?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectSubCat != null) {
      return selectSubCat(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectSubCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectSubCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectSubCat != null) {
      return selectSubCat(this);
    }
    return orElse();
  }
}

abstract class _SelectSubCat implements DigitalLibraryEvent {
  const factory _SelectSubCat(final AcademicTypeEntity? selected) =
      _$SelectSubCatImpl;

  AcademicTypeEntity? get selected;
  @JsonKey(ignore: true)
  _$$SelectSubCatImplCopyWith<_$SelectSubCatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNonAcademicImplCopyWith<$Res> {
  factory _$$GetNonAcademicImplCopyWith(_$GetNonAcademicImpl value,
          $Res Function(_$GetNonAcademicImpl) then) =
      __$$GetNonAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? typeId, String? catId, String? subId, String? moduleName});
}

/// @nodoc
class __$$GetNonAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetNonAcademicImpl>
    implements _$$GetNonAcademicImplCopyWith<$Res> {
  __$$GetNonAcademicImplCopyWithImpl(
      _$GetNonAcademicImpl _value, $Res Function(_$GetNonAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? catId = freezed,
    Object? subId = freezed,
    Object? moduleName = freezed,
  }) {
    return _then(_$GetNonAcademicImpl(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String?,
      moduleName: freezed == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetNonAcademicImpl
    with DiagnosticableTreeMixin
    implements _GetNonAcademic {
  const _$GetNonAcademicImpl(
      {this.typeId, this.catId, this.subId, this.moduleName});

  @override
  final String? typeId;
  @override
  final String? catId;
  @override
  final String? subId;
  @override
  final String? moduleName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getNonAcademic(typeId: $typeId, catId: $catId, subId: $subId, moduleName: $moduleName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getNonAcademic'))
      ..add(DiagnosticsProperty('typeId', typeId))
      ..add(DiagnosticsProperty('catId', catId))
      ..add(DiagnosticsProperty('subId', subId))
      ..add(DiagnosticsProperty('moduleName', moduleName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNonAcademicImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, typeId, catId, subId, moduleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNonAcademicImplCopyWith<_$GetNonAcademicImpl> get copyWith =>
      __$$GetNonAcademicImplCopyWithImpl<_$GetNonAcademicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getNonAcademic(typeId, catId, subId, moduleName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getNonAcademic?.call(typeId, catId, subId, moduleName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getNonAcademic != null) {
      return getNonAcademic(typeId, catId, subId, moduleName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getNonAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getNonAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getNonAcademic != null) {
      return getNonAcademic(this);
    }
    return orElse();
  }
}

abstract class _GetNonAcademic implements DigitalLibraryEvent {
  const factory _GetNonAcademic(
      {final String? typeId,
      final String? catId,
      final String? subId,
      final String? moduleName}) = _$GetNonAcademicImpl;

  String? get typeId;
  String? get catId;
  String? get subId;
  String? get moduleName;
  @JsonKey(ignore: true)
  _$$GetNonAcademicImplCopyWith<_$GetNonAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectNonAcademicTypeImplCopyWith<$Res> {
  factory _$$SelectNonAcademicTypeImplCopyWith(
          _$SelectNonAcademicTypeImpl value,
          $Res Function(_$SelectNonAcademicTypeImpl) then) =
      __$$SelectNonAcademicTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NonAcademicTypes selected});
}

/// @nodoc
class __$$SelectNonAcademicTypeImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectNonAcademicTypeImpl>
    implements _$$SelectNonAcademicTypeImplCopyWith<$Res> {
  __$$SelectNonAcademicTypeImplCopyWithImpl(_$SelectNonAcademicTypeImpl _value,
      $Res Function(_$SelectNonAcademicTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectNonAcademicTypeImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
    ));
  }
}

/// @nodoc

class _$SelectNonAcademicTypeImpl
    with DiagnosticableTreeMixin
    implements _SelectNonAcademicType {
  const _$SelectNonAcademicTypeImpl(this.selected);

  @override
  final NonAcademicTypes selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectNonAcademicType(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DigitalLibraryEvent.selectNonAcademicType'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectNonAcademicTypeImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectNonAcademicTypeImplCopyWith<_$SelectNonAcademicTypeImpl>
      get copyWith => __$$SelectNonAcademicTypeImplCopyWithImpl<
          _$SelectNonAcademicTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectNonAcademicType(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectNonAcademicType?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectNonAcademicType != null) {
      return selectNonAcademicType(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectNonAcademicType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectNonAcademicType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectNonAcademicType != null) {
      return selectNonAcademicType(this);
    }
    return orElse();
  }
}

abstract class _SelectNonAcademicType implements DigitalLibraryEvent {
  const factory _SelectNonAcademicType(final NonAcademicTypes selected) =
      _$SelectNonAcademicTypeImpl;

  NonAcademicTypes get selected;
  @JsonKey(ignore: true)
  _$$SelectNonAcademicTypeImplCopyWith<_$SelectNonAcademicTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLibraryImplCopyWith<$Res> {
  factory _$$GetLibraryImplCopyWith(
          _$GetLibraryImpl value, $Res Function(_$GetLibraryImpl) then) =
      __$$GetLibraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DigitalLibraryRequest request});
}

/// @nodoc
class __$$GetLibraryImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetLibraryImpl>
    implements _$$GetLibraryImplCopyWith<$Res> {
  __$$GetLibraryImplCopyWithImpl(
      _$GetLibraryImpl _value, $Res Function(_$GetLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetLibraryImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DigitalLibraryRequest,
    ));
  }
}

/// @nodoc

class _$GetLibraryImpl with DiagnosticableTreeMixin implements _GetLibrary {
  const _$GetLibraryImpl(this.request);

  @override
  final DigitalLibraryRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getLibrary(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getLibrary'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLibraryImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLibraryImplCopyWith<_$GetLibraryImpl> get copyWith =>
      __$$GetLibraryImplCopyWithImpl<_$GetLibraryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getLibrary(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getLibrary?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getLibrary != null) {
      return getLibrary(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getLibrary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getLibrary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getLibrary != null) {
      return getLibrary(this);
    }
    return orElse();
  }
}

abstract class _GetLibrary implements DigitalLibraryEvent {
  const factory _GetLibrary(final DigitalLibraryRequest request) =
      _$GetLibraryImpl;

  DigitalLibraryRequest get request;
  @JsonKey(ignore: true)
  _$$GetLibraryImplCopyWith<_$GetLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectClassImplCopyWith<$Res> {
  factory _$$SelectClassImplCopyWith(
          _$SelectClassImpl value, $Res Function(_$SelectClassImpl) then) =
      __$$SelectClassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClassDetailsEntity selected});
}

/// @nodoc
class __$$SelectClassImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectClassImpl>
    implements _$$SelectClassImplCopyWith<$Res> {
  __$$SelectClassImplCopyWithImpl(
      _$SelectClassImpl _value, $Res Function(_$SelectClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectClassImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity,
    ));
  }
}

/// @nodoc

class _$SelectClassImpl with DiagnosticableTreeMixin implements _SelectClass {
  const _$SelectClassImpl(this.selected);

  @override
  final ClassDetailsEntity selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectClass(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectClass'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectClassImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectClassImplCopyWith<_$SelectClassImpl> get copyWith =>
      __$$SelectClassImplCopyWithImpl<_$SelectClassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getUserActivity,
    required TResult Function() startSearch,
    required TResult Function(String? moduleName, String? contentId,
            String? bookmark, String? like)
        insertDlClick,
    required TResult Function() closeSearch,
    required TResult Function(String search) searchAcademic,
    required TResult Function(String search) searchNonAcademic,
    required TResult Function(String search) paginateAcademic,
    required TResult Function(String search) paginateNonAcademic,
    required TResult Function(String? typeId, String? catId, String? subId)
        getAcademicLibrary,
    required TResult Function(
            DigitalLibraryEntity book, BuildContext context, bool isNonAcademic)
        readBook,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectClass(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getUserActivity,
    TResult? Function()? startSearch,
    TResult? Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult? Function()? closeSearch,
    TResult? Function(String search)? searchAcademic,
    TResult? Function(String search)? searchNonAcademic,
    TResult? Function(String search)? paginateAcademic,
    TResult? Function(String search)? paginateNonAcademic,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult? Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectClass?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getUserActivity,
    TResult Function()? startSearch,
    TResult Function(String? moduleName, String? contentId, String? bookmark,
            String? like)?
        insertDlClick,
    TResult Function()? closeSearch,
    TResult Function(String search)? searchAcademic,
    TResult Function(String search)? searchNonAcademic,
    TResult Function(String search)? paginateAcademic,
    TResult Function(String search)? paginateNonAcademic,
    TResult Function(String? typeId, String? catId, String? subId)?
        getAcademicLibrary,
    TResult Function(DigitalLibraryEntity book, BuildContext context,
            bool isNonAcademic)?
        readBook,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(
            String? typeId, String? catId, String? subId, String? moduleName)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectClass != null) {
      return selectClass(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetUserActivity value) getUserActivity,
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_InsertDlClick value) insertDlClick,
    required TResult Function(_CloseSearch value) closeSearch,
    required TResult Function(_SeachAcademic value) searchAcademic,
    required TResult Function(_SeachNonAcademic value) searchNonAcademic,
    required TResult Function(_PaginateAcademic value) paginateAcademic,
    required TResult Function(_PaginateNonAcademic value) paginateNonAcademic,
    required TResult Function(_GetAcademicLibrary value) getAcademicLibrary,
    required TResult Function(_ReadBook value) readBook,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetUserActivity value)? getUserActivity,
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_InsertDlClick value)? insertDlClick,
    TResult? Function(_CloseSearch value)? closeSearch,
    TResult? Function(_SeachAcademic value)? searchAcademic,
    TResult? Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult? Function(_PaginateAcademic value)? paginateAcademic,
    TResult? Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult? Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult? Function(_ReadBook value)? readBook,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetUserActivity value)? getUserActivity,
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_InsertDlClick value)? insertDlClick,
    TResult Function(_CloseSearch value)? closeSearch,
    TResult Function(_SeachAcademic value)? searchAcademic,
    TResult Function(_SeachNonAcademic value)? searchNonAcademic,
    TResult Function(_PaginateAcademic value)? paginateAcademic,
    TResult Function(_PaginateNonAcademic value)? paginateNonAcademic,
    TResult Function(_GetAcademicLibrary value)? getAcademicLibrary,
    TResult Function(_ReadBook value)? readBook,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectClass != null) {
      return selectClass(this);
    }
    return orElse();
  }
}

abstract class _SelectClass implements DigitalLibraryEvent {
  const factory _SelectClass(final ClassDetailsEntity selected) =
      _$SelectClassImpl;

  ClassDetailsEntity get selected;
  @JsonKey(ignore: true)
  _$$SelectClassImplCopyWith<_$SelectClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DigitalLibraryState {
  ResponseClassify<List<ClassDetailsEntity>>? get getClasses =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<DigitalLibraryEntity>>? get getLibrary =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get getTypes =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get subCats =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get mediums =>
      throw _privateConstructorUsedError;
  ResponseClassify<void>? get insertDlClick =>
      throw _privateConstructorUsedError;
  AcademicTypeEntity? get selectedSubCat => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  AcademicTypeEntity? get selectedMedium => throw _privateConstructorUsedError;
  double? get downloadProgress => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  NonAcademicTypes get selectedNonAcademic =>
      throw _privateConstructorUsedError;
  ClassDetailsEntity? get selectedClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DigitalLibraryStateCopyWith<DigitalLibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalLibraryStateCopyWith<$Res> {
  factory $DigitalLibraryStateCopyWith(
          DigitalLibraryState value, $Res Function(DigitalLibraryState) then) =
      _$DigitalLibraryStateCopyWithImpl<$Res, DigitalLibraryState>;
  @useResult
  $Res call(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      ResponseClassify<void>? insertDlClick,
      AcademicTypeEntity? selectedSubCat,
      bool isSearching,
      AcademicTypeEntity? selectedMedium,
      double? downloadProgress,
      bool isLoading,
      NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass});
}

/// @nodoc
class _$DigitalLibraryStateCopyWithImpl<$Res, $Val extends DigitalLibraryState>
    implements $DigitalLibraryStateCopyWith<$Res> {
  _$DigitalLibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClasses = freezed,
    Object? getLibrary = freezed,
    Object? getTypes = freezed,
    Object? subCats = freezed,
    Object? mediums = freezed,
    Object? insertDlClick = freezed,
    Object? selectedSubCat = freezed,
    Object? isSearching = null,
    Object? selectedMedium = freezed,
    Object? downloadProgress = freezed,
    Object? isLoading = null,
    Object? selectedNonAcademic = null,
    Object? selectedClass = freezed,
  }) {
    return _then(_value.copyWith(
      getClasses: freezed == getClasses
          ? _value.getClasses
          : getClasses // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<ClassDetailsEntity>>?,
      getLibrary: freezed == getLibrary
          ? _value.getLibrary
          : getLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
      getTypes: freezed == getTypes
          ? _value.getTypes
          : getTypes // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      subCats: freezed == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      mediums: freezed == mediums
          ? _value.mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      insertDlClick: freezed == insertDlClick
          ? _value.insertDlClick
          : insertDlClick // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      selectedSubCat: freezed == selectedSubCat
          ? _value.selectedSubCat
          : selectedSubCat // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedMedium: freezed == selectedMedium
          ? _value.selectedMedium
          : selectedMedium // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      downloadProgress: freezed == downloadProgress
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNonAcademic: null == selectedNonAcademic
          ? _value.selectedNonAcademic
          : selectedNonAcademic // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DigitalLibraryStateImplCopyWith<$Res>
    implements $DigitalLibraryStateCopyWith<$Res> {
  factory _$$DigitalLibraryStateImplCopyWith(_$DigitalLibraryStateImpl value,
          $Res Function(_$DigitalLibraryStateImpl) then) =
      __$$DigitalLibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      ResponseClassify<void>? insertDlClick,
      AcademicTypeEntity? selectedSubCat,
      bool isSearching,
      AcademicTypeEntity? selectedMedium,
      double? downloadProgress,
      bool isLoading,
      NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass});
}

/// @nodoc
class __$$DigitalLibraryStateImplCopyWithImpl<$Res>
    extends _$DigitalLibraryStateCopyWithImpl<$Res, _$DigitalLibraryStateImpl>
    implements _$$DigitalLibraryStateImplCopyWith<$Res> {
  __$$DigitalLibraryStateImplCopyWithImpl(_$DigitalLibraryStateImpl _value,
      $Res Function(_$DigitalLibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClasses = freezed,
    Object? getLibrary = freezed,
    Object? getTypes = freezed,
    Object? subCats = freezed,
    Object? mediums = freezed,
    Object? insertDlClick = freezed,
    Object? selectedSubCat = freezed,
    Object? isSearching = null,
    Object? selectedMedium = freezed,
    Object? downloadProgress = freezed,
    Object? isLoading = null,
    Object? selectedNonAcademic = null,
    Object? selectedClass = freezed,
  }) {
    return _then(_$DigitalLibraryStateImpl(
      getClasses: freezed == getClasses
          ? _value.getClasses
          : getClasses // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<ClassDetailsEntity>>?,
      getLibrary: freezed == getLibrary
          ? _value.getLibrary
          : getLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
      getTypes: freezed == getTypes
          ? _value.getTypes
          : getTypes // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      subCats: freezed == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      mediums: freezed == mediums
          ? _value.mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      insertDlClick: freezed == insertDlClick
          ? _value.insertDlClick
          : insertDlClick // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<void>?,
      selectedSubCat: freezed == selectedSubCat
          ? _value.selectedSubCat
          : selectedSubCat // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedMedium: freezed == selectedMedium
          ? _value.selectedMedium
          : selectedMedium // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      downloadProgress: freezed == downloadProgress
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNonAcademic: null == selectedNonAcademic
          ? _value.selectedNonAcademic
          : selectedNonAcademic // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity?,
    ));
  }
}

/// @nodoc

class _$DigitalLibraryStateImpl
    with DiagnosticableTreeMixin
    implements _DigitalLibraryState {
  const _$DigitalLibraryStateImpl(
      {this.getClasses,
      this.getLibrary,
      this.getTypes,
      this.subCats,
      this.mediums,
      this.insertDlClick,
      this.selectedSubCat,
      this.isSearching = false,
      this.selectedMedium,
      this.downloadProgress = 0,
      this.isLoading = false,
      this.selectedNonAcademic = NonAcademicTypes.all,
      this.selectedClass});

  @override
  final ResponseClassify<List<ClassDetailsEntity>>? getClasses;
  @override
  final ResponseClassify<List<DigitalLibraryEntity>>? getLibrary;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? getTypes;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? subCats;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? mediums;
  @override
  final ResponseClassify<void>? insertDlClick;
  @override
  final AcademicTypeEntity? selectedSubCat;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  final AcademicTypeEntity? selectedMedium;
  @override
  @JsonKey()
  final double? downloadProgress;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final NonAcademicTypes selectedNonAcademic;
  @override
  final ClassDetailsEntity? selectedClass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryState(getClasses: $getClasses, getLibrary: $getLibrary, getTypes: $getTypes, subCats: $subCats, mediums: $mediums, insertDlClick: $insertDlClick, selectedSubCat: $selectedSubCat, isSearching: $isSearching, selectedMedium: $selectedMedium, downloadProgress: $downloadProgress, isLoading: $isLoading, selectedNonAcademic: $selectedNonAcademic, selectedClass: $selectedClass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryState'))
      ..add(DiagnosticsProperty('getClasses', getClasses))
      ..add(DiagnosticsProperty('getLibrary', getLibrary))
      ..add(DiagnosticsProperty('getTypes', getTypes))
      ..add(DiagnosticsProperty('subCats', subCats))
      ..add(DiagnosticsProperty('mediums', mediums))
      ..add(DiagnosticsProperty('insertDlClick', insertDlClick))
      ..add(DiagnosticsProperty('selectedSubCat', selectedSubCat))
      ..add(DiagnosticsProperty('isSearching', isSearching))
      ..add(DiagnosticsProperty('selectedMedium', selectedMedium))
      ..add(DiagnosticsProperty('downloadProgress', downloadProgress))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('selectedNonAcademic', selectedNonAcademic))
      ..add(DiagnosticsProperty('selectedClass', selectedClass));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalLibraryStateImpl &&
            (identical(other.getClasses, getClasses) ||
                other.getClasses == getClasses) &&
            (identical(other.getLibrary, getLibrary) ||
                other.getLibrary == getLibrary) &&
            (identical(other.getTypes, getTypes) ||
                other.getTypes == getTypes) &&
            (identical(other.subCats, subCats) || other.subCats == subCats) &&
            (identical(other.mediums, mediums) || other.mediums == mediums) &&
            (identical(other.insertDlClick, insertDlClick) ||
                other.insertDlClick == insertDlClick) &&
            (identical(other.selectedSubCat, selectedSubCat) ||
                other.selectedSubCat == selectedSubCat) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.selectedMedium, selectedMedium) ||
                other.selectedMedium == selectedMedium) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedNonAcademic, selectedNonAcademic) ||
                other.selectedNonAcademic == selectedNonAcademic) &&
            (identical(other.selectedClass, selectedClass) ||
                other.selectedClass == selectedClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getClasses,
      getLibrary,
      getTypes,
      subCats,
      mediums,
      insertDlClick,
      selectedSubCat,
      isSearching,
      selectedMedium,
      downloadProgress,
      isLoading,
      selectedNonAcademic,
      selectedClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalLibraryStateImplCopyWith<_$DigitalLibraryStateImpl> get copyWith =>
      __$$DigitalLibraryStateImplCopyWithImpl<_$DigitalLibraryStateImpl>(
          this, _$identity);
}

abstract class _DigitalLibraryState implements DigitalLibraryState {
  const factory _DigitalLibraryState(
      {final ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      final ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      final ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      final ResponseClassify<List<AcademicTypeEntity>>? subCats,
      final ResponseClassify<List<AcademicTypeEntity>>? mediums,
      final ResponseClassify<void>? insertDlClick,
      final AcademicTypeEntity? selectedSubCat,
      final bool isSearching,
      final AcademicTypeEntity? selectedMedium,
      final double? downloadProgress,
      final bool isLoading,
      final NonAcademicTypes selectedNonAcademic,
      final ClassDetailsEntity? selectedClass}) = _$DigitalLibraryStateImpl;

  @override
  ResponseClassify<List<ClassDetailsEntity>>? get getClasses;
  @override
  ResponseClassify<List<DigitalLibraryEntity>>? get getLibrary;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get getTypes;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get subCats;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get mediums;
  @override
  ResponseClassify<void>? get insertDlClick;
  @override
  AcademicTypeEntity? get selectedSubCat;
  @override
  bool get isSearching;
  @override
  AcademicTypeEntity? get selectedMedium;
  @override
  double? get downloadProgress;
  @override
  bool get isLoading;
  @override
  NonAcademicTypes get selectedNonAcademic;
  @override
  ClassDetailsEntity? get selectedClass;
  @override
  @JsonKey(ignore: true)
  _$$DigitalLibraryStateImplCopyWith<_$DigitalLibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

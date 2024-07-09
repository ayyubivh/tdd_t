part of 'digital_library_bloc.dart';

@freezed
class DigitalLibraryState with _$DigitalLibraryState {
  const factory DigitalLibraryState(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      ResponseClassify<void>? insertDlClick,
      AcademicTypeEntity? selectedSubCat,
      @Default(false) bool isSearching,
      AcademicTypeEntity? selectedMedium,
      @Default(0) double? downloadProgress,
      @Default(false) bool isLoading,
      @Default(NonAcademicTypes.all) NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass}) = _DigitalLibraryState;

  factory DigitalLibraryState.initial() => const DigitalLibraryState();
}

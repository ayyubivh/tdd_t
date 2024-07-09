part of 'digital_library_bloc.dart';

@freezed
class DigitalLibraryEvent with _$DigitalLibraryEvent {
  const factory DigitalLibraryEvent.started() = _Started;
  const factory DigitalLibraryEvent.getClasses() = _GetClasses;
  const factory DigitalLibraryEvent.getUserActivity() = _GetUserActivity;
  const factory DigitalLibraryEvent.startSearch() = _StartSearch;
  const factory DigitalLibraryEvent.insertDlClick({
    String? moduleName,
    String? contentId,
    String? bookmark,
    String? like,
  }) = _InsertDlClick;
  const factory DigitalLibraryEvent.closeSearch() = _CloseSearch;
  const factory DigitalLibraryEvent.searchAcademic({required String search}) =
      _SeachAcademic;
  const factory DigitalLibraryEvent.searchNonAcademic(
      {required String search}) = _SeachNonAcademic;
  const factory DigitalLibraryEvent.paginateAcademic({required String search}) =
      _PaginateAcademic;
  const factory DigitalLibraryEvent.paginateNonAcademic(
      {required String search}) = _PaginateNonAcademic;
  const factory DigitalLibraryEvent.getAcademicLibrary(
      {String? typeId, String? catId, String? subId}) = _GetAcademicLibrary;
  const factory DigitalLibraryEvent.readBook(DigitalLibraryEntity book,
      {required BuildContext context, required bool isNonAcademic}) = _ReadBook;
  const factory DigitalLibraryEvent.getResearch() = _GetResearch;
  const factory DigitalLibraryEvent.getTypes(String moduleName, String pJson) =
      _GetTypes;
  const factory DigitalLibraryEvent.selectMedium(AcademicTypeEntity? selected) =
      _SelectMedium;
  const factory DigitalLibraryEvent.selectSubCat(AcademicTypeEntity? selected) =
      _SelectSubCat;
  const factory DigitalLibraryEvent.getNonAcademic(
      {String? typeId,
      String? catId,
      String? subId,
      String? moduleName}) = _GetNonAcademic;
  const factory DigitalLibraryEvent.selectNonAcademicType(
      NonAcademicTypes selected) = _SelectNonAcademicType;

  const factory DigitalLibraryEvent.getLibrary(DigitalLibraryRequest request) =
      _GetLibrary;
  const factory DigitalLibraryEvent.selectClass(ClassDetailsEntity selected) =
      _SelectClass;
}

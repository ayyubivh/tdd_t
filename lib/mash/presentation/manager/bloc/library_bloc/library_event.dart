part of 'library_bloc.dart';

@freezed
class LibraryEvent with _$LibraryEvent {
  const factory LibraryEvent.started() = _Started;
  const factory LibraryEvent.getPhysicalLibrary({required String prmLangId,required String prmAuthId,required String prmSearch}) = _GetPhysicalLibrary;
  const factory LibraryEvent.getRequiredFilterData() = _GetPhysicalLibraryFilterData;
  const factory LibraryEvent.postBookRequest({required String bookId}) = _PostBookRequest;


}

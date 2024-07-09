part of 'library_bloc.dart';

@freezed
class LibraryState with _$LibraryState {

  const factory LibraryState({
    ResponseClassify<List<PhysicalLibraryEntity>>? getPhysicalLibrary,ResponseClassify<RequiredPhysicalLibraryEntity>? getRequiredFilterData,ResponseClassify<String>? postPhysicalLibraryRequest
  }) = _LibraryState;


   factory LibraryState.initial() => const LibraryState();

}

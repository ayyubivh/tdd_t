part of 'home_work_notes_bloc.dart';

@freezed
class HomeWorkNotesState with _$HomeWorkNotesState {
  const factory HomeWorkNotesState({
    required ResponseClassify<List<HomeWorkReportsEntity>>
        homeWorkReportResponse,
    required ResponseClassify<List<NotesReportEntity>> noteWorkReportResponse,
    required ResponseClassify<NotesReportDetailsEntity>
        noteReportDetailResponse,
    required ResponseClassify<NotesReportDetailsEntity>
        homeWorkReportDetailResponse,
  }) = _HomeWorkNotesState;
  factory HomeWorkNotesState.initial() => HomeWorkNotesState(
        homeWorkReportResponse: ResponseClassify.initial(),
        noteWorkReportResponse: ResponseClassify.initial(),
        noteReportDetailResponse: ResponseClassify.initial(),
        homeWorkReportDetailResponse: ResponseClassify.initial(),
      );
}

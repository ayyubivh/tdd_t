part of 'home_work_notes_bloc.dart';

@freezed
class HomeWorkNotesEvent with _$HomeWorkNotesEvent {
  const factory HomeWorkNotesEvent.getHomeWorkReportEvent({
    required String startDate,
    required String endDate,
    required String subId,
    required String divId,
    required String classId,
  }) = _GetHomeWorkReportEvent;
  const factory HomeWorkNotesEvent.getNotesWorkReport({
    required String startDate,
    required String endDate,
    required String subjectId,
    required String divId,
    required String classId,
  }) = _GetNotesWorkReport;
  const factory HomeWorkNotesEvent.getNoteReportDetails({
    required String noteId,
  }) = _GetNoteReportDetails;
  const factory HomeWorkNotesEvent.getHomeWorkDetails({
    required String workId,
  }) = _GetHomeWorkDetails;
}

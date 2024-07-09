part of 'time_table_bloc.dart';

@freezed
class TimeTableEvent with _$TimeTableEvent {
  const factory TimeTableEvent.started() = _Started;
  const factory TimeTableEvent.getOfflineExamTerms({required String selectedUserId}) = _GetOfflineExamTerms;
  const factory TimeTableEvent.getOfflineExamTimeTable({required String termId,required bool isInit,required String selectedUserId}) = _GetOfflineExamTimeTable;
  const factory TimeTableEvent.getDailyTimeTable({required String date}) = _GetDailyTimeTable;
}

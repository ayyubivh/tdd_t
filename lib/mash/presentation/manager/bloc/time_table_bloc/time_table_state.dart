part of 'time_table_bloc.dart';

@freezed
class TimeTableState with _$TimeTableState {
  const factory TimeTableState({
    required ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,required ResponseClassify<List<OfflineExamTimeTableEntity>>? getOfflineExamTimeTable, required ResponseClassify<List<DailyTimeTableEntity>>? getDailyTimeTable
  }) = _OfflineExamTimeTableState;

  factory TimeTableState.initial() =>  TimeTableState(getOfflineExamTerms: ResponseClassify.initial(), getOfflineExamTimeTable: ResponseClassify.initial(), getDailyTimeTable: ResponseClassify.initial());
}

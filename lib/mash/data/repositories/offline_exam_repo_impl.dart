

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/offline_exam_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/time_table_data_source.dart';
import 'package:mash/mash/data/remote/request/daily_time_table_request.dart';
import 'package:mash/mash/data/remote/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/data/remote/request/get_offline_exam_time_table_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/entities/timeTable/daily_time_table_entity.dart';
import 'package:mash/mash/domain/repositories/time_table_repository.dart';


@LazySingleton(as: TimeTableRepository)
@injectable
class TimeTableRepoImpl extends TimeTableRepository{
final OfflineExamDataSource dataSource;
final TimeTableDataSource timeTableDataSource;


TimeTableRepoImpl(this.dataSource,this.timeTableDataSource);

  @override
  Future<List<OfflineTimeTableTermEntity>> getOfflineExamTerms(ExamTermDetailRequest request) {
    return dataSource.getOfflineExamTerms(request);
  }

  @override
  Future<List<OfflineExamTimeTableEntity>> getOfflineTimeTable(ExamTimeTableRequest request) {
    return dataSource.getOfflineTimeTable(request);
  }

  @override
  Future<List<DailyTimeTableEntity>> getDailyTimeTable(DailyTimeTableRequest request) {
    return timeTableDataSource.getDailyTimeTable(request);
  }
}
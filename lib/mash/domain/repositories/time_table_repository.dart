

import 'package:mash/mash/data/remote/request/daily_time_table_request.dart';
import 'package:mash/mash/data/remote/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/data/remote/request/get_offline_exam_time_table_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/entities/timeTable/daily_time_table_entity.dart';

abstract class TimeTableRepository{
  Future<List<OfflineTimeTableTermEntity>>  getOfflineExamTerms(ExamTermDetailRequest request);
  Future<List<OfflineExamTimeTableEntity>> getOfflineTimeTable(ExamTimeTableRequest request);
  Future<List<DailyTimeTableEntity>> getDailyTimeTable(DailyTimeTableRequest request);
}
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

import '../entities/notes/notes_details_entity.dart';
import '../entities/notes/notes_report_entity.dart';

abstract interface class HomeWorkNotesRepository {
  Future<List<HomeWorkReportsEntity>> getHomeWorkReports(
      HomeWorkReportRequest params);
  Future<List<NotesReportEntity>> getNoteReports(HomeWorkReportRequest params);
  Future<NotesReportDetailsEntity> getNotesReportsDetails(
      {required String noteId, required String compId});
  Future<NotesReportDetailsEntity> getHomeWorkReportsDetails(
      {required String workId, required String compId});
}

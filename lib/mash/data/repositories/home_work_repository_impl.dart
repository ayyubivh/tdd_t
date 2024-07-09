import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/home_work_notes_data_source.dart';
import 'package:mash/mash/domain/entities/notes/notes_details_entity.dart';
import 'package:mash/mash/domain/entities/notes/notes_report_entity.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

@LazySingleton(as: HomeWorkNotesRepository)
@injectable
class HomeWorkNotesReportRepositoryImpl implements HomeWorkNotesRepository {
  final HomeWorkNotesRemoteDataSource homeWorkNotesRemoteDataSource;

  HomeWorkNotesReportRepositoryImpl({
    required this.homeWorkNotesRemoteDataSource,
  });
  @override
  Future<List<HomeWorkReportsEntity>> getHomeWorkReports(
      HomeWorkReportRequest params) async {
    return await homeWorkNotesRemoteDataSource.getHomeWorkReports(params);
  }

  @override
  Future<List<NotesReportEntity>> getNoteReports(
      HomeWorkReportRequest params) async {
    return await homeWorkNotesRemoteDataSource.getNoteReports(params);
  }

  @override
  Future<NotesReportDetailsEntity> getNotesReportsDetails(
      {required String noteId, required String compId}) async {
    return await homeWorkNotesRemoteDataSource.getNotesReportsDetails(
        noteId: noteId, compId: compId);
  }

  @override
  Future<NotesReportDetailsEntity> getHomeWorkReportsDetails(
      {required String workId, required String compId}) async {
    return await homeWorkNotesRemoteDataSource.getHomeWorkReportsDetails(
        workId: workId, compId: compId);
  }
}

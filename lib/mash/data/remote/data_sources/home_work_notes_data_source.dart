import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/home_work/home_work_model.dart';
import 'package:mash/mash/data/remote/models/notes/notes_details_model.dart';
import 'package:mash/mash/data/remote/models/notes/notes_report_model.dart';
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import '../../../domain/entities/notes/notes_report_entity.dart';

abstract interface class HomeWorkNotesRemoteDataSource {
  Future<List<HomeWorkReportModel>> getHomeWorkReports(
      HomeWorkReportRequest params);
  Future<List<NotesReportEntity>> getNoteReports(HomeWorkReportRequest params);
  Future<NotesReportDetailsModel> getNotesReportsDetails(
      {required String noteId, required String compId});
  Future<NotesReportDetailsModel> getHomeWorkReportsDetails(
      {required String workId, required String compId});
}

@LazySingleton(as: HomeWorkNotesRemoteDataSource)
@injectable
class HomeWorkRemoteDataSourceImpl implements HomeWorkNotesRemoteDataSource {
  final ApiProvider apiProvider;

  HomeWorkRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<HomeWorkReportModel>> getHomeWorkReports(
      HomeWorkReportRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.homeWorkReports,
        body: params.toJson());
    final List<dynamic> datalist = data['resTable'];
    return datalist.map((e) => HomeWorkReportModel.fromJson(e)).toList();
  }

  @override
  Future<List<NotesReportModel>> getNoteReports(
      HomeWorkReportRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.notesReports,
        body: params.toJson());
    final List<dynamic> datalist = data['resTable'];
    return datalist.map((e) => NotesReportModel.fromJson(e)).toList();
  }

  @override
  Future<NotesReportDetailsModel> getNotesReportsDetails(
      {required String noteId, required String compId}) async {
    final data = await apiProvider.get(AppRemoteRoutes.notesDetails,
        body: {'P_NOTE_ID': noteId, 'P_COMP_ID': compId});
    return NotesReportDetailsModel.fromJson(data);
  }

  @override
  Future<NotesReportDetailsModel> getHomeWorkReportsDetails(
      {required String workId, required String compId}) async {
    final data = await apiProvider.get(AppRemoteRoutes.homeWorkDetails,
        body: {'P_WORK_ID': workId, 'P_COMP_ID': compId});
    return NotesReportDetailsModel.fromJson(data);
  }
}

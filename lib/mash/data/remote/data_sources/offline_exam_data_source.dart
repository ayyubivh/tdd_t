



import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/offline_exam/offline_exam_term_model.dart';
import 'package:mash/mash/data/remote/models/offline_exam/offline_exam_time_table_model.dart';
import 'package:mash/mash/data/remote/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/data/remote/request/get_offline_exam_time_table_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';

abstract class OfflineExamDataSource {
  Future<List<OfflineTimeTableTermEntity>> getOfflineExamTerms(ExamTermDetailRequest request);
  Future<List<OfflineExamTimeTableEntity>> getOfflineTimeTable(ExamTimeTableRequest request);
}

@LazySingleton(as: OfflineExamDataSource)
@injectable
class OfflineExamTermImpl extends OfflineExamDataSource{

  final ApiProvider apiProvider;
  OfflineExamTermImpl(this.apiProvider);

  @override
  Future<List<OfflineTimeTableTermEntity>> getOfflineExamTerms(ExamTermDetailRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.offlineExamTerms,body: request.toJson());
    return List<OfflineTimeTableTermEntity>.from(data["resTable"].map((e)=>OfflineExamTermModel.fromJson(e))).toList();
  }

  @override
  Future<List<OfflineExamTimeTableEntity>> getOfflineTimeTable(ExamTimeTableRequest request) async{
    final data = await  apiProvider.get(AppRemoteRoutes.offlineExamTimeTable,body: request.toJson());
    return List<OfflineExamTimeTableEntity>.from(data["resTable"].map((e)=>OfflineExamTimeTableModel.fromJson(e))).toList();
  }
}
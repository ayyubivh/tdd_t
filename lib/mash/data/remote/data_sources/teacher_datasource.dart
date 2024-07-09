
import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_questions_request.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_request.dart';
import 'package:mash/mash/data/remote/models/teacherRating/teacher_rating_model.dart';
import 'package:mash/mash/data/remote/models/teacherRating/teacher_rating_questions.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';

abstract class TeacherDataSource{
  Future<List<TeacherRatingEntity>>  getTeacherRatings(TeacherRatingRequest request);
  Future<List<TeacherRatingQuestionsEntity>>  getTeacherRatingQuestions(TeacherRatingQuestionsRequest request);
  Future<void> postTeacherRating(TeacherPostRatingRequest request);
}
@LazySingleton(as:TeacherDataSource )
@injectable
class TeacherDataSourceImpl extends TeacherDataSource{
  final ApiProvider apiProvider;

  TeacherDataSourceImpl(this.apiProvider);

  @override
  Future<List<TeacherRatingEntity>> getTeacherRatings(TeacherRatingRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.teacherRatingList,body: request.toJson());
    return List<TeacherRatingEntity>.from(data["resTable"].map((e)=>TeacherRatingModel.fromJson(e))).toList();
  }

  @override
  Future<List<TeacherRatingQuestionsEntity>> getTeacherRatingQuestions(TeacherRatingQuestionsRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.teacherRatingQuestions,body: request.toJson());
    return List<TeacherRatingQuestionsEntity>.from(data["resTable"].map((e)=>TeacherRatingQuestionsModel.fromJson(e))).toList();
  }

  @override
  Future<void> postTeacherRating(TeacherPostRatingRequest request) async {
    final data = await  apiProvider.post(AppRemoteRoutes.teacherRatingInsert,request.toJson());
  }

}
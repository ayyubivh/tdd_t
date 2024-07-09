import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/teacher_datasource.dart';
import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_questions_request.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';
import 'package:mash/mash/domain/repositories/teacher_repository.dart';
@LazySingleton(as: TeacherRepository)
@injectable
class TeacherRepoImpl extends TeacherRepository{
  final TeacherDataSource dataSource;


  TeacherRepoImpl(this.dataSource);

  @override
  Future<List<TeacherRatingEntity>> getTeacherRatings(TeacherRatingRequest request) {

    return dataSource.getTeacherRatings(request);
  }

  @override
  Future<List<TeacherRatingQuestionsEntity>> getTeacherRatingQuestions(TeacherRatingQuestionsRequest request) {

    return dataSource.getTeacherRatingQuestions(request);
  }

  @override
  Future<void> postTeacherRating(TeacherPostRatingRequest request) {
    return dataSource.postTeacherRating(request);
  }

}
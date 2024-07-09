import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_questions_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';

import '../../data/remote/request/teacher_rating_request.dart';
import '../entities/teacher_rating/teacher_rating_api_entity.dart';

abstract class TeacherRepository{
  Future<List<TeacherRatingEntity>>  getTeacherRatings(TeacherRatingRequest request);
  Future<List<TeacherRatingQuestionsEntity>>  getTeacherRatingQuestions(TeacherRatingQuestionsRequest request);
  Future<void> postTeacherRating(TeacherPostRatingRequest request);
}
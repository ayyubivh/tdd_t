
import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_questions_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';
import 'package:mash/mash/domain/repositories/teacher_repository.dart';

@lazySingleton
@injectable
class GetTeacherRatingQuestionsUseCase extends UseCase<List<TeacherRatingQuestionsEntity>,TeacherRatingQuestionsRequest>{
  final TeacherRepository repository;

  GetTeacherRatingQuestionsUseCase(this.repository);

  @override
  Future<List<TeacherRatingQuestionsEntity>> call(TeacherRatingQuestionsRequest params) {
    return repository.getTeacherRatingQuestions(params);
  }


}

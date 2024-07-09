

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/domain/repositories/teacher_repository.dart';


@lazySingleton
@injectable
class PostTeacherRatingUseCase extends UseCase<void, TeacherPostRatingRequest>{
  final TeacherRepository repository;

  PostTeacherRatingUseCase(this.repository);

  @override
  Future<void> call(TeacherPostRatingRequest params) {
   return repository.postTeacherRating(params);
  }

}
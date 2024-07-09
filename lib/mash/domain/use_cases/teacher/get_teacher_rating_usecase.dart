
import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/teacher_rating_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import 'package:mash/mash/domain/repositories/teacher_repository.dart';
@lazySingleton
@injectable
class GetTeacherRatingUseCase extends UseCase<List<TeacherRatingEntity>,TeacherRatingRequest>{
  final TeacherRepository repository;

  GetTeacherRatingUseCase(this.repository);

  @override
  Future<List<TeacherRatingEntity>> call(TeacherRatingRequest params) {
    return repository.getTeacherRatings(params);
  }


}
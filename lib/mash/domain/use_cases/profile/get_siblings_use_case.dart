import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';
import 'package:mash/mash/domain/repositories/profile_repository.dart';

@injectable
@singleton
class GetSiblingsUseCase extends UseCase<List<StudentEntity>, String> {
  final ProfileRepository repository;

  GetSiblingsUseCase(this.repository);

  @override
  Future<List<StudentEntity>> call(String params) {
    return repository.getSiblings(params);
  }
}

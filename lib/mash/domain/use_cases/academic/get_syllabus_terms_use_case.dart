import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class GetSyllabusTermsUseCase
    implements UseCase<List<SyllabusTermEntity?>, SyllabusTermsRequest> {
  final AcademicRepository academicRepository;

  GetSyllabusTermsUseCase({required this.academicRepository});
  @override
  Future<List<SyllabusTermEntity?>> call(SyllabusTermsRequest params) async {
    return await academicRepository.getSyllabusTerms(params);
  }
}

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@lazySingleton
@injectable
class GetSyllabusUseCase
    implements UseCase<List<SyllabusEntity?>, SyllabusRequest> {
  final AcademicRepository academicRepository;

  GetSyllabusUseCase({required this.academicRepository});
  @override
  Future<List<SyllabusEntity?>> call(SyllabusRequest params) async {
    final result = await academicRepository.getSyllabus(params);
    return result;
  }
}

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@lazySingleton
@lazySingleton
class GetAcademicSubjectUseCase
    implements UseCase<List<AcademicSubjectEntity?>, ClassAndCompIdRequest> {
  final AcademicRepository academicRepostory;

  GetAcademicSubjectUseCase({required this.academicRepostory});
  @override
  Future<List<AcademicSubjectEntity?>> call(ClassAndCompIdRequest params) {
    return academicRepostory.getAcademicSubjects(params);
  }
}

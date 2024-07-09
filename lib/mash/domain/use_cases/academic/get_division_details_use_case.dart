import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/division_details_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@lazySingleton
@lazySingleton
class GetDivisionDetailsUseCase
    implements
        UseCase<List<DivisionEntityDetailsEnitity?>, ClassAndCompIdRequest> {
  final AcademicRepository academicRepostory;

  GetDivisionDetailsUseCase({required this.academicRepostory});
  @override
  Future<List<DivisionEntityDetailsEnitity?>> call(
      ClassAndCompIdRequest params) {
    return academicRepostory.getDivisionDetails(params);
  }
}

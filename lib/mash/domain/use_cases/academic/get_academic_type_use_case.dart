import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

import '../../../data/remote/request/di_type_request.dart';

@lazySingleton
@injectable
class GetAcademicTypesUseCase
    extends UseCase<List<AcademicTypeEntity>, DlTypeRequest> {
  final AcademicRepository repository;

  GetAcademicTypesUseCase(this.repository);

  @override
  Future<List<AcademicTypeEntity>> call(DlTypeRequest params) {
    return repository.getAcademicTypes(params);
  }
}

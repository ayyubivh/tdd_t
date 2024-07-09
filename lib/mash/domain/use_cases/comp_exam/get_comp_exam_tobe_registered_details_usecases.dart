import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/comp_exam_repository.dart';

import '../../../data/remote/request/comp_exam_toberegistered_detail_request.dart';
import '../../entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';

@injectable
@lazySingleton
class GetCompExamTobeRegisteredDetailsUsecase extends UseCase<
    CompExamTobeRegistedEntityDetailsEntity,
    CompExamToberegisteredDetailsRequest> {
  final CompExamRepository repository;

  GetCompExamTobeRegisteredDetailsUsecase(this.repository);
  @override
  Future<CompExamTobeRegistedEntityDetailsEntity> call(
      CompExamToberegisteredDetailsRequest params) {
    return repository.getCompExamTobeRegisteredDetais(params);
  }
}

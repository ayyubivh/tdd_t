import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/comp_exam_repository.dart';

import '../../../data/remote/request/comp_exam_toberegistered_request.dart';
import '../../entities/comp_exam/comp_exam_tobe_registered_entity.dart';

@injectable
@lazySingleton
class GetCompExamTobeRegisteredUsecase extends UseCase<
    List<CompExamTobeRegistedEntity>, CompExamToberegisteredRequest> {
  final CompExamRepository repository;

  GetCompExamTobeRegisteredUsecase(this.repository);
  @override
  Future<List<CompExamTobeRegistedEntity>> call(
      CompExamToberegisteredRequest params) {
    return repository.getCompExamTobeRegistered(params);
  }
}

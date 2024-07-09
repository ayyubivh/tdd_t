import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/submit_comp_exam_toberegistered_request.dart';
import 'package:mash/mash/domain/repositories/comp_exam_repository.dart';

@injectable
@lazySingleton
class SubmitCompExamTobeRegisteredUsecase
    extends UseCase<int, SubmitCompExamTobeRegiteredRequest> {
  final CompExamRepository repository;

  SubmitCompExamTobeRegisteredUsecase(this.repository);
  @override
  Future<int> call(SubmitCompExamTobeRegiteredRequest params) {
    return repository.submitCompExamTobeRegistered(params);
  }
}

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/tc_apply_request.dart';
import 'package:mash/mash/domain/repositories/tc_repository.dart';

@injectable
class ApplyTcUsecase extends UseCase<int, TcApplyRequest> {
  final TcRepository repository;

  ApplyTcUsecase(this.repository);

  @override
  Future<int> call(TcApplyRequest params) {
    return repository.applyTc(params);
  }
}

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/tc_repository.dart';

import '../../entities/tc/tc_reason_entity.dart';

@injectable
class GetTcReasonUsecase extends UseCase<List<TcReasonEntity>, NoParams> {
  final TcRepository repository;

  GetTcReasonUsecase(this.repository);

  @override
  Future<List<TcReasonEntity>> call(NoParams params) {
    return repository.getTcReason();
  }
}

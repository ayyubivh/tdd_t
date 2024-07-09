import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/tc_cancel_request.dart';
import 'package:mash/mash/domain/repositories/tc_repository.dart';

@injectable
class CancelTcUsecase extends UseCase<int, TcCancelRequest> {
  final TcRepository repository;

  CancelTcUsecase(this.repository);

  @override
  Future<int> call(TcCancelRequest params) {
    return repository.cancelTc(params);
  }
}

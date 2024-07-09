import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/tc_status_request.dart';
import 'package:mash/mash/domain/repositories/tc_repository.dart';
import 'package:mash/mash/domain/entities/tc/tc_status_entity.dart';

@injectable
class GetTcStatusUsecase
    extends UseCase<List<TcStatusEntity>, TcStatusRequest> {
  final TcRepository repository;

  GetTcStatusUsecase(this.repository);

  @override
  Future<List<TcStatusEntity>> call(TcStatusRequest params) {
    return repository.getTcStatus(params);
  }
}





import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/transfer_request_type_request.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';


import '../../repositories/id_request_repository.dart';

@lazySingleton
@injectable
class GetIdRequestTypeUseCase extends UseCase<List<IdRequestEntity>,IdRequest> {
  final IdRequestRepository repository;

  GetIdRequestTypeUseCase(this.repository);

  @override
  Future<List<IdRequestEntity>> call(
      IdRequest params) {
    return repository.getIdRequestType(params);
  }
}
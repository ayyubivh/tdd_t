



import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/post_id_request.dart';
import 'package:mash/mash/domain/repositories/id_request_repository.dart';

import '../../../../core/usecase.dart';

@lazySingleton
@injectable
class PostIdRequestUseCase extends UseCase<void, PostIdRequest>{
  final IdRequestRepository repository;

  PostIdRequestUseCase(this.repository);

  @override
  Future<void> call(PostIdRequest params) {
    return repository.postIdRequest(params);
  }

}
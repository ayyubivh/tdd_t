import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

import '../../entities/auth/auth_response_entity.dart';

@lazySingleton
@injectable
class GetUserInfoUseCase extends UseCase<LoginResTableEntity?, NoParams> {
  final AuthRepository repository;

  GetUserInfoUseCase(this.repository);

  @override
  Future<LoginResTableEntity?> call(NoParams params) {
    return repository.getUserInfo();
  }
}

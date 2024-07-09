import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@injectable
@singleton
class GetUsersUseCase extends StreamUseCase<List<LoginResTableEntity>, String> {
  final ChatRepository repository;

  GetUsersUseCase(this.repository);

  @override
  Stream<List<LoginResTableEntity>> call(String params) {
    return repository.getUsers(params);
  }
}

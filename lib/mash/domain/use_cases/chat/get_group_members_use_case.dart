import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@injectable
@singleton
class GetUserMembersUseCase
    extends UseCase<List<LoginResTableEntity>, List<String>> {
  final ChatRepository repository;

  GetUserMembersUseCase(this.repository);

  @override
  Future<List<LoginResTableEntity>> call(List<String> params) {
    return repository.getUsersOfGroups(params);
  }
}

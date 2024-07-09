import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@injectable
@singleton
class GetChatUseCase extends StreamUseCase<List<ChatMessageModel>, String> {
  final ChatRepository repository;

  GetChatUseCase(this.repository);

  @override
  Stream<List<ChatMessageModel>> call(String params) {
    return repository.getChats(params);
  }
}

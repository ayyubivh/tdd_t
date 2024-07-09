import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@singleton
@injectable
class SendMessageUserCase extends UseCase<void, ChatMessageModel> {
  final ChatRepository repository;

  SendMessageUserCase(this.repository);

  @override
  Future<void> call(ChatMessageModel params) {
    return repository.sendMessage(params);
  }
}

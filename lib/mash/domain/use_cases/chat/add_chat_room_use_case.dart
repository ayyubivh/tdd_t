import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@injectable
@singleton
class AddChatRoomUseCase extends UseCase<ChatRoomModel, ChatRoomModel> {
  final ChatRepository repository;

  AddChatRoomUseCase(this.repository);

  @override
  Future<ChatRoomModel> call(ChatRoomModel params) {
    return repository.addChatRoom(params);
  }
}

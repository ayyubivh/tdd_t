import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@singleton
@injectable
class GetChatRoomsUseCase extends StreamUseCase<List<ChatRoomModel>, NoParams> {
  final ChatRepository repository;

  GetChatRoomsUseCase(this.repository);

  @override
  Stream<List<ChatRoomModel>> call(NoParams params) {
    return repository.getChatRooms();
  }
}

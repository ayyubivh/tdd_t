import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@injectable
@singleton
class UpdateRoomUseCase extends UseCase<void, ChatRoomModel> {
  final ChatRepository repository;

  UpdateRoomUseCase(this.repository);

  @override
  Future<void> call(ChatRoomModel params) {
    return repository.updateRoom(params);
  }
}

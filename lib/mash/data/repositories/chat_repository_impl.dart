import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/chat_data_soruce.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
@injectable
class ChatRepositoryImpl extends ChatRepository {
  final ChatDataSource dataSource;

  ChatRepositoryImpl(this.dataSource);

  @override
  Future<ChatRoomModel> addChatRoom(ChatRoomModel roomModel) {
    return dataSource.addChatRoom(roomModel);
  }

  @override
  Stream<List<ChatMessageModel>> getChats(String roomId) {
    return dataSource.getChatRoomMessages(roomId);
  }

  @override
  Stream<List<LoginResTableEntity>> getUsers(String role) {
    return dataSource.getUsers(role);
  }

  @override
  Stream<List<ChatRoomModel>> getChatRooms() {
    return dataSource.getChatRooms();
  }

  @override
  Future<void> sendMessage(ChatMessageModel chatRoom) {
    return dataSource.sendMessage(chatRoom);
  }

  @override
  Future<List<LoginResTableEntity>> getUsersOfGroups(List<String> members) {
    return dataSource.getUsersOfGroups(members);
  }

  @override
  Future<void> updateMessage(ChatMessageModel message) {
    return dataSource.updateMessage(message);
  }

  @override
  Future<void> updateRoom(ChatRoomModel room) {
    return dataSource.updateRoom(room);
  }
}

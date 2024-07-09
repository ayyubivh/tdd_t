part of 'chat_bloc.dart';

@Freezed(equal: false)
class ChatState with _$ChatState {
  const factory ChatState(
      {ChatRoomModel? selectedChatRoom,
      ResponseClassify<List<LoginResTableEntity>>? selectedMembers,
      Stream<List<ChatMessageModel>>? selectedChatRoomMessages,
      Stream<List<LoginResTableEntity>>? getUsers,
      Stream<List<ChatRoomModel>>? getChatRooms,
      LoginResTableEntity? currentUser,
      ChatMessageModel? selectedMessagesByUser,
      ResponseClassify<ChatRoomModel>? addGroupResponse,
      UserTypes? selectedType}) = _ChatState;
  factory ChatState.initial() => const ChatState();
  factory ChatState.addGroupInit() => ChatState(
      selectedChatRoom: ChatRoomModel(
          id: const Uuid().v1(),
          name: '',
          admins: [],
          members: [],
          isGroupChat: true));
  factory ChatState.addGroup({required ChatRoomModel roomModel}) =>
      ChatState(selectedChatRoom: roomModel);
}

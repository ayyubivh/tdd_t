part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getChatRooms() = _GetRooms;
  const factory ChatEvent.updateRoom({required ChatRoomModel model}) =
      _UpdateRoom;
  const factory ChatEvent.updateMessage({required ChatMessageModel model}) =
      _UpdateMessage;
  const factory ChatEvent.selectMessage({required ChatMessageModel message}) =
      _SelectMessage;

  const factory ChatEvent.getUsers({required UserTypes selectedUserType}) =
      _GetUsers;
  const factory ChatEvent.getMembersOfGroup() = _GetMembersOfGroup;
  const factory ChatEvent.createGroupInit() = _CreateGroupInit;
  const factory ChatEvent.getMessages({required ChatRoomModel room}) =
      _GetMessages;
  const factory ChatEvent.sendMessage({required ChatMessageModel message}) =
      _SendMessage;
  // const factory ChatEvent.getChatRooms() = _GetChatRooms;
  const factory ChatEvent.addAdmins({required String userId}) = _AddAdmins;
  const factory ChatEvent.selectUser({required LoginResTableEntity user}) =
      _SelectUser;
  const factory ChatEvent.changeUserFilter({required UserTypes selectedUser}) =
      _ChangeUserFilter;
  const factory ChatEvent.addChatRooms(
      {required String chatRoomName,
      @Default(true) bool? isGroupChat,
      String? icon,
      required BuildContext context}) = _AddRooms;
}

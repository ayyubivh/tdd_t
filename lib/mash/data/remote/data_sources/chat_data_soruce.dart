import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mash/core/firebase_database.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../../../../core/custom_exception.dart';
import '../../../../core/hive_service.dart';
import '../models/chat/chat_message_model.dart';

abstract class ChatDataSource {
  Future<ChatRoomModel> addChatRoom(ChatRoomModel chatRoom);
  Future<void> sendMessage(ChatMessageModel chatRoom);
  Stream<List<ChatRoomModel>> getChatRooms();
  Future<void> updateRoom(ChatRoomModel room);
  Future<void> updateMessage(ChatMessageModel message);
  Stream<List<ChatMessageModel>> getChatRoomMessages(String chatRoomId);
  Stream<List<LoginResTableEntity>> getUsers(String role);
  Future<List<LoginResTableEntity>> getUsersOfGroups(List<String> members);
}

@LazySingleton(as: ChatDataSource)
@injectable
class ChatDataSourceImpl extends ChatDataSource {
  final FirebaseDatabaseMethods firebaseDatabase;
  final HiveService hiveService;

  ChatDataSourceImpl(this.firebaseDatabase, this.hiveService);

  @override
  Future<ChatRoomModel> addChatRoom(ChatRoomModel chatRoom) async {
    prettyPrint(" init ${chatRoom.members.toString()}");
    List<LoginLocalModel> user =
        await hiveService.getBoxes<LoginLocalModel>(LocalStorageNames.userInfo);
    if (user.isEmpty) {
      throw UnauthorisedException();
    }

    chatRoom.owner = user.first.usrId;
    // if (!(chatRoom.members!.contains(chatRoom.owner) == true)) {
    chatRoom.members?.add(chatRoom.owner ?? "");
    prettyPrint(chatRoom.members.toString());
    // }

    chatRoom.members?.removeWhere((element) => element == "");
    return await firebaseDatabase.addChatRoom(
      chatRoom,
    );
  }

  @override
  Stream<List<ChatMessageModel>> getChatRoomMessages(String chatRoomId) {
    return firebaseDatabase.getChats(chatRoomId);
  }

  @override
  Stream<List<LoginResTableEntity>> getUsers(String role) {
    return firebaseDatabase.getUsers(role);
  }

  @override
  Stream<List<ChatRoomModel>> getChatRooms() {
    StreamController<List<ChatRoomModel>> controller = StreamController();

    hiveService
        .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo)
        .then((user) {
      prettyPrint("user $user");
      if (user.isEmpty) {
        controller
            .addError(UnauthorisedException("User not found in local db"));
      } else {
        prettyPrint("getting chats of ${user.first.usrId}");
        firebaseDatabase.getUserChats(user.first.usrId).listen((chats) {
          controller.add(chats);
        }, onError: (error) {
          controller.addError(error);
        });
      }
    }).catchError((error) {
      controller.addError(error);
    });

    return controller.stream;
  }

  @override
  Future<void> sendMessage(ChatMessageModel chatRoom) async {
    await firebaseDatabase.addMessage(chatRoom.roomId, chatRoom.toMap());
  }

  @override
  Future<List<LoginResTableEntity>> getUsersOfGroups(
      List<String> members) async {
    final data = await firebaseDatabase.getMembers(members);
    return data.docs.map((e) => LoginResTableModel.fromJson(e.data())).toList();
  }

  @override
  Future<void> updateMessage(ChatMessageModel message) {
    return firebaseDatabase.updateMessage(message);
  }

  @override
  Future<void> updateRoom(ChatRoomModel room) {
    return firebaseDatabase.updateRoom(room);
  }
}

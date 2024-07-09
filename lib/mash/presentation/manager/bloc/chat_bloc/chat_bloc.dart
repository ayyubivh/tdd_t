import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/use_cases/chat/add_chat_room_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_chat_rooms_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_chat_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_group_members_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_users_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/send_message_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/update_message_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/update_room_use_case.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:uuid/uuid.dart';

import '../../../../domain/entities/auth/auth_response_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.initial()) {
    on<_CreateGroupInit>(_createGroupInit);
    on<_GetRooms>(_getRooms);
    on<_ChangeUserFilter>(_changeUserFilter);
    on<_SelectUser>(_selectUser);
    on<_AddAdmins>(_addAdmin);
    on<_AddRooms>(_createChatRoom);
    on<_SendMessage>(_sendMessage);
    on<_GetMessages>(_getMessage);
    on<_GetUsers>(_getUsers);
    on<_GetMembersOfGroup>(_getMembersOfGroup);
    on<_SelectMessage>(_selectMessage);
    on<_UpdateMessage>(_updateMessage);
  }
  _updateMessage(_UpdateMessage event, emit) {
    // updateMessageUseCase.call(params)
  }
  _selectMessage(_SelectMessage event, emit) {
    // List<ChatMessageModel> selUsers = state.selectedMessagesByUser.toList();

    HapticFeedback.selectionClick();
    emit(state.copyWith(selectedMessagesByUser: event.message));
  }

  _getUsers(_GetUsers event, emit) {
    emit(state.copyWith(
      selectedType: event.selectedUserType,
      getUsers: getUsersUseCase.call("${event.selectedUserType.index + 1}"),
    ));
  }

  _getMembersOfGroup(_GetMembersOfGroup event, emit) async {
    emit(state.copyWith(selectedMembers: ResponseClassify.loading()));
    try {
      emit(state.copyWith(
          selectedMembers: ResponseClassify.completed(
              await getGroupMembersDetails
                  .call(state.selectedChatRoom?.members ?? []))));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(
          selectedMembers: ResponseClassify.error(e.toString())));
    }
  }

  _getMessage(_GetMessages event, emit) {
    var userChats = getUserChatsUseCase.call(event.room.id);

    emit(state.copyWith(
        selectedChatRoomMessages: userChats,
        selectedChatRoom: event.room,
        selectedMessagesByUser: null));
  }

  _sendMessage(_SendMessage event, emit) {
    sendMessageUseCase.call(event.message);
  }

  _createChatRoom(_AddRooms event, emit) async {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    selectedChatRoom?.isGroupChat = event.isGroupChat ?? false;
    if (event.isGroupChat == false) {
      selectedChatRoom?.icon = event.icon;
    }
    selectedChatRoom?.name = event.chatRoomName;

    ///validating data's

    if (selectedChatRoom?.name.isEmpty == true) {
      emit(state.copyWith(
          addGroupResponse: ResponseClassify.error("Enter Group name!")));
    } else if (selectedChatRoom?.members?.isEmpty == true) {
      emit(state.copyWith(
          addGroupResponse:
              ResponseClassify.error("At-least add 1 member to continue!")));
    } else {
      emit(state.copyWith(addGroupResponse: ResponseClassify.loading()));

      try {
        emit(state.copyWith(
            addGroupResponse: ResponseClassify.completed(
                await createChatRoomUseCase.call(selectedChatRoom!))));
        GoRouter.of(event.context).goNamed(AppPages.messageScreen,
            extra: state.addGroupResponse?.data);
      } catch (e, stacktrace) {
        prettyPrint(e.toString());
        print(stacktrace);
        emit(state.copyWith(
            addGroupResponse: ResponseClassify.error(e.toString())));
      }
    }
    if (state.addGroupResponse?.status == Status.ERROR) {
      ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text(state.addGroupResponse?.error ?? "")));
    }
  }

  void _addAdmin(_AddAdmins event, emit) {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    List<String>? admins = selectedChatRoom?.admins?.toList();
    admins ??= [];
    if (admins.contains(event.userId) == true) {
      admins.remove(event.userId);
    } else {
      admins.add(event.userId);
    }
    selectedChatRoom?.admins = admins;
    prettyPrint("admins : ${selectedChatRoom?.admins}");

    emit(state.copyWith(selectedChatRoom: selectedChatRoom));
  }

  _selectUser(_SelectUser event, emit) {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    List<String>? users = selectedChatRoom?.members?.toList();
    users ??= [];
    if (users.contains(event.user.usrId) == true) {
      users.remove(event.user.usrId);
    } else {
      users.add(event.user.usrId ?? "");
    }
    selectedChatRoom?.members = users;

    emit(state.copyWith(selectedChatRoom: selectedChatRoom));
  }

  _changeUserFilter(_ChangeUserFilter event, emit) {
    emit(state.copyWith(
        getUsers: getUsersUseCase.call("${event.selectedUser.index + 1}"),
        selectedType: event.selectedUser));
  }

  _getRooms(_GetRooms event, emit) async {
    // if (state.getChatRooms != null) {
    LoginResTableEntity? user;
    if (state.currentUser == null) {
      user = await getCurrentUser.call(NoParams());
    } else {
      user = state.currentUser;
    }
    emit(state.copyWith(
        currentUser: user,
        getChatRooms: getChatRoomsUseCase.call(NoParams()),
        selectedType: null,
        selectedChatRoom: null));
    // }
  }

  _createGroupInit(_CreateGroupInit event, emit) {
    emit(state.copyWith(
        selectedType: UserTypes.student,
        getUsers: getUsersUseCase.call("${UserTypes.student.index + 1}"),
        selectedChatRoom: ChatRoomModel(
            id: const Uuid().v1(),
            name: '',
            admins: const [],
            members: const [],
            isGroupChat: true)));
  }

  /////use cases

  final getChatRoomsUseCase = getIt<GetChatRoomsUseCase>();
  final getUserChatsUseCase = getIt<GetChatUseCase>();
  final createChatRoomUseCase = getIt<AddChatRoomUseCase>();
  final getUsersUseCase = getIt<GetUsersUseCase>();
  final sendMessageUseCase = getIt<SendMessageUserCase>();
  final getGroupMembersDetails = getIt<GetUserMembersUseCase>();
  final getCurrentUser = getIt<GetUserInfoUseCase>();
  final updateMessageUseCase = getIt<UpdateMessageUseCase>();
  final updateRoomUseCase = getIt<UpdateRoomUseCase>();

  static ChatBloc get(context) => BlocProvider.of(context);
}

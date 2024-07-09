// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetRoomsImplCopyWith<$Res> {
  factory _$$GetRoomsImplCopyWith(
          _$GetRoomsImpl value, $Res Function(_$GetRoomsImpl) then) =
      __$$GetRoomsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRoomsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetRoomsImpl>
    implements _$$GetRoomsImplCopyWith<$Res> {
  __$$GetRoomsImplCopyWithImpl(
      _$GetRoomsImpl _value, $Res Function(_$GetRoomsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoomsImpl implements _GetRooms {
  const _$GetRoomsImpl();

  @override
  String toString() {
    return 'ChatEvent.getChatRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoomsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return getChatRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return getChatRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (getChatRooms != null) {
      return getChatRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return getChatRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return getChatRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (getChatRooms != null) {
      return getChatRooms(this);
    }
    return orElse();
  }
}

abstract class _GetRooms implements ChatEvent {
  const factory _GetRooms() = _$GetRoomsImpl;
}

/// @nodoc
abstract class _$$UpdateRoomImplCopyWith<$Res> {
  factory _$$UpdateRoomImplCopyWith(
          _$UpdateRoomImpl value, $Res Function(_$UpdateRoomImpl) then) =
      __$$UpdateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatRoomModel model});
}

/// @nodoc
class __$$UpdateRoomImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateRoomImpl>
    implements _$$UpdateRoomImplCopyWith<$Res> {
  __$$UpdateRoomImplCopyWithImpl(
      _$UpdateRoomImpl _value, $Res Function(_$UpdateRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UpdateRoomImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatRoomModel,
    ));
  }
}

/// @nodoc

class _$UpdateRoomImpl implements _UpdateRoom {
  const _$UpdateRoomImpl({required this.model});

  @override
  final ChatRoomModel model;

  @override
  String toString() {
    return 'ChatEvent.updateRoom(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRoomImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRoomImplCopyWith<_$UpdateRoomImpl> get copyWith =>
      __$$UpdateRoomImplCopyWithImpl<_$UpdateRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return updateRoom(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return updateRoom?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }
}

abstract class _UpdateRoom implements ChatEvent {
  const factory _UpdateRoom({required final ChatRoomModel model}) =
      _$UpdateRoomImpl;

  ChatRoomModel get model;
  @JsonKey(ignore: true)
  _$$UpdateRoomImplCopyWith<_$UpdateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMessageImplCopyWith<$Res> {
  factory _$$UpdateMessageImplCopyWith(
          _$UpdateMessageImpl value, $Res Function(_$UpdateMessageImpl) then) =
      __$$UpdateMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageModel model});
}

/// @nodoc
class __$$UpdateMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateMessageImpl>
    implements _$$UpdateMessageImplCopyWith<$Res> {
  __$$UpdateMessageImplCopyWithImpl(
      _$UpdateMessageImpl _value, $Res Function(_$UpdateMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UpdateMessageImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel,
    ));
  }
}

/// @nodoc

class _$UpdateMessageImpl implements _UpdateMessage {
  const _$UpdateMessageImpl({required this.model});

  @override
  final ChatMessageModel model;

  @override
  String toString() {
    return 'ChatEvent.updateMessage(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      __$$UpdateMessageImplCopyWithImpl<_$UpdateMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return updateMessage(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return updateMessage?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return updateMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return updateMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessage implements ChatEvent {
  const factory _UpdateMessage({required final ChatMessageModel model}) =
      _$UpdateMessageImpl;

  ChatMessageModel get model;
  @JsonKey(ignore: true)
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectMessageImplCopyWith<$Res> {
  factory _$$SelectMessageImplCopyWith(
          _$SelectMessageImpl value, $Res Function(_$SelectMessageImpl) then) =
      __$$SelectMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageModel message});
}

/// @nodoc
class __$$SelectMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectMessageImpl>
    implements _$$SelectMessageImplCopyWith<$Res> {
  __$$SelectMessageImplCopyWithImpl(
      _$SelectMessageImpl _value, $Res Function(_$SelectMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SelectMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel,
    ));
  }
}

/// @nodoc

class _$SelectMessageImpl implements _SelectMessage {
  const _$SelectMessageImpl({required this.message});

  @override
  final ChatMessageModel message;

  @override
  String toString() {
    return 'ChatEvent.selectMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMessageImplCopyWith<_$SelectMessageImpl> get copyWith =>
      __$$SelectMessageImplCopyWithImpl<_$SelectMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return selectMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return selectMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (selectMessage != null) {
      return selectMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return selectMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return selectMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (selectMessage != null) {
      return selectMessage(this);
    }
    return orElse();
  }
}

abstract class _SelectMessage implements ChatEvent {
  const factory _SelectMessage({required final ChatMessageModel message}) =
      _$SelectMessageImpl;

  ChatMessageModel get message;
  @JsonKey(ignore: true)
  _$$SelectMessageImplCopyWith<_$SelectMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserTypes selectedUserType});
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUserType = null,
  }) {
    return _then(_$GetUsersImpl(
      selectedUserType: null == selectedUserType
          ? _value.selectedUserType
          : selectedUserType // ignore: cast_nullable_to_non_nullable
              as UserTypes,
    ));
  }
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl({required this.selectedUserType});

  @override
  final UserTypes selectedUserType;

  @override
  String toString() {
    return 'ChatEvent.getUsers(selectedUserType: $selectedUserType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersImpl &&
            (identical(other.selectedUserType, selectedUserType) ||
                other.selectedUserType == selectedUserType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUserType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      __$$GetUsersImplCopyWithImpl<_$GetUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return getUsers(selectedUserType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return getUsers?.call(selectedUserType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(selectedUserType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements ChatEvent {
  const factory _GetUsers({required final UserTypes selectedUserType}) =
      _$GetUsersImpl;

  UserTypes get selectedUserType;
  @JsonKey(ignore: true)
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMembersOfGroupImplCopyWith<$Res> {
  factory _$$GetMembersOfGroupImplCopyWith(_$GetMembersOfGroupImpl value,
          $Res Function(_$GetMembersOfGroupImpl) then) =
      __$$GetMembersOfGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMembersOfGroupImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMembersOfGroupImpl>
    implements _$$GetMembersOfGroupImplCopyWith<$Res> {
  __$$GetMembersOfGroupImplCopyWithImpl(_$GetMembersOfGroupImpl _value,
      $Res Function(_$GetMembersOfGroupImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMembersOfGroupImpl implements _GetMembersOfGroup {
  const _$GetMembersOfGroupImpl();

  @override
  String toString() {
    return 'ChatEvent.getMembersOfGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMembersOfGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return getMembersOfGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return getMembersOfGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (getMembersOfGroup != null) {
      return getMembersOfGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return getMembersOfGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return getMembersOfGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (getMembersOfGroup != null) {
      return getMembersOfGroup(this);
    }
    return orElse();
  }
}

abstract class _GetMembersOfGroup implements ChatEvent {
  const factory _GetMembersOfGroup() = _$GetMembersOfGroupImpl;
}

/// @nodoc
abstract class _$$CreateGroupInitImplCopyWith<$Res> {
  factory _$$CreateGroupInitImplCopyWith(_$CreateGroupInitImpl value,
          $Res Function(_$CreateGroupInitImpl) then) =
      __$$CreateGroupInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateGroupInitImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$CreateGroupInitImpl>
    implements _$$CreateGroupInitImplCopyWith<$Res> {
  __$$CreateGroupInitImplCopyWithImpl(
      _$CreateGroupInitImpl _value, $Res Function(_$CreateGroupInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateGroupInitImpl implements _CreateGroupInit {
  const _$CreateGroupInitImpl();

  @override
  String toString() {
    return 'ChatEvent.createGroupInit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateGroupInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return createGroupInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return createGroupInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (createGroupInit != null) {
      return createGroupInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return createGroupInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return createGroupInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (createGroupInit != null) {
      return createGroupInit(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupInit implements ChatEvent {
  const factory _CreateGroupInit() = _$CreateGroupInitImpl;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatRoomModel room});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$GetMessagesImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoomModel,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl({required this.room});

  @override
  final ChatRoomModel room;

  @override
  String toString() {
    return 'ChatEvent.getMessages(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return getMessages(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return getMessages?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatEvent {
  const factory _GetMessages({required final ChatRoomModel room}) =
      _$GetMessagesImpl;

  ChatRoomModel get room;
  @JsonKey(ignore: true)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageModel message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({required this.message});

  @override
  final ChatMessageModel message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage({required final ChatMessageModel message}) =
      _$SendMessageImpl;

  ChatMessageModel get message;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAdminsImplCopyWith<$Res> {
  factory _$$AddAdminsImplCopyWith(
          _$AddAdminsImpl value, $Res Function(_$AddAdminsImpl) then) =
      __$$AddAdminsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$AddAdminsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddAdminsImpl>
    implements _$$AddAdminsImplCopyWith<$Res> {
  __$$AddAdminsImplCopyWithImpl(
      _$AddAdminsImpl _value, $Res Function(_$AddAdminsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AddAdminsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAdminsImpl implements _AddAdmins {
  const _$AddAdminsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatEvent.addAdmins(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAdminsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAdminsImplCopyWith<_$AddAdminsImpl> get copyWith =>
      __$$AddAdminsImplCopyWithImpl<_$AddAdminsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return addAdmins(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return addAdmins?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (addAdmins != null) {
      return addAdmins(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return addAdmins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return addAdmins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (addAdmins != null) {
      return addAdmins(this);
    }
    return orElse();
  }
}

abstract class _AddAdmins implements ChatEvent {
  const factory _AddAdmins({required final String userId}) = _$AddAdminsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$AddAdminsImplCopyWith<_$AddAdminsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectUserImplCopyWith<$Res> {
  factory _$$SelectUserImplCopyWith(
          _$SelectUserImpl value, $Res Function(_$SelectUserImpl) then) =
      __$$SelectUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResTableEntity user});
}

/// @nodoc
class __$$SelectUserImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectUserImpl>
    implements _$$SelectUserImplCopyWith<$Res> {
  __$$SelectUserImplCopyWithImpl(
      _$SelectUserImpl _value, $Res Function(_$SelectUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SelectUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginResTableEntity,
    ));
  }
}

/// @nodoc

class _$SelectUserImpl implements _SelectUser {
  const _$SelectUserImpl({required this.user});

  @override
  final LoginResTableEntity user;

  @override
  String toString() {
    return 'ChatEvent.selectUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
      __$$SelectUserImplCopyWithImpl<_$SelectUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return selectUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return selectUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return selectUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return selectUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(this);
    }
    return orElse();
  }
}

abstract class _SelectUser implements ChatEvent {
  const factory _SelectUser({required final LoginResTableEntity user}) =
      _$SelectUserImpl;

  LoginResTableEntity get user;
  @JsonKey(ignore: true)
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUserFilterImplCopyWith<$Res> {
  factory _$$ChangeUserFilterImplCopyWith(_$ChangeUserFilterImpl value,
          $Res Function(_$ChangeUserFilterImpl) then) =
      __$$ChangeUserFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserTypes selectedUser});
}

/// @nodoc
class __$$ChangeUserFilterImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChangeUserFilterImpl>
    implements _$$ChangeUserFilterImplCopyWith<$Res> {
  __$$ChangeUserFilterImplCopyWithImpl(_$ChangeUserFilterImpl _value,
      $Res Function(_$ChangeUserFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUser = null,
  }) {
    return _then(_$ChangeUserFilterImpl(
      selectedUser: null == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserTypes,
    ));
  }
}

/// @nodoc

class _$ChangeUserFilterImpl implements _ChangeUserFilter {
  const _$ChangeUserFilterImpl({required this.selectedUser});

  @override
  final UserTypes selectedUser;

  @override
  String toString() {
    return 'ChatEvent.changeUserFilter(selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserFilterImpl &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUserFilterImplCopyWith<_$ChangeUserFilterImpl> get copyWith =>
      __$$ChangeUserFilterImplCopyWithImpl<_$ChangeUserFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return changeUserFilter(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return changeUserFilter?.call(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (changeUserFilter != null) {
      return changeUserFilter(selectedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return changeUserFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return changeUserFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (changeUserFilter != null) {
      return changeUserFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserFilter implements ChatEvent {
  const factory _ChangeUserFilter({required final UserTypes selectedUser}) =
      _$ChangeUserFilterImpl;

  UserTypes get selectedUser;
  @JsonKey(ignore: true)
  _$$ChangeUserFilterImplCopyWith<_$ChangeUserFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRoomsImplCopyWith<$Res> {
  factory _$$AddRoomsImplCopyWith(
          _$AddRoomsImpl value, $Res Function(_$AddRoomsImpl) then) =
      __$$AddRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatRoomName,
      bool? isGroupChat,
      String? icon,
      BuildContext context});
}

/// @nodoc
class __$$AddRoomsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddRoomsImpl>
    implements _$$AddRoomsImplCopyWith<$Res> {
  __$$AddRoomsImplCopyWithImpl(
      _$AddRoomsImpl _value, $Res Function(_$AddRoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomName = null,
    Object? isGroupChat = freezed,
    Object? icon = freezed,
    Object? context = null,
  }) {
    return _then(_$AddRoomsImpl(
      chatRoomName: null == chatRoomName
          ? _value.chatRoomName
          : chatRoomName // ignore: cast_nullable_to_non_nullable
              as String,
      isGroupChat: freezed == isGroupChat
          ? _value.isGroupChat
          : isGroupChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddRoomsImpl implements _AddRooms {
  const _$AddRoomsImpl(
      {required this.chatRoomName,
      this.isGroupChat = true,
      this.icon,
      required this.context});

  @override
  final String chatRoomName;
  @override
  @JsonKey()
  final bool? isGroupChat;
  @override
  final String? icon;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.addChatRooms(chatRoomName: $chatRoomName, isGroupChat: $isGroupChat, icon: $icon, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRoomsImpl &&
            (identical(other.chatRoomName, chatRoomName) ||
                other.chatRoomName == chatRoomName) &&
            (identical(other.isGroupChat, isGroupChat) ||
                other.isGroupChat == isGroupChat) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatRoomName, isGroupChat, icon, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRoomsImplCopyWith<_$AddRoomsImpl> get copyWith =>
      __$$AddRoomsImplCopyWithImpl<_$AddRoomsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChatRooms,
    required TResult Function(ChatRoomModel model) updateRoom,
    required TResult Function(ChatMessageModel model) updateMessage,
    required TResult Function(ChatMessageModel message) selectMessage,
    required TResult Function(UserTypes selectedUserType) getUsers,
    required TResult Function() getMembersOfGroup,
    required TResult Function() createGroupInit,
    required TResult Function(ChatRoomModel room) getMessages,
    required TResult Function(ChatMessageModel message) sendMessage,
    required TResult Function(String userId) addAdmins,
    required TResult Function(LoginResTableEntity user) selectUser,
    required TResult Function(UserTypes selectedUser) changeUserFilter,
    required TResult Function(String chatRoomName, bool? isGroupChat,
            String? icon, BuildContext context)
        addChatRooms,
  }) {
    return addChatRooms(chatRoomName, isGroupChat, icon, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChatRooms,
    TResult? Function(ChatRoomModel model)? updateRoom,
    TResult? Function(ChatMessageModel model)? updateMessage,
    TResult? Function(ChatMessageModel message)? selectMessage,
    TResult? Function(UserTypes selectedUserType)? getUsers,
    TResult? Function()? getMembersOfGroup,
    TResult? Function()? createGroupInit,
    TResult? Function(ChatRoomModel room)? getMessages,
    TResult? Function(ChatMessageModel message)? sendMessage,
    TResult? Function(String userId)? addAdmins,
    TResult? Function(LoginResTableEntity user)? selectUser,
    TResult? Function(UserTypes selectedUser)? changeUserFilter,
    TResult? Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
  }) {
    return addChatRooms?.call(chatRoomName, isGroupChat, icon, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChatRooms,
    TResult Function(ChatRoomModel model)? updateRoom,
    TResult Function(ChatMessageModel model)? updateMessage,
    TResult Function(ChatMessageModel message)? selectMessage,
    TResult Function(UserTypes selectedUserType)? getUsers,
    TResult Function()? getMembersOfGroup,
    TResult Function()? createGroupInit,
    TResult Function(ChatRoomModel room)? getMessages,
    TResult Function(ChatMessageModel message)? sendMessage,
    TResult Function(String userId)? addAdmins,
    TResult Function(LoginResTableEntity user)? selectUser,
    TResult Function(UserTypes selectedUser)? changeUserFilter,
    TResult Function(String chatRoomName, bool? isGroupChat, String? icon,
            BuildContext context)?
        addChatRooms,
    required TResult orElse(),
  }) {
    if (addChatRooms != null) {
      return addChatRooms(chatRoomName, isGroupChat, icon, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRooms value) getChatRooms,
    required TResult Function(_UpdateRoom value) updateRoom,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_SelectMessage value) selectMessage,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetMembersOfGroup value) getMembersOfGroup,
    required TResult Function(_CreateGroupInit value) createGroupInit,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddAdmins value) addAdmins,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_ChangeUserFilter value) changeUserFilter,
    required TResult Function(_AddRooms value) addChatRooms,
  }) {
    return addChatRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRooms value)? getChatRooms,
    TResult? Function(_UpdateRoom value)? updateRoom,
    TResult? Function(_UpdateMessage value)? updateMessage,
    TResult? Function(_SelectMessage value)? selectMessage,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult? Function(_CreateGroupInit value)? createGroupInit,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_AddAdmins value)? addAdmins,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_ChangeUserFilter value)? changeUserFilter,
    TResult? Function(_AddRooms value)? addChatRooms,
  }) {
    return addChatRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRooms value)? getChatRooms,
    TResult Function(_UpdateRoom value)? updateRoom,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_SelectMessage value)? selectMessage,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetMembersOfGroup value)? getMembersOfGroup,
    TResult Function(_CreateGroupInit value)? createGroupInit,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddAdmins value)? addAdmins,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_ChangeUserFilter value)? changeUserFilter,
    TResult Function(_AddRooms value)? addChatRooms,
    required TResult orElse(),
  }) {
    if (addChatRooms != null) {
      return addChatRooms(this);
    }
    return orElse();
  }
}

abstract class _AddRooms implements ChatEvent {
  const factory _AddRooms(
      {required final String chatRoomName,
      final bool? isGroupChat,
      final String? icon,
      required final BuildContext context}) = _$AddRoomsImpl;

  String get chatRoomName;
  bool? get isGroupChat;
  String? get icon;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$AddRoomsImplCopyWith<_$AddRoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  ChatRoomModel? get selectedChatRoom => throw _privateConstructorUsedError;
  ResponseClassify<List<LoginResTableEntity>>? get selectedMembers =>
      throw _privateConstructorUsedError;
  Stream<List<ChatMessageModel>>? get selectedChatRoomMessages =>
      throw _privateConstructorUsedError;
  Stream<List<LoginResTableEntity>>? get getUsers =>
      throw _privateConstructorUsedError;
  Stream<List<ChatRoomModel>>? get getChatRooms =>
      throw _privateConstructorUsedError;
  LoginResTableEntity? get currentUser => throw _privateConstructorUsedError;
  ChatMessageModel? get selectedMessagesByUser =>
      throw _privateConstructorUsedError;
  ResponseClassify<ChatRoomModel>? get addGroupResponse =>
      throw _privateConstructorUsedError;
  UserTypes? get selectedType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {ChatRoomModel? selectedChatRoom,
      ResponseClassify<List<LoginResTableEntity>>? selectedMembers,
      Stream<List<ChatMessageModel>>? selectedChatRoomMessages,
      Stream<List<LoginResTableEntity>>? getUsers,
      Stream<List<ChatRoomModel>>? getChatRooms,
      LoginResTableEntity? currentUser,
      ChatMessageModel? selectedMessagesByUser,
      ResponseClassify<ChatRoomModel>? addGroupResponse,
      UserTypes? selectedType});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChatRoom = freezed,
    Object? selectedMembers = freezed,
    Object? selectedChatRoomMessages = freezed,
    Object? getUsers = freezed,
    Object? getChatRooms = freezed,
    Object? currentUser = freezed,
    Object? selectedMessagesByUser = freezed,
    Object? addGroupResponse = freezed,
    Object? selectedType = freezed,
  }) {
    return _then(_value.copyWith(
      selectedChatRoom: freezed == selectedChatRoom
          ? _value.selectedChatRoom
          : selectedChatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoomModel?,
      selectedMembers: freezed == selectedMembers
          ? _value.selectedMembers
          : selectedMembers // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LoginResTableEntity>>?,
      selectedChatRoomMessages: freezed == selectedChatRoomMessages
          ? _value.selectedChatRoomMessages
          : selectedChatRoomMessages // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatMessageModel>>?,
      getUsers: freezed == getUsers
          ? _value.getUsers
          : getUsers // ignore: cast_nullable_to_non_nullable
              as Stream<List<LoginResTableEntity>>?,
      getChatRooms: freezed == getChatRooms
          ? _value.getChatRooms
          : getChatRooms // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatRoomModel>>?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as LoginResTableEntity?,
      selectedMessagesByUser: freezed == selectedMessagesByUser
          ? _value.selectedMessagesByUser
          : selectedMessagesByUser // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      addGroupResponse: freezed == addGroupResponse
          ? _value.addGroupResponse
          : addGroupResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<ChatRoomModel>?,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as UserTypes?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatRoomModel? selectedChatRoom,
      ResponseClassify<List<LoginResTableEntity>>? selectedMembers,
      Stream<List<ChatMessageModel>>? selectedChatRoomMessages,
      Stream<List<LoginResTableEntity>>? getUsers,
      Stream<List<ChatRoomModel>>? getChatRooms,
      LoginResTableEntity? currentUser,
      ChatMessageModel? selectedMessagesByUser,
      ResponseClassify<ChatRoomModel>? addGroupResponse,
      UserTypes? selectedType});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChatRoom = freezed,
    Object? selectedMembers = freezed,
    Object? selectedChatRoomMessages = freezed,
    Object? getUsers = freezed,
    Object? getChatRooms = freezed,
    Object? currentUser = freezed,
    Object? selectedMessagesByUser = freezed,
    Object? addGroupResponse = freezed,
    Object? selectedType = freezed,
  }) {
    return _then(_$ChatStateImpl(
      selectedChatRoom: freezed == selectedChatRoom
          ? _value.selectedChatRoom
          : selectedChatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoomModel?,
      selectedMembers: freezed == selectedMembers
          ? _value.selectedMembers
          : selectedMembers // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LoginResTableEntity>>?,
      selectedChatRoomMessages: freezed == selectedChatRoomMessages
          ? _value.selectedChatRoomMessages
          : selectedChatRoomMessages // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatMessageModel>>?,
      getUsers: freezed == getUsers
          ? _value.getUsers
          : getUsers // ignore: cast_nullable_to_non_nullable
              as Stream<List<LoginResTableEntity>>?,
      getChatRooms: freezed == getChatRooms
          ? _value.getChatRooms
          : getChatRooms // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatRoomModel>>?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as LoginResTableEntity?,
      selectedMessagesByUser: freezed == selectedMessagesByUser
          ? _value.selectedMessagesByUser
          : selectedMessagesByUser // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      addGroupResponse: freezed == addGroupResponse
          ? _value.addGroupResponse
          : addGroupResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<ChatRoomModel>?,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as UserTypes?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.selectedChatRoom,
      this.selectedMembers,
      this.selectedChatRoomMessages,
      this.getUsers,
      this.getChatRooms,
      this.currentUser,
      this.selectedMessagesByUser,
      this.addGroupResponse,
      this.selectedType});

  @override
  final ChatRoomModel? selectedChatRoom;
  @override
  final ResponseClassify<List<LoginResTableEntity>>? selectedMembers;
  @override
  final Stream<List<ChatMessageModel>>? selectedChatRoomMessages;
  @override
  final Stream<List<LoginResTableEntity>>? getUsers;
  @override
  final Stream<List<ChatRoomModel>>? getChatRooms;
  @override
  final LoginResTableEntity? currentUser;
  @override
  final ChatMessageModel? selectedMessagesByUser;
  @override
  final ResponseClassify<ChatRoomModel>? addGroupResponse;
  @override
  final UserTypes? selectedType;

  @override
  String toString() {
    return 'ChatState(selectedChatRoom: $selectedChatRoom, selectedMembers: $selectedMembers, selectedChatRoomMessages: $selectedChatRoomMessages, getUsers: $getUsers, getChatRooms: $getChatRooms, currentUser: $currentUser, selectedMessagesByUser: $selectedMessagesByUser, addGroupResponse: $addGroupResponse, selectedType: $selectedType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final ChatRoomModel? selectedChatRoom,
      final ResponseClassify<List<LoginResTableEntity>>? selectedMembers,
      final Stream<List<ChatMessageModel>>? selectedChatRoomMessages,
      final Stream<List<LoginResTableEntity>>? getUsers,
      final Stream<List<ChatRoomModel>>? getChatRooms,
      final LoginResTableEntity? currentUser,
      final ChatMessageModel? selectedMessagesByUser,
      final ResponseClassify<ChatRoomModel>? addGroupResponse,
      final UserTypes? selectedType}) = _$ChatStateImpl;

  @override
  ChatRoomModel? get selectedChatRoom;
  @override
  ResponseClassify<List<LoginResTableEntity>>? get selectedMembers;
  @override
  Stream<List<ChatMessageModel>>? get selectedChatRoomMessages;
  @override
  Stream<List<LoginResTableEntity>>? get getUsers;
  @override
  Stream<List<ChatRoomModel>>? get getChatRooms;
  @override
  LoginResTableEntity? get currentUser;
  @override
  ChatMessageModel? get selectedMessagesByUser;
  @override
  ResponseClassify<ChatRoomModel>? get addGroupResponse;
  @override
  UserTypes? get selectedType;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ChatRoomModel extends Equatable {
  final String id;
  String name;
  List<String>? members;
  List<String>? admins;
  bool isGroupChat;
  String? owner;
  String? icon;
  final String? lastMessage;

  ChatRoomModel({
    required this.id,
    required this.name,
    this.icon,
    this.admins,
    this.owner,
    this.lastMessage,
    this.members,
    required this.isGroupChat,
  });

  factory ChatRoomModel.fromMap(DocumentSnapshot<Map<String, dynamic>> e) {
    var map = e.data() as Map<String, dynamic>;
    return ChatRoomModel(
        id: e.id,
        name: map['name'] ?? '',
        icon: map['icon'],
        owner: map['owner'],
        members: List<String>.from(map['members'] ?? []),
        isGroupChat: map['isGroupChat'] ?? false,
        admins: List<String>.from(map['admins'] ?? []),
        lastMessage: map['lastMessage']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'members': members,
      'isGroupChat': isGroupChat,
      'admins': admins,
      'owner': owner,
      'icon': icon,
      'lastMessage': lastMessage
    };
  }

  @override
  List<Object?> get props => [name, id, owner];
}

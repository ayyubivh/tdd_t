import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ChatMessageModel extends Equatable {
  final String id;
  final String roomId;
  final String senderId;
  final String text;
  final DateTime timestamp;
  final List<String>? seenUsers;
  bool? pinMessage;
  String? hasReply;
  bool? star;

  ChatMessageModel({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
    this.seenUsers,
    this.pinMessage,
    required this.roomId,
    this.hasReply,
    this.star,
  });

  factory ChatMessageModel.fromMap(Map<String, dynamic> map) {
    return ChatMessageModel(
      id: map['id'] ?? '',
      senderId: map['senderId'] ?? '',
      text: map['text'] ?? '',
      timestamp: (map['timestamp'] as Timestamp).toDate().toLocal(),
      seenUsers: List<String>.from(map['seenUsers'] ?? []),
      pinMessage: map['pinMessage'] ?? false,
      hasReply: map['hasReply'] ?? '',
      star: map['star'] ?? false,
      roomId: map['roomId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'senderId': senderId,
      'text': text,
      'timestamp': timestamp,
      'seenUsers': seenUsers,
      'pinMessage': pinMessage,
      'hasReply': hasReply,
      'star': star,
      'roomId': roomId
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, text, timestamp];
}

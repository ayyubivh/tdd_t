import '../../../data/remote/models/chat/chat_message_model.dart';

class ChatWithDateEntity {
  final DateTime title;
  final List<ChatMessageModel> messages;

  ChatWithDateEntity({required this.title, required this.messages});

  toJson() => {
        'title': title,
        'messages': messages
            .map((e) => {'id': e.id, 'message': e.text, 'date': e.timestamp})
      };
}

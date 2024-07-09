import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/entities/chat/chate_with_date_entity.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/chat_tile.dart';

import '../../data/remote/models/chat/chat_message_model.dart';

List<ChatWithDateEntity> getChatItems(List<ChatMessageModel> items) {
  List<ChatWithDateEntity> widgets = [];
  List<DateTime> dates = items
      .map(
          (e) => DateTime(e.timestamp.year, e.timestamp.month, e.timestamp.day))
      .toList();
  var removeDup = dates.toSet().toList();

  prettyPrint(" unique dates $removeDup");
  for (var date in removeDup) {
    var chats = items
        .where((element) => checkSameDate(date, element.timestamp))
        .toList();
    chats.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    widgets.add(ChatWithDateEntity(title: date, messages: chats.toList()));
  }
  widgets.sort((a, b) => b.title.compareTo(a.title));

  return widgets;
}

bool checkSameDate(DateTime dateTime1, DateTime dateTime2) {
  if (dateTime1.year == dateTime2.year &&
      dateTime1.month == dateTime2.month &&
      dateTime1.day == dateTime2.day) {
    return true;
  } else {
    return false;
  }
}

class ChatFormattedMessages extends StatefulWidget {
  final List<ChatWithDateEntity> items;
  final LoginResTableEntity currentUser;
  final ScrollController? scrollController;
  const ChatFormattedMessages(
      {super.key,
      required this.items,
      required this.currentUser,
      this.scrollController});

  @override
  State<ChatFormattedMessages> createState() => _ChatFormattedMessagesState();
}

class _ChatFormattedMessagesState extends State<ChatFormattedMessages> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: widget.scrollController,
        itemCount: widget.items.length,
        shrinkWrap: true,
        reverse: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(checkSameDate(DateTime.now(), widget.items[index].title)
                    ? "Today"
                    : checkSameDate(
                            DateTime.now().subtract(const Duration(days: 1)),
                            widget.items[index].title)
                        ? "Yesterday"
                        : DateFormat("dd/MM/yyyy")
                            .format(widget.items[index].title)),
                spacer10,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.items[index].messages.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int i) {
                    return ChatTile(
                        message: widget.items[index].messages[i],
                        currentUser: widget.currentUser);
                  },
                ),
              ],
            ));
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

class ChatTile extends StatelessWidget {
  final ChatMessageModel message;
  final LoginResTableEntity currentUser;

  const ChatTile({super.key, required this.message, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message.senderId == currentUser.usrId
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTapDown: (details) =>
              _showContextMenu(context, details.globalPosition),
          child: Container(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (message.senderId == currentUser.usrId
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    if (message.star == true)
                      Positioned(
                        // top: ,
                        // right: -8,
                        child: Icon(
                          Icons.star,
                          size: 18,
                          color: AppColors.yellow,
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: message.senderId == currentUser.usrId
                              ? const Radius.circular(0.0)
                              : const Radius.circular(16.0),
                          bottomRight: message.senderId == currentUser.usrId
                              ? const Radius.circular(16.0)
                              : const Radius.circular(0),
                          topLeft: const Radius.circular(16.0),
                          topRight: const Radius.circular(16.0),
                        ),
                        color: (message.senderId == currentUser.usrId
                            ? Colors.grey.shade200
                            : AppColors.primaryColor.withOpacity(0.1)),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        message.text,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: (message.senderId == currentUser.usrId
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              DateFormat("hh:mm a").format(message.timestamp),
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }

  void _showContextMenu(BuildContext context, Offset offset) async {
    final chatBloc = ChatBloc.get(context);
    double left = offset.dx;
    double top = offset.dy;
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 0, 0),
      items: [
        const PopupMenuItem(
          value: '1',
          child: Row(
            children: [
              Icon(Icons.star_border),
              SizedBox(
                width: 5,
              ),
              Text('Star'),
            ],
          ),
        ),
        if (getUserType(currentUser.userType) == UserTypes.staff)
          const PopupMenuItem(
            value: '2',
            child: Row(
              children: [
                Icon(Icons.control_point),
                SizedBox(
                  width: 5,
                ),
                Text('Pin'),
              ],
            ),
          ),
      ],
    );
    switch (result) {
      case '1':
        message.star = true;
        chatBloc.add(ChatEvent.updateMessage(model: message));
        break;
      case '2':
        message.pinMessage = true;
        chatBloc.add(ChatEvent.updateMessage(model: message));
        break;
      default:
        break;
    }
  }
}

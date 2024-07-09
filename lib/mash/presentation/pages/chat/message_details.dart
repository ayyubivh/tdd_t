import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/pages/chat/chat_screen.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

import '../../widgets/chat_app_bar.dart';

class MessageDetails extends StatefulWidget {
  const MessageDetails({super.key});

  @override
  State<MessageDetails> createState() => _MessageDetailsState();
}

class _MessageDetailsState extends State<MessageDetails> {
  late ChatBloc chatBloc;
  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.getMembersOfGroup());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chapAppBar(context),
      body: Column(
        children: [
          spacer20,
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Members",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.selectedMembers?.status == Status.LOADING
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.selectedMembers?.status == Status.ERROR
                        ? Text(state.selectedMembers?.error ?? "")
                        : ListView.builder(
                            itemCount: state.selectedMembers?.data?.length ?? 0,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => UserChatTile(
                                user: state.selectedMembers!.data![index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}

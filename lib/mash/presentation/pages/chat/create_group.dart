import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/user_typ_selection.dart';

import '../../../../di/injector.dart';
import '../../../../firebase_options.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';
import 'chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => ChatBloc(),
    child: const MaterialApp(
      home: GroupAddScreen(),
    ),
  ));
}

class GroupAddScreen extends StatefulWidget {
  const GroupAddScreen({super.key});

  @override
  State<GroupAddScreen> createState() => _GroupAddScreenState();
}

class _GroupAddScreenState extends State<GroupAddScreen> {
  late ChatBloc chatBloc;
  final _groupNameController = TextEditingController();

  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.createGroupInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AnimatedSharedButton(
              onTap: () {
                chatBloc.add(ChatEvent.addChatRooms(
                  chatRoomName: _groupNameController.text,
                  context: context,
                  isGroupChat: true,
                ));
              },
              title: const Text(
                "Create",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              isLoading: state.addGroupResponse?.status == Status.LOADING,
            ),
          );
        },
      ),
      appBar: commonAppbar(
        title: "Create Group",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Group Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            spacer10,
            ChatTextField(
              title: "Group Name",
              controller: _groupNameController,
            ),
            spacer20,
            const Text(
              "Select Members",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            spacer10,
            userTypeSelectionChat(context: context),
            spacer20,
            ChatTextField(
              title: "Search",
              suffix: const Icon(Icons.search),
            ),
            spacer10,
            _userList()
          ],
        ),
      ),
    );
  }

  _userList() => BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          prettyPrint("Rebuilding ${state.selectedChatRoom}");
          return Expanded(
              child: StreamBuilder<List<LoginResTableEntity>>(
            stream: state.getUsers,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text('No data found...'));
              } else {
                List<LoginResTableEntity> users = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return UserChatTile(
                      haveSelection: true,
                      user: users[index],
                      isAdmin: state.selectedChatRoom?.admins
                              ?.contains(users[index].usrId) ==
                          true,
                      selected: state.selectedChatRoom?.members
                              ?.contains(users[index].usrId) ==
                          true,
                      onTap: () {
                        chatBloc.add(ChatEvent.selectUser(user: users[index]));
                      },
                    );
                  },
                );
              }
            },
          ));
        },
      );
}

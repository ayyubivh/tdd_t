import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

import '../../../../core/pretty_printer.dart';
import '../../../../firebase_options.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';
import '../../widgets/user_typ_selection.dart';
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
      home: NewChat(),
    ),
  ));
}

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  late ChatBloc chatBloc;

  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.createGroupInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New Chat',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: ListView(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pushReplacementNamed(AppPages.createGroup);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyClr200,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.greyClr200,
                          shape: BoxShape.circle,
                        ),
                        height: 30,
                        width: 30,
                        child: assetFromSvg(AppAssets.group),
                      ),
                      spacerWidth10,
                      Text(
                        "Create Group",
                        style: TextStyle(
                          fontSize: SizeConfig.textSize(18),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            spacer20,
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                "Start a new chat",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            spacer10,
            userTypeSelectionChat(context: context),
            _usersList()
          ],
        ),
      ),
    );
  }

  _usersList() => BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          prettyPrint("Rebuilding ${state.selectedChatRoom}");
          return StreamBuilder<List<LoginResTableEntity>>(
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return UserChatTile(
                      haveSelection: true,
                      user: users[index],
                      isFromList: true,
                      onTap: () {
                        chatBloc.add(ChatEvent.selectUser(user: users[index]));
                        chatBloc.add(ChatEvent.addChatRooms(
                            chatRoomName: users[index].studentName ?? "",
                            isGroupChat: false,
                            icon: users[index].profilePhoto,
                            context: context));
                      },
                    );
                  },
                );
              }
            },
          );
        },
      );
}

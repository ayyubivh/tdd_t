import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/router/router_config.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import '../../../../di/injector.dart';
import '../../../../firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => ChatBloc(),
    child: MaterialApp.router(
      routerConfig: AppRouteManager.router,
    ),
  ));
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late ChatBloc chatBloc;
  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.getChatRooms());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).pushNamed(AppPages.newChat);
        },
        child: const Icon(LineIcons.facebookMessenger),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0).copyWith(top: 40),
            child: const Text(
              "Messages",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return Expanded(
                  child: StreamBuilder<List<ChatRoomModel>>(
                stream: state.getChatRooms,
                builder: (context, snapshot) {
                  prettyPrint("snap shot :${snapshot.data?.length}");
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child:
                          Text('No data found... ${snapshot.error.toString()}'),
                    );
                  } else {
                    List<ChatRoomModel> chats = snapshot.data ?? [];
                    return chats.isEmpty
                        ? const Center(
                            child: Text("No Chats..."),
                          )
                        : ListView.builder(
                            itemCount: chats.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: ListTile(
                                  onTap: () {
                                    GoRouter.of(context).pushNamed(
                                        AppPages.messageScreen,
                                        extra: chats[index]);
                                  },
                                  leading: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    width: SizeUtility(context).width * 0.15,
                                    height: SizeUtility(context).width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: AppColors.primaryColor
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  title: Text(chats[index].name),
                                ),
                              );
                            },
                          );
                  }
                },
              ));
            },
          )
          // ...List.generate(10, (index) => const UserChatTile())
        ],
      ),
    );
  }
}

class UserChatTile extends StatefulWidget {
  final bool? appBar;
  final bool? haveSelection;
  final bool? selected;
  final Function? onTap;
  final bool? isAdmin;
  final bool? isFromList;
  final LoginResTableEntity user;

  const UserChatTile(
      {super.key,
      this.appBar,
      this.haveSelection,
      this.selected,
      this.onTap,
      this.isFromList,
      required this.user,
      this.isAdmin});

  @override
  State<UserChatTile> createState() => _UserChatTileState();
}

class _UserChatTileState extends State<UserChatTile> {
  final ValueNotifier<bool> _isSelected = ValueNotifier(false);
  final ValueNotifier<bool> _isAdmin = ValueNotifier(false);
  late ChatBloc chatBloc;
  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    _isSelected.value = widget.selected ?? false;
    _isAdmin.value = widget.isAdmin ?? false;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserChatTile oldWidget) {
    if (widget.selected != oldWidget.selected) {
      if (widget.selected == true) {
        _isSelected.value = true;
      } else {
        _isSelected.value = false;
      }
    }
    if (widget.isAdmin != oldWidget.isAdmin) {
      _isAdmin.value = widget.isAdmin ?? false;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap == null
          ? null
          : widget.haveSelection == true
              ? () => widget.onTap!()
              : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Row(
              children: [
                if (widget.appBar == true)
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                Container(
                  width: SizeUtility(context).width * 0.15,
                  height: SizeUtility(context).width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: AppColors.primaryColor.withOpacity(0.5),
                      image: DecorationImage(
                          onError: (
                            e,
                            ee,
                          ) {},
                          image: CachedNetworkImageProvider(
                              widget.user.profilePhoto ?? ''))),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ValueListenableBuilder(
                      valueListenable: _isSelected,
                      builder: (context, snapshot, child) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.user.studentName ?? "",
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    getUserType(widget.user.userType).name,
                                  )
                                ],
                              ),
                            ),
                            if (getUserType(widget.user.userType) ==
                                    UserTypes.staff &&
                                widget.isFromList != true)
                              GestureDetector(
                                onTap: () {
                                  chatBloc.add(ChatEvent.addAdmins(
                                      userId: widget.user.usrId ?? ''));
                                },
                                child: ValueListenableBuilder(
                                  builder: (context, data, child) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          color: data ? AppColors.green : null,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: AppColors.green)),
                                      child:
                                          Text(data ? "Admin" : "Make Admin"),
                                    );
                                  },
                                  valueListenable: _isAdmin,
                                ),
                              ),
                            Container(
                              child: snapshot
                                  ? Lottie.asset(
                                      AppAssets.tickLottie,
                                      repeat: false,
                                      width: 40,
                                      height: 40,
                                    )
                                  : Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.primaryColor),
                                        color: AppColors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                            )
                          ],
                        );
                      }),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

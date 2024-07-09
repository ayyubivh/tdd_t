import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../manager/bloc/chat_bloc/chat_bloc.dart';

PreferredSize chapAppBar(BuildContext context, {Function? ontTap}) {
  return PreferredSize(
      preferredSize: const Size(double.infinity, 60),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: ontTap == null ? null : () => ontTap(),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.only(left: 8.0, right: 8, bottom: 15),
                        child: Icon(LineIcons.arrowLeft),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Text(
                                state.selectedChatRoom?.name ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          );
        },
      ));
}

AppBar chatAppBarNew(BuildContext context, {Function? ontTap}) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    flexibleSpace: SafeArea(
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop(context);
                    } else {
                      context.goNamed(AppPages.chatsListScreen);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      "https://randomuser.me/api/portraits/men/5.jpg"),
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.selectedChatRoom?.name ?? "",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                if (ontTap != null)
                  InkWell(
                      onTap: () => ontTap(),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.black54,
                      )),
              ],
            ),
          );
        },
      ),
    ),
  );
}

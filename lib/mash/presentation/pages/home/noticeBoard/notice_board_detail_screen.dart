import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class NoticeBoardDetailScreen extends StatefulWidget {
  final String noticeId;

  const NoticeBoardDetailScreen({super.key, required this.noticeId});

  @override
  State<NoticeBoardDetailScreen> createState() =>
      _NoticeBoardDetailScreenState();
}

class _NoticeBoardDetailScreenState extends State<NoticeBoardDetailScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NoticeBloc>(context)
        .add(NoticeEvent.getNoticeDetail(noticeId: widget.noticeId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppbar(title: 'NOTICE DETAIL'),
        endDrawer: const DrawerWidget(),
        /*floatingActionButton: BlocBuilder<NoticeBloc, NoticeState>(
          builder: (context, state) {
            return FloatingActionButton.extended(
                onPressed: () {
                  prettyPrint('********* check notice data *****');
                  prettyPrint(state.noticeAllData.data![0]!.docFile);
                  BlocProvider.of<NoticeBloc>(context).add(NoticeEvent.readBook(
                      context: context, notice: state.noticeAllData.data![0]!));
                },
                label: const Text('VIEW ATTACHMENT'));
          },
        ),*/
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: noticeDetailBody(context));
  }

  noticeDetailBody(
    BuildContext context,
  ) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<NoticeBloc, NoticeState>(
      builder: (context, state) {
        return state.noticeResponseData.status == Status.LOADING
            ? const Loader()
            : Stack(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                    height: size.height,
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        image(size, state),
                        spacer20,
                        title(state.noticeResponseData.data?[0]?.topicHead ?? ''),
                        spacer20,
                        date(state.noticeResponseData.data?[0]?.noticeDate ?? ''),
                        spacer20,
                        description(
                            state.noticeResponseData.data?[0]?.topicDesc ?? '')
                      ],
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child:  Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              prettyPrint('********* check notice data *****');
                              prettyPrint(state.noticeResponseData.data![0]!.docFile);
                              BlocProvider.of<NoticeBloc>(context).add(NoticeEvent.readBook(
                                context: context,
                                notice: state.noticeResponseData.data![0]!,
                              ));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('VIEW ATTACHMENT'),
                            ),

                        )
                      )

                  ),
              ],
            );
      },
    );
  }

  title(title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: SizeConfig.textSize(20), fontWeight: FontWeight.w600),
    );
  }

  date(date) {
    return Text(
      date,
      style: TextStyle(
          fontSize: SizeConfig.textSize(17), color: AppColors.grey600),
    );
  }

  description(desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        desc,
      ),
    );
  }

  image(Size size, NoticeState state) {
    return Container(
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: state.noticeResponseData.data?[0]?.ext == 'JPG'
                  ? CachedNetworkImageProvider(
                      state.noticeResponseData.data?[0]?.docFile ?? '')
                  : const AssetImage('assets/images/mash_place_holder.jpg')
                      as ImageProvider),
        ));
  }
}

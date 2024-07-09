import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class NoticeBoardMainScreen extends StatefulWidget {
  const NoticeBoardMainScreen({super.key});

  @override
  State<NoticeBoardMainScreen> createState() => _NoticeBoardMainScreenState();
}

class _NoticeBoardMainScreenState extends State<NoticeBoardMainScreen> {

  @override
  void initState() {
    BlocProvider.of<NoticeBloc>(context).add(const NoticeEvent.getNoticeAllData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'NOTICE BOARD'),
      endDrawer: const DrawerWidget(),
      body: noticeBoardBody(context),
    );
  }

  noticeBoardBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<NoticeBloc, NoticeState>(
      builder: (context, state) => Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        height: size.height,
        width: size.width,
        child: state.noticeAllData.data?.length == 0 ? HelperClasses.emptyDataWidget() : ListView.separated(
            itemCount: state.noticeAllData.data?.length ?? 0,
            itemBuilder: (context, index) {
              return state.noticeAllData.status == Status.LOADING ?  Loader: state.noticeAllData.data!.isEmpty ?  HelperClasses.emptyDataWidget():noticeCard(index, context,state.noticeAllData.data![index]!.topicHead.toString(),state.noticeAllData.data![index]!.topicDesc.toString(),state.noticeAllData.data![index]!.noticeDate.toString(),state.noticeAllData.data![index]!.noticeId.toString());
            },
            separatorBuilder: (context, index) {
              return spacer10;
            },
        ),
      ),
    );
  }

  noticeCard(int index, BuildContext context,String noticeTitle,String descriptions,String noticeDate,String noticeId) {

    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).pushNamed(AppPages.noticeBoardDetailScreen,extra: noticeId),
      child: primaryShadowContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(noticeTitle),
            description(descriptions),
            dateAndDetailRow(
              noticeDate,
            )
          ],
        ),
      ),
    );
  }

  title(title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: SizeConfig.textSize(16), fontWeight: FontWeight.w600),
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

  dateAndDetailRow(date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: TextStyle(color: AppColors.greyText),
        ),
        Row(
          children: [
            Text(
              'Details',
              style: TextStyle(color: AppColors.grey600),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 13,
              color: AppColors.grey600,
            )
          ],
        )
      ],
    );
  }
}

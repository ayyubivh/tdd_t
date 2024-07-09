import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../manager/bloc/drawer_bloc/drawer_bloc.dart';
import '../../../widgets/drawer_widget.dart';

class NewsBoardMainScreen extends StatefulWidget {
  const NewsBoardMainScreen({super.key});

  @override
  State<NewsBoardMainScreen> createState() => _NewsBoardMainScreenState();
}

class _NewsBoardMainScreenState extends State<NewsBoardMainScreen> {
  @override
  void initState() {
    BlocProvider.of<DrawerBloc>(context).add(const DrawerEvent.getNews());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'NEWS BOARD'),
      body: newsBoardBody(context),
    );
  }

  newsBoardBody(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(builder: (context, state) {
      return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            return newsCard(
              index,
              state,
              context,
            );
          },
          separatorBuilder: (context, index) {
            return spacer15;
          },
          itemCount: state.newsBoardResponse.data?.length ?? 0);
    });
  }

  newsCard(int index, DrawerState state, BuildContext context) {
    final data = state.newsBoardResponse.data?[index];
    return GestureDetector(
      onTap: () => GoRouter.of(context).pushNamed(
          AppPages.newsBoardDetailScreen,
          extra: data as NewsBoardEntity),
      child: primaryShadowContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(data?.newsTitle ?? ""),
            description(data?.description ?? ""),
            dateAndDetailRow(
              data?.newsDate ?? "",
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
        style: TextStyle(
          fontSize: SizeConfig.textSize(14),
          color: AppColors.greyText,
        ),
      ),
    );
  }

  dateAndDetailRow(date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: TextStyle(
            color: AppColors.greyText,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        Row(
          children: [
            Text(
              'Details',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 13,
              color: AppColors.primaryColor,
            )
          ],
        )
      ],
    );
  }
}

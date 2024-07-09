import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../manager/cubit/pdf_download/pdf_download_cubit.dart';
import '../../../widgets/drawer_widget.dart';

class NewsBoardDetailScreen extends StatelessWidget {
  final NewsBoardEntity newsDetails;
  const NewsBoardDetailScreen({super.key, required this.newsDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: newsDetails.newsTitle ?? ""),
      endDrawer: const DrawerWidget(),
      body: newsDetailBody(context),
      bottomSheet: Container(
        height: SizeUtility(context).height / 8,
        width: double.infinity,
        color: AppColors.white,
        child: BlocConsumer<PdfDownloadCubit, PdfDownloadState>(
          listenWhen: (previous, current) {
            return current.pdfDownloadResponse.status !=
                previous.pdfDownloadResponse.status;
          },
          listener: (context, state) {
            if (state.pdfDownloadResponse.status == Status.COMPLETED) {
              GoRouter.of(context).pushNamed(AppPages.pdfViewScreen,
                  extra: state.pdfDownloadResponse.data);
            } else if (state.pdfDownloadResponse.status == Status.ERROR) {
              HelperClasses.showSnackBar(msg: state.pdfDownloadResponse.error);
            }
          },
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state.pdfDownloadProgressState == 0
                  ? spacer4
                  : Text(
                      'downlowding...... ${state.pdfDownloadProgressState} %',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 2,
                      ),
                    ),
              CustomIconButton(
                icon: AppAssets.downloadIcon,
                name: 'View Attachment',
                onTap: () {
                  log('document typep ${newsDetails.ext}');
                  if (newsDetails.ext == "PDF") {
                    BlocProvider.of<PdfDownloadCubit>(context).downloadPdf(
                      document: newsDetails.content ?? "",
                      filePath: newsDetails.content ?? '',
                    );
                  } else {}
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  newsDetailBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(size, newsDetails.coverPage ?? ""),
          spacer20,
          title(newsDetails.newsTitle ?? ""),
          spacer20,
          date(newsDetails.newsDate ?? ""),
          spacer20,
          description(newsDetails.description ?? "")
        ],
      ),
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

  image(Size size, String img) {
    return Container(
      height: size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(img),
        ),
      ),
    );
  }
}

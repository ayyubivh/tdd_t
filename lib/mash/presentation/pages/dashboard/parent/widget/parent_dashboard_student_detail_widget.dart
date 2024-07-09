import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import '../../../../../../core/response_classify.dart';
import '../../../../../domain/entities/profile/student_detail_entity.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/helper_classes.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/size_utility.dart';
import '../../../../widgets/shimmers/custom_shimmer_widget.dart';
import '../../../../widgets/svg_asset_img.dart';

class StudenProfileWidget extends StatelessWidget {
  final ProfileState state;
  final StudentDetailEntity? user;

  const StudenProfileWidget({super.key, this.user, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeUtility(context).width / 24,
      ).copyWith(
          top: Platform.isIOS
              ? SizeUtility(context).height / 8
              : SizeUtility(context).height / 10),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: state.getSiblings?.data?.length == 1 ||
                state.getSiblings?.data == null
            ? null
            : () {
                // _isExpand.value = !_isExpand.value;
                HelperClasses.showStudentSwitchDialog(context);
              },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _ProfileImage(state: state),
                    ],
                  ),
                  _UserInfo(user: user),
                  state.getSiblings?.data?.isEmpty ?? true
                      ? const SizedBox()
                      : Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.white,
                          size: SizeConfig.height(24),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  final ProfileState state;

  const _ProfileImage({required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height(70),
      width: SizeConfig.height(70),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.white,
          width: 1.5,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: state.getUserDetail?.status == Status.LOADING
            ? const CustomShimmerWidget(height: 50)
            : HelperClasses.cachedNetworkImage(
                imageUrl: state.getUserDetail?.data?.profilePhoto ?? "",
              ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  final StudentDetailEntity? user;

  const _UserInfo({this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user?.studentName ?? '',
            style: TextStyle(
              fontSize: SizeConfig.textSize(17),
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${user?.className ?? ''} ${user?.divisionName ?? ''}',
            style: TextStyle(
              fontSize: SizeConfig.textSize(14),
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          spacer15,
          Container(
            width: SizeUtility(context).width / 1.8,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.width(18), vertical: 5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: AppColors.purple200,
                ),
              ],
              color: AppColors.primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _UserInfoItem(
                      label: user?.rollNo ?? "",
                      subLabel: 'Roll NO',
                    ),
                    _UserInfoItem(
                      label: user?.classTeacher ?? "",
                      subLabel: 'Class Teacher',
                    ),
                  ],
                ),
                spacer10,
                const _ContactRow(),
                spacer4,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
          color: AppColors.white,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              GoRouter.of(context).pushNamed(AppPages.chatsListScreen);
            },
            child: const _IconWidget(img: AppAssets.chat),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () async {
              HelperClasses.showDialogWithButton(
                context: context,
              );
            },
            child: const _IconWidget(img: AppAssets.call),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              GoRouter.of(context).pushNamed(AppPages.teacherRatingListScreen);
            },
            child: Image.asset(
              AppAssets.ratingIcon,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconWidget extends StatelessWidget {
  final String img;

  const _IconWidget({required this.img});

  @override
  Widget build(BuildContext context) {
    return assetFromSvg(img, color: AppColors.white);
  }
}

class _UserInfoItem extends StatelessWidget {
  final String label;
  final String subLabel;

  const _UserInfoItem({required this.label, required this.subLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subLabel,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.greyClr300,
          ),
        ),
      ],
    );
  }
}

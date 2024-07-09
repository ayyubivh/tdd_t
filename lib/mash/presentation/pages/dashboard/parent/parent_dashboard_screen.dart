import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_top_section.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';
import 'widget/parent_dashboard_student_detail_widget.dart';

class ParentDashBoard extends StatelessWidget {
  const ParentDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerWidget(),
      body: CustomScrollView(
        slivers: [
          _Header(),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            height: 20,
            width: SizeUtility(context).width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.primaryColor,
              ),
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
          ),
          const Column(
            children: [
              spacer20,
              ParentDashboardTopSection(),
              ParentDashboardLastSection(),
            ],
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      pinned: true,
      expandedHeight: SizeUtility(context).height * 0.26,
      actions: [
        _AppBarIconWidget(
          img: AppAssets.noticeIcon,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.noticeBoardMainScreen);
          },
        ),
        spacerWidth15,
        _AppBarIconWidget(
          img: AppAssets.notificationIcon,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.notificationScreen);
          },
        ),
        spacerWidth20,
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) {
            return previous.getUserDetail?.status !=
                current.getUserDetail?.status;
          },
          builder: (context, state) {
            final user = state.getUserDetail?.data;
            return Container(
              width: SizeUtility(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(AppAssets.dashboardBg),
                  opacity: 0.5,
                  colorFilter: ColorFilter.mode(
                    AppColors.primaryColor,
                    BlendMode.multiply,
                  ),
                  fit: BoxFit.cover,
                ),
                gradient: AppColors.primaryLinearGradient,
              ),
              child: StudenProfileWidget(
                user: user,
                state: state,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AppBarIconWidget extends StatelessWidget {
  final String img;
  final VoidCallback onTap;

  const _AppBarIconWidget({required this.img, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.2),
            shape: BoxShape.circle,
            border: Border.all(
              width: 0.3,
              color: AppColors.white,
            )),
        child: assetFromSvg(img, height: 20, color: AppColors.white),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/enums.dart';
import '../../../../widgets/oultined_container_widget.dart';
import '../../../home/widgets/progress_indicator_widget.dart';

class ParentDashboardTopSection extends StatelessWidget {
  const ParentDashboardTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spacer30,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _viewCalenderBtn(context),
            ],
          ),
        ),
        spacer20,
        _ProgressWidgets(),
      ],
    );
  }

  Widget _viewCalenderBtn(BuildContext context) {
    return CustomIconButton(
      onTap: () {
        context.push(AppPages.dashboardCalendar);
      },
      icon: AppAssets.timeTableIcon,
      name: AppStrings.viewCalendar,
    );
  }
}

class _ProgressWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      verticalDirection: VerticalDirection.down,
      children: [
        _AttendanceWidget(),
        _GradeWidget(),
      ],
    );
  }
}

class _AttendanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(AppPages.attendanceDetailScreen);
      },
      child: OutlinedContainerWidget(
        height: SizeConfig.height(170),
        width: SizeConfig.width(170),
        child: Stack(
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return state.getUserDetail?.data == null
                    ? const SizedBox()
                    : SizedBox(
                        height: SizeConfig.height(170),
                        width: SizeConfig.width(170),
                        child: ProgressIndicatorWidget(
                          progressIndicatorType: ProgressIndicatorType.circular,
                          initialValue: double.tryParse(
                                      state.getUserDetail?.data?.attPercen ??
                                          '0')!
                                  .floor() /
                              100,
                        ),
                      );
              },
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.height(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ATTENDANCE',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(12),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) => Text(
                        '${state.getUserDetail?.data?.attPercen ?? '0'}%',
                        style: TextStyle(
                          fontSize: SizeConfig.textSize(30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'View Details',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(11),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GradeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedContainerWidget(
      height: 91,
      width: 91,
      child: Center(
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) => Text(
            state.scoreBoardResponse.data?.resMessage ?? '_',
            style: TextStyle(
              fontSize: 40,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

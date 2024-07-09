import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../../domain/entities/leave/leave_dashboard_entity.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/loader.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  void initState() {
    super.initState();
    LeaveBloc.get(context).add(const LeaveEvent.getLeaveDashboardData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'LEAVE'),
      body: leaveBody(),
      drawer: const DrawerWidget(),
    );
  }

  leaveBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            _leaveCard(
                () => GoRouter.of(context).pushNamed(AppPages.leaveApplyScreen),
                AppAssets.leaveApply,
                'APPLY LEAVE'),
            _leaveCard(
                () =>
                    GoRouter.of(context).pushNamed(AppPages.leaveStatusScreen),
                AppAssets.leaveStatus,
                'STATUS'),
            spacer20,
            BlocBuilder<LeaveBloc, LeaveState>(
              builder: (context, state) {
                return state.getLeaveDashboardData?.status == Status.LOADING ||
                        state.getLeaveDashboardData?.data == null
                    ? const Loader()
                    : _leaveDetailWidget(state.getLeaveDashboardData!.data!);
              },
            )
          ],
        ),
      ),
    );
  }

  _leaveCard(onPress, assetName, title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: onPress,
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(assetName),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0), child: Text(title)),
                )
              ],
            ),
          )),
    );
  }

  Widget _leaveDetailWidget(List<LeaveDashboardEntity> data) {
    return Wrap(
      children: [
        BlocBuilder<LeaveBloc, LeaveState>(
          builder: (context, state) {
            final colors = [
              AppColors.graphColor3,
              AppColors.graphColor2,
              AppColors.graphColor1,
              AppColors.graphColor4,
              AppColors.blueGrey800,
              AppColors.orangeA700,
            ];
            return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: colors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                List datas = [
                  data[0].holiday.toString(),
                  data[0].events.toString(),
                  data[0].working.toString(),
                  data[0].halfLeave.toString(),
                  data[0].leave.toString(),
                  data[0].attendancePercent.toString(),
                ];

                final names = [
                  'Holidays',
                  'Events Days',
                  'Working Days',
                  'Half Day Leaves',
                  'Leave Days',
                  'Attendance (%)',
                ];
                return CustomAnimatedWidget(
                  type: AnimationTypes.rightToLeft,
                  child: _chartDetailsWidget(
                    names[index],
                    datas[index].toString(),
                    colors[index],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _chartDetailsWidget(String name, String data, Color color,
      [bool? isOther = false]) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: [
          Container(
            width: isOther == true ? 16 : 8,
            height: isOther == true ? 16 : 45,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                  top: Radius.circular(12),
                )),
          ),
          spacerWidth10,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                data.toString(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

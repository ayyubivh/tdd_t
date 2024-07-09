import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/domain/entities/profile/student_detail_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';

class AttendenceDetailScreen extends StatefulWidget {
  const AttendenceDetailScreen({super.key});

  @override
  State<AttendenceDetailScreen> createState() => _AttendenceDetailScreenState();
}

class _AttendenceDetailScreenState extends State<AttendenceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        AppStrings.attendanceReport,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) => ListView(
        children: [
          _graphWidget(state.getUserDetail!.data!),
          spacer40,
          _graphDetailsWidget(state.getUserDetail!.data!),
          spacer30,
          _otherWidget(context, state.getUserDetail!.data!),
        ],
      ),
    );
  }

  Widget _otherWidget(BuildContext context, StudentDetailEntity data) {
    return Wrap(
      children: [
        CustomAnimatedWidget(
          type: AnimationTypes.rightToLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Others",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            List<String> datas = [
              data.totalEvents.toString(),
              data.totalHolidays.toString(),
              data.strength.toString(),
            ];
            final names = [
              'Events',
              'Yearly Holidays',
              'Strenght',
            ];
            return CustomAnimatedWidget(
              type: AnimationTypes.rightToLeft,
              child: _chartDetailsWidget(
                names[index],
                datas[index],
                AppColors.blackOverlay,
                true,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _graphDetailsWidget(StudentDetailEntity data) {
    return Wrap(
      children: [
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final colors = [
              AppColors.graphColor3,
              AppColors.graphColor2,
              AppColors.graphColor1,
              AppColors.graphColor4,
            ];
            List<String> datas = [
              data.totWorkingDays.toString(),
              data.totalPresent.toString(),
              data.totalAbsent.toString(),
              data.halfDays.toString(),
            ];
            final names = [
              // 'Workgin Days',
              // 'Yearly Events',
              'Working Days',
              'Present',
              'Leave',
              'Half Day Leaves',
              '% of Attendence',
              // 'Class Strength'
            ];
            return CustomAnimatedWidget(
              type: AnimationTypes.rightToLeft,
              child: _chartDetailsWidget(
                names[index],
                datas[index],
                colors[index],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _graphWidget(StudentDetailEntity data) {
    return CustomAnimatedWidget(
      type: AnimationTypes.scaleAndFade,
      child: Container(
        height: SizeConfig.height(260),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(207, 140, 240, 240).withOpacity(0.3),
        ),
        child: Stack(
          children: [
            PieChart(
              swapAnimationCurve: Curves.easeIn,
              swapAnimationDuration: const Duration(seconds: 10),
              PieChartData(
                sections: [
                  PieChartSectionData(
                    badgePositionPercentageOffset: 4.9,
                    color: AppColors.graphColor3,
                    value: double.parse(data.totWorkingDays?.toString() ?? ''),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor2,
                    value: double.parse(data.totalPresent?.toString() ?? ''),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor1,
                    value: double.parse(data.totWorkingDays?.toString() ?? ''),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor4,
                    value: double.parse(data.halfDays.toString()),
                    title: '',
                    radius: 40,
                  ),
                ],
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                // Adding total percentage widget in the center
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 145,
                width: 145,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${data.attPercen}%',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
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
                data,
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

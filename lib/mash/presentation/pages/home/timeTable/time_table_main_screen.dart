import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/timeTable/time_table_data_item_model.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../router/app_pages.dart';
import '../../../widgets/drawer_widget.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'TIMETABLES'),
      body: timetableBody(context),
    );
  }

  timetableBody(BuildContext context) {
    List<TimeTableWidgetModel> items = [
      TimeTableWidgetModel(
          title: AppStrings.dailyTimeTableTitle,
          asset: AppAssets.dailyTimeTable,
          onTap: () {
             GoRouter.of(context).pushNamed(AppPages.dailyTimetableScreen);
          }),
      TimeTableWidgetModel(
          title: AppStrings.weeklyTimeTableTitle,
          asset: AppAssets.weekyTimeTable,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.weeklyTimetableScreen);
          }),
      TimeTableWidgetModel(
          title: AppStrings.examTableTitle,
          asset: AppAssets.examTimeTable,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.examTimetableScreen);
          }),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return timeTableCard(items[index], context);
          }),
    );
  }

  timeTableCard(TimeTableWidgetModel data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () => data.onTap(),
          child: Container(
            height: SizeUtility(context).height / 4.5,
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
                    child: SvgPicture.asset(
                      data.asset,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(data.title)),
                )
              ],
            ),
          )),
    );
  }
}

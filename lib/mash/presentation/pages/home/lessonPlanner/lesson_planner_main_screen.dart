import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../../domain/entities/menu_card_model/menu_card_model.dart';

class LessonPlannerMainScreen extends StatelessWidget {
  const LessonPlannerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'LESSON PLANNER'),
      body: lessonPlannerBody(context),
    );
  }

  lessonPlannerBody(BuildContext context) {
    List<MenuCardItemModel> items = [
      MenuCardItemModel(
          title: AppStrings.insertYearPlan,
          asset: AppAssets.lessonInsert,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.insertYearPlanScreen);
          }),
      MenuCardItemModel(
          title: AppStrings.viewYearPlan,
          asset: AppAssets.lessonView,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.viewYearPlanScreen);
          }),
      MenuCardItemModel(
          title: AppStrings.insertWeekPlan,
          asset: AppAssets.lessonInsert,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.insertWeekPlanScreen);
          }),
      MenuCardItemModel(
          title: AppStrings.viewWeekPlan,
          asset: AppAssets.lessonView,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.viewWeekPlansScreen);
          }),
      MenuCardItemModel(
          title: AppStrings.status,
          asset: AppAssets.lessonStatus,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.academicLibraryScreen);
          }),
    ];
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return lessonPlannerCard(items[index], context);
          }),
    );
  }

  lessonPlannerCard(MenuCardItemModel data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () => data.onTap(),
          child: Container(
            height: SizeUtility(context).height / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
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
                    child: SvgPicture.asset(data.asset),
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

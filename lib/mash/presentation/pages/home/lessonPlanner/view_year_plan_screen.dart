import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class ViewYearPlanScreen extends StatefulWidget {
  const ViewYearPlanScreen({super.key});

  @override
  State<ViewYearPlanScreen> createState() => _ViewYearPlanScreenState();
}

class _ViewYearPlanScreenState extends State<ViewYearPlanScreen> {
  final TextEditingController _academicYearController = TextEditingController();
  final TextEditingController _classController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.viewYearPlanTitle),
      endDrawer: const DrawerWidget(),
      body: viewYearPlanBody(context),
    );
  }

  viewYearPlanBody(BuildContext context) {
    List<String> options = ['option 1', 'option 2', 'option 3'];
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.academicYear),
          CommonGestureDetector(
            onTap: () => _openOptionsBottomSheet(
                context, _academicYearController, options),
            textController: _academicYearController,
            hintText: 'Select Academic Year',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          titleText(AppStrings.selectClass),
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _classController, options),
            textController: _classController,
            hintText: 'Select Class',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          titleText(AppStrings.selectDivision),
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _divisionController, options),
            textController: _divisionController,
            hintText: 'Select Division',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          titleText(AppStrings.selectSubject),
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _subjectController, options),
            textController: _subjectController,
            hintText: 'Select Subject',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          spacer30,
          Align(
            alignment: Alignment.center,
            child: AnimatedSharedButton(
              onTap: () => GoRouter.of(context)
                  .pushNamed(AppPages.viewYearPlanListScreen),
              title: Text(
                'VIEW',
                style: TextStyle(fontSize: 18, color: AppColors.white),
              ),
              isLoading: false,
            ),
          )
        ],
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void _openOptionsBottomSheet(
      BuildContext context, TextEditingController controller, List optionList) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16))),
          height: SizeConfig.height(optionList.length * 90).toDouble(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  AppStrings.selectClass,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: optionList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(optionList[index]),
                          onTap: () {
                            controller.text = optionList[index];
                            Navigator.of(context).pop();
                          },
                        );
                      }))
            ],
          ),
        );
      },
    );
  }
}

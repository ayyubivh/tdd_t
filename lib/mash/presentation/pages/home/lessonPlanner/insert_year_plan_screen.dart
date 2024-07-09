import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class InsertYearPlanScreen extends StatefulWidget {
  const InsertYearPlanScreen({super.key});

  @override
  State<InsertYearPlanScreen> createState() => _InsertYearPlanScreenState();
}

class _InsertYearPlanScreenState extends State<InsertYearPlanScreen> {
  final TextEditingController _academicYearController = TextEditingController();
  final TextEditingController _classController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _termController = TextEditingController();
  final TextEditingController _monthController = TextEditingController();
  final TextEditingController _chaptersController = TextEditingController();
  final TextEditingController _chapterRemarksController =
      TextEditingController();

  final List<String> _bottomSheetItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  final List<String> _selectedItems = [];
  final ValueNotifier<List<String>> _selectedItemsNotifier =
      ValueNotifier<List<String>>([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.yearlyWise),
      endDrawer: const DrawerWidget(),
      body: yearPlanBody(context),
    );
  }

  yearPlanBody(BuildContext context) {
    List<String> options = ['option 1', 'option 2', 'option 3'];
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Container(
        // height: size.height,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
              onTap: () => _openMultipleOptionsBottomSheet(context,
                  _divisionController, options, AppStrings.selectDivision),
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
            titleText(AppStrings.selectTerm),
            CommonGestureDetector(
              onTap: () =>
                  _openOptionsBottomSheet(context, _termController, options),
              textController: _termController,
              hintText: 'Select Term',
              icon: Icons.arrow_drop_down_circle_sharp,
            ),
            titleText(AppStrings.selectMonth),
            CommonGestureDetector(
              onTap: () =>
                  _openOptionsBottomSheet(context, _monthController, options),
              textController: _monthController,
              hintText: 'Select Month',
              icon: Icons.arrow_drop_down_circle_sharp,
            ),
            titleText(AppStrings.chapters),
            CommonGestureDetector(
              onTap: () => _openMultipleOptionsBottomSheet(
                  context, _chaptersController, options, AppStrings.chapters),
              textController: _chaptersController,
              hintText: 'Select Chapters',
              icon: Icons.arrow_drop_down_circle_sharp,
            ),
            titleText(AppStrings.chapterRemarks),
            CommonTextField(
              lines: 3,
              title: AppStrings.enterChapterRemarks,
              controller: _chapterRemarksController,
            ),
            spacer20,
            AnimatedSharedButton(
                onTap: () {}, title: const Text('REQUEST'), isLoading: false),
            spacer20
          ],
        ),
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

  void _openMultipleOptionsBottomSheet(BuildContext context,
      TextEditingController controller, List optionList, String title) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return StatefulBuilder(builder: (context, StateSetter state) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.grey),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16))),
            height: SizeConfig.height(optionList.length * 90).toDouble(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _bottomSheetItems.length,
                    itemBuilder: (context, index) {
                      final item = _bottomSheetItems[index];
                      return CheckboxListTile(
                        title: Text(item),
                        value: _selectedItemsNotifier.value.contains(item),
                        onChanged: (bool? value) {
                          state(() {
                            if (value!) {
                              _selectedItems.add(item);
                            } else {
                              _selectedItems.remove(item);
                            }
                            _selectedItemsNotifier.value =
                                List.from(_selectedItems);
                          });
                        },
                      );
                    },
                  ),
                ),
                spacer20,
                ElevatedButton(
                  onPressed: () {
                    controller.text = _selectedItemsNotifier.value.join(', ');
                    Navigator.pop(context);
                  },
                  child: const Text(AppStrings.submit),
                ),
              ],
            ),
          );
        });
      },
    );
  }
}

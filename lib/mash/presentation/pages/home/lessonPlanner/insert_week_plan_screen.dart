import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class InsertWeekPlanScreen extends StatefulWidget {
  const InsertWeekPlanScreen({super.key});

  @override
  State<InsertWeekPlanScreen> createState() => _InsertWeekPlanScreenState();
}

class _InsertWeekPlanScreenState extends State<InsertWeekPlanScreen> {
  final TextEditingController _classController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _chaptersController = TextEditingController();
  final TextEditingController _chapterRemarksController =
      TextEditingController();
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _learningObjectsController =
      TextEditingController();
  final TextEditingController _contentsController = TextEditingController();
  final TextEditingController _teachingAidsController = TextEditingController();
  final TextEditingController _classWorkController = TextEditingController();
  final TextEditingController _homeWorkController = TextEditingController();
  final TextEditingController _learningOutcomesController =
      TextEditingController();
  final TextEditingController _overallController = TextEditingController();
  final TextEditingController _totalPeriodsController = TextEditingController();

  DateTime _selectedDate = DateTime.now();

  final List<String> _selectedItems = [];
  final ValueNotifier<List<String>> _selectedItemsNotifier =
      ValueNotifier<List<String>>([]);

  final List<String> _bottomSheetItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.insertWeekPlans),
      endDrawer: const DrawerWidget(),
      body: insertWeekPlanBody(context),
    );
  }

  insertWeekPlanBody(BuildContext context) {
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
            spacer10,
            titleText(AppStrings.fromDate),
            dateSelection(_fromDateController),
            titleText(AppStrings.toDate),
            dateSelection(_toDateController),
            titleText(AppStrings.learningObjects),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.learningObjects,
              controller: _learningObjectsController,
            ),
            titleText(AppStrings.contents),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.contents,
              controller: _contentsController,
            ),
            titleText(AppStrings.teachingAids),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.teachingAids,
              controller: _teachingAidsController,
            ),
            titleText(AppStrings.classWorks),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.classWorks,
              controller: _classWorkController,
            ),
            titleText(AppStrings.homeWorks),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.homeWorks,
              controller: _homeWorkController,
            ),
            titleText(AppStrings.learningOutComes),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.learningOutComes,
              controller: _learningOutcomesController,
            ),
            titleText(AppStrings.overallRemarks),
            CommonTextField(
              lines: 3,
              title: AppStrings.enter + AppStrings.overallRemarks,
              controller: _overallController,
            ),
            titleText(AppStrings.totalPeriods),
            CommonTextField(
              lines: 1,
              title: AppStrings.enter + AppStrings.totalPeriods,
              controller: _totalPeriodsController,
            ),
            spacer30,
            AnimatedSharedButton(
                onTap: () {},
                title: Text(
                  AppStrings.submitCapital,
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600),
                ),
                isLoading: false),
            spacer30
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

  dateSelection(TextEditingController controller) {
    return GestureDetector(
      onTap: () => _selectDate(context, controller),
      child: SizedBox(
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
            elevation: 2,
            surfaceTintColor: AppColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller,
                          enabled: false,
                          style: TextStyle(color: AppColors.black),
                          decoration: const InputDecoration(
                            hintText: 'Select a date',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.edit_calendar,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
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

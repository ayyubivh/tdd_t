import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class AttendanceMarkingScreen extends StatefulWidget {
  const AttendanceMarkingScreen({super.key});

  @override
  State<AttendanceMarkingScreen> createState() =>
      _AttendanceMarkingScreenState();
}

class _AttendanceMarkingScreenState extends State<AttendanceMarkingScreen> {
  final TextEditingController _optionController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final ValueNotifier<bool> firstButtonState = ValueNotifier<bool>(false);
  final ValueNotifier<bool> secondButtonState = ValueNotifier<bool>(false);

  DateTime _selectedDate = DateTime.now();

  void selectButton(int buttonIndex) {
    if (buttonIndex == 1) {
      firstButtonState.value = true;
      secondButtonState.value = false;
    } else if (buttonIndex == 2) {
      firstButtonState.value = false;
      secondButtonState.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.attendanceMarking),
      endDrawer: const DrawerWidget(),
      body: attendanceMarkingBody(context),
    );
  }

  attendanceMarkingBody(BuildContext context) {
    List<String> options = ['option 1', 'option 2', 'option 3'];
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.academicYear),
          CommonSmallButton(
              color: AppColors.primaryColor,
              onPress: () {},
              title: AppStrings.academicYearDynamic,
              prefixIcon: Icons.calendar_month),
          titleText(AppStrings.classTitle),
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _optionController, options),
            textController: _optionController,
            hintText: 'Select Class',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          titleText(AppStrings.division),
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _divisionController, options),
            textController: _divisionController,
            hintText: 'Select Division',
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          titleText(AppStrings.date),
          CommonGestureDetector(
            onTap: () => _selectDate(context),
            textController: _dateController,
            hintText: 'Select Date',
            icon: Icons.calendar_month,
          ),
          titleText(AppStrings.selectType),
          toggleButtons(),
          spacer30,
          AnimatedSharedButton(
              onTap: () => GoRouter.of(context)
                  .pushNamed(AppPages.classAttendanceMarkingScreen),
              title: const Text(
                AppStrings.next,
                style: TextStyle(color: Colors.white),
              ),
              isLoading: false)
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
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

  toggleButtons() {
    return SizedBox(
      height: SizeConfig.height(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: firstButtonState,
              builder: (context, isFirstButtonSelected, _) {
                return GestureDetector(
                  onTap: () {
                    selectButton(1);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: isFirstButtonSelected
                              ? AppColors.primaryColor
                              : Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      child: Center(
                          child: Text(
                        'IN',
                        style: TextStyle(
                            color: isFirstButtonSelected
                                ? AppColors.white
                                : AppColors.black),
                      ))),
                );
              },
            ),
          ),
          const VerticalDivider(
            width: 2,
          ),
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: secondButtonState,
              builder: (context, isSecondButtonSelected, _) {
                return GestureDetector(
                  onTap: () {
                    selectButton(2);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: isSecondButtonSelected
                              ? AppColors.primaryColor
                              : Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: Center(
                          child: Text('OUT',
                              style: TextStyle(
                                  color: isSecondButtonSelected
                                      ? AppColors.white
                                      : AppColors.black)))),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

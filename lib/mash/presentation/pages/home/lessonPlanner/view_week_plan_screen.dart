import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class ViewWeekPlanScreen extends StatefulWidget {
  const ViewWeekPlanScreen({super.key});

  @override
  State<ViewWeekPlanScreen> createState() => _ViewWeekPlanScreenState();
}

class _ViewWeekPlanScreenState extends State<ViewWeekPlanScreen> {
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.viewWeekPlans),
      endDrawer: const DrawerWidget(),
      body: viewWeekPlanBody(context),
    );
  }

  viewWeekPlanBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.fromDate),
          dateSelection(_fromDateController),
          titleText(AppStrings.toDate),
          dateSelection(_toDateController),
          spacer40,
          AnimatedSharedButton(
              onTap: () {},
              title: const Text(
                AppStrings.view,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              isLoading: false)
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

  dateSelection(TextEditingController controller) {
    return GestureDetector(
      onTap: () => _selectDate(context, controller),
      child: SizedBox(
        width: double.infinity,
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
}

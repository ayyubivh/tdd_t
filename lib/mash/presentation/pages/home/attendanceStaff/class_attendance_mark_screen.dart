import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class ClassAttendanceMarkingScreen extends StatefulWidget {
  const ClassAttendanceMarkingScreen({super.key});

  @override
  State<ClassAttendanceMarkingScreen> createState() =>
      _ClassAttendanceMarkingScreenState();
}

class _ClassAttendanceMarkingScreenState
    extends State<ClassAttendanceMarkingScreen> {
  @override
  void initState() {
    super.initState();
    isSelected = List.generate(10, (index) => ValueNotifier<bool>(false));
    selectedCount.value = 0;
  }

  List<ValueNotifier<bool>> isSelected = [];
  ValueNotifier<int> selectedCount = ValueNotifier(0);
  ValueNotifier<int> unselectedCount = ValueNotifier(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.dynamicClassName),
      endDrawer: const DrawerWidget(),
      body: classAttendanceBody(context),
    );
  }

  classAttendanceBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              attendanceTypes(),
              selectAllButton(),
              studentSelection()
            ],
          ),
        ),
        Positioned(bottom: 30, child: submitButton()),
      ],
    );
  }

  attendanceTypes() {
    return SizedBox(
      height: SizeConfig.height(60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.purpleLight,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '${AppStrings.present} : ',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    ValueListenableBuilder<int>(
                        valueListenable: selectedCount,
                        builder: (context, count, _) {
                          return Text(
                            count.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.green2,
                                fontSize: SizeConfig.textSize(18)),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: 5,
            color: AppColors.white,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.purpleLight,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '${AppStrings.absent} : ',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    ValueListenableBuilder<int>(
                        valueListenable: unselectedCount,
                        builder: (context, count, _) {
                          return Text(
                            count.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.cancelRed,
                                fontSize: SizeConfig.textSize(18)),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  selectAllButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppStrings.selectAll,
          style: TextStyle(fontSize: SizeConfig.textSize(18)),
        ),
      ),
    );
  }

  studentSelection() {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                ValueListenableBuilder<bool>(
                  valueListenable: isSelected[index],
                  builder: (context, value, _) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Checkbox(
                        value: value,
                        onChanged: (newValue) {
                          isSelected[index].value = newValue!;
                          if (newValue) {
                            selectedCount.value++;
                            unselectedCount.value--;
                          } else {
                            selectedCount.value--;
                            unselectedCount.value++;
                          }
                        },
                      ),
                    );
                  },
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: CachedNetworkImageProvider(
                      'https://placehold.co/600x400.png'),
                ),
                spacer10,
                Text('Name $index'),
                spacer10,
                Text('ROLL NO :  $index'),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    selectedCount.dispose();
    unselectedCount.dispose();
    for (var notifier in isSelected) {
      notifier.dispose();
    }
    super.dispose();
  }

  submitButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (BuildContext context) {
              return attendanceDialog();
            },
          );
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Text(AppStrings.markAttendance),
        ));
  }

  attendanceDialog() {
    return Dialog(
      child: SizedBox(
        height: SizeConfig.height(500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spacer20,
            const Center(
                child: Text(
              'CONFIRM ATTENDANCE',
              style: TextStyle(fontSize: 18),
            )),
            spacer10,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: attendanceTypes(),
            ),
            spacer10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                AppStrings.nameOfAbsentees,
                style: TextStyle(fontSize: 17),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Name $index'),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                height: 2,
                color: AppColors.primaryColor,
              ),
            ),
            spacer10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.close,
                        size: 15,
                      ),
                      spacerWidth4,
                      Text('CANCEL'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 15,
                      ),
                      spacerWidth4,
                      Text('SUBMIT'),
                    ],
                  ),
                ),
              ],
            ),
            spacer10
          ],
        ),
      ),
    );
  }
}

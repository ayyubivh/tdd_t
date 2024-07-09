import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import '../../../utils/app_colors.dart';

void main() {
  runApp(const MaterialApp(
    home: WeeklyTimeTable(),
  ));
}

class WeeklyTimeTable extends StatefulWidget {
  const WeeklyTimeTable({super.key});

  @override
  State<WeeklyTimeTable> createState() => _WeeklyTimeTableState();
}

class _WeeklyTimeTableState extends State<WeeklyTimeTable> {
  List<PeriodModel> periods = [];

  List<Day> daysList = [];
  @override
  void initState() {
    daysList.addAll(Day.values
        .where((element) => element != Day.sunday && element != Day.saturday));
    for (int i = 1; i <= 8; i++) {
      if (i == 3 || i == 6) {
        periods.add(PeriodModel(
            title: "Break",
            isBreak: true,
            isPeriod: true,
            startTime: DateTime.now(),
            endTime: DateTime.now().add(const Duration(minutes: 15))));
      } else {
        periods.add(PeriodModel(
            title: "Period$i",
            isPeriod: true,
            startTime: DateTime.now(),
            endTime: DateTime.now().add(const Duration(hours: 1))));
      }
    }
    for (var d in daysList) {
      for (int i = 1; i <= 8; i++) {
        if (i == 3 || i == 6) {
          periods.add(PeriodModel(
              title: "Break",
              isBreak: true,
              day: d,
              startTime: DateTime.now(),
              endTime: DateTime.now().add(const Duration(minutes: 15))));
        } else {
          periods.add(PeriodModel(
              title: "English",
              day: d,
              teacher: "Akshay",
              startTime: DateTime.now(),
              endTime: DateTime.now().add(const Duration(hours: 1))));
        }
      }
    }
    print(
        "item length ${periods.where((element) => element.isPeriod != true && element.day == Day.monday).length}");
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    print(periods.map((e) => e.toJson()));
    super.initState();
  }

  final ValueNotifier<PeriodModel?> _selectedItem = ValueNotifier(null);

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: false,
            child: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 65.0, right: 10, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: daysList
                              .map((e) => Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    padding: const EdgeInsets.all(5),
                                    height: 62,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor
                                            .withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "${e.name[0].toUpperCase()}${e.name.substring(1, 3)}",
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: periods
                                        .where((element) =>
                                            element.isPeriod == true)
                                        .map((e) => TimeTableItem(
                                              e: e,
                                              onTap: () {},
                                            ))
                                        .toList(),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      for (var d in daysList)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: periods
                                              .where((element) =>
                                                  element.isPeriod != true &&
                                                  element.day == d)
                                              .map((e) => TimeTableItem(
                                                    e: e,
                                                    onTap: () {
                                                      _selectedItem.value = e;
                                                    },
                                                  ))
                                              .toList(),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                ValueListenableBuilder(
                    valueListenable: _selectedItem,
                    builder: (context, data, child) {
                      return data == null
                          ? const SizedBox()
                          : Positioned(
                              right: 0,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                width: SizeUtility(context).width * 0.3,
                                height: SizeUtility(context).height,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        blurRadius: 5,
                                        spreadRadius: 4)
                                  ],
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          data.title,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              _selectedItem.value = null;
                                            },
                                            icon: const Icon(Icons.close))
                                      ],
                                    ),
                                    TitleValue(
                                      title: "Start Time",
                                      value: DateFormat("hh:mm")
                                          .format(data.startTime),
                                      padding: const EdgeInsets.only(left: 10),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TitleValue(
                                      title: "End Time",
                                      value: DateFormat("hh:mm")
                                          .format(data.endTime),
                                      padding: const EdgeInsets.only(left: 10),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    data.teacher == null
                                        ? const SizedBox()
                                        : TitleValue(
                                            title: "Teacher",
                                            value: data.teacher ?? "",
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                          ),
                                  ],
                                ),
                              ));
                    }),
              ],
            )));
  }
}

class TitleValue extends StatelessWidget {
  final String title;
  final String value;
  final EdgeInsets? padding;

  const TitleValue(
      {super.key, required this.title, required this.value, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                value,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TimeTableItem extends StatelessWidget {
  final PeriodModel e;
  final Function onTap;

  const TimeTableItem({super.key, required this.e, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        decoration: BoxDecoration(
            color: e.isBreak == true
                ? Colors.green.withOpacity(0.6)
                : e.isPeriod == true
                    ? Colors.blue.withOpacity(0.5)
                    : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        height: e.isPeriod == true ? 30 : 60,
        width: e.isBreak == true ? 50 : 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              e.isBreak == true
                  ? e.isPeriod == true
                      ? "Break"
                      : "${e.endTime.difference(e.startTime).inMinutes} Min"
                  : e.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: e.isPeriod != true || e.isBreak != true
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PeriodModel {
  final String title;
  final bool? isPeriod;
  final DateTime startTime;
  final DateTime endTime;
  final Day? day;
  final String? teacher;
  final bool? isBreak;

  PeriodModel(
      {required this.title,
      required this.startTime,
      required this.endTime,
      this.teacher,
      this.isBreak,
      this.isPeriod,
      this.day})
      : assert(isPeriod != true || day == null,
            "if is period is true don't enter day"),
        assert(isPeriod == true || day != null,
            "if not a period day must be entered ");

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isPeriod': isPeriod,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'day': day?.name,
      'teacher': teacher,
      'isBreak': isBreak,
    };
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class HorizontalCalendarWidget extends StatefulWidget {
   String date;
   HorizontalCalendarWidget({super.key, required this.date});

  @override
  State<HorizontalCalendarWidget> createState() =>
      _HorizontalCalendarWidgetState();
}

class _HorizontalCalendarWidgetState extends State<HorizontalCalendarWidget> {
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  late ScrollController _scrollController;
  @override
  void initState() {
    currentMonthList = _getDatesInMonth(currentDateTime);

    _scrollController =
        ScrollController(initialScrollOffset: 68.0 * currentDateTime.day);
    super.initState();
  }

  List<DateTime> _getDatesInMonth(DateTime month) {
    final List<DateTime> dates = [];
    final int daysInMonth = DateTime(month.year, month.month + 1, 0).day;

    for (int i = 1; i <= daysInMonth; i++) {
      dates.add(DateTime(month.year, month.month, i));
    }
    prettyPrint(dates.toString());
    return dates;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: currentMonthList.length,
        itemBuilder: (context, index) {
          bool isSameDay = currentMonthList[index].day == currentDateTime.day;
          return GestureDetector(
            onTap: () {
              setState(() {
                currentDateTime = currentMonthList[index];
                var parsedDate = DateTime.parse(currentDateTime.toString());
                String convertedDate =  DateFormat("dd-MM-yyyy").format(parsedDate);
                widget.date = convertedDate;
                print('************ date *************');
                print(widget.date);
              });
            },
            child: Card(
              shadowColor: AppColors.primaryColor,
              elevation: 2,
              color: isSameDay
                  ? AppColors.purple200.withOpacity(0.7)
                  : AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      DateFormat.MMM().format(currentMonthList[index]),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: isSameDay ? AppColors.white : AppColors.greyText,
                      ),
                    ),
                    Text(
                      currentMonthList[index].day.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isSameDay ? AppColors.white : AppColors.black,
                      ),
                    ),
                    Text(
                      DateFormat.E().format(currentMonthList[index]),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: isSameDay ? AppColors.white : AppColors.greyText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => spacer20,
      ),
    );
  }
}

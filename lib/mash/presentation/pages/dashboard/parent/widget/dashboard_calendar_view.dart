import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class DashboardCalendarView extends StatefulWidget {
  const DashboardCalendarView({super.key});

  @override
  State<DashboardCalendarView> createState() => _DashboardCalendarViewState();
}

class _DashboardCalendarViewState extends State<DashboardCalendarView> {
  DateTime _selectedDate = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final Map<DateTime, List<String>> _events = {
    DateTime.utc(2024, 5, 12): ['Event A', 'Event B'],
    DateTime.utc(2024, 5, 13): ['Event C'],
    DateTime.utc(2024, 5, 14): ['Event D', 'Event E', 'Event F'],
  };
  List<String> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Event Calendar'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2015, 10, 16),
              lastDay: DateTime.now().add(const Duration(days: 365)),
              focusedDay: DateTime.now(),
              rowHeight: 60,
              selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
              calendarFormat: _calendarFormat,
              calendarBuilders: CalendarBuilders(
                // markerBuilder: (context, day, events) => Container(
                //   height: 5,
                //   width: 5,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Colors.amber,
                //   ),
                // ),
                defaultBuilder: (context, day, focusedDay) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      // shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        day.day.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              eventLoader: _getEventsForDay,
              headerStyle: HeaderStyle(
                  headerMargin: const EdgeInsets.symmetric(vertical: 20),
                  formatButtonDecoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(9),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor.withOpacity(0.4),
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ])),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                });
              },
            ),
            spacer20,
            Expanded(
              child: ListView(
                children: _getEventsForDay(_selectedDate).map((event) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: AppColors.primaryColor,
                        )),
                    child: ListTile(
                      title: Text(event),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

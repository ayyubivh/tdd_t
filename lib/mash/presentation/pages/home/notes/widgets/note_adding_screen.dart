import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/widgets/schedule_item.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import 'horizontal_calendar_widget.dart';

class NoteAddingTeacherScreen extends StatelessWidget {
  const NoteAddingTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.notes),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            // HorizontalCalendarWidget(),
            spacer20,
            ScheduleItem(),
          ],
        ),
      ),
    );
  }
}

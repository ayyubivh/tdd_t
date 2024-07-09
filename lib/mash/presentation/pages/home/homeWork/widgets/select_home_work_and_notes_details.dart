import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_work_field.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../../manager/bloc/academic_bloc/academic_bloc.dart';
import '../../../../utils/enums.dart';

class HomeWorkAndNoteSelectDetailsScreen extends StatefulWidget {
  final HomeWorkAndNoteScreenType screenType;

  const HomeWorkAndNoteSelectDetailsScreen({
    super.key,
    required this.screenType,
  });

  @override
  State<HomeWorkAndNoteSelectDetailsScreen> createState() =>
      _HomeWorkAndNoteSelectDetailsScreenState();
}

class _HomeWorkAndNoteSelectDetailsScreenState
    extends State<HomeWorkAndNoteSelectDetailsScreen> {
  @override
  void initState() {
    super.initState();

    AcademicBloc.get(context)
      ..add(const AcademicEvent.getAcademicSubjects())
      ..add(const AcademicEvent.disposeEvent());
  }

  @override
  Widget build(BuildContext context) {
    prettyPrint("Screen type: ${widget.screenType}");

    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.selectDetails),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HelperClasses.getSelectedStudent(context, true),
            spacer15,
            BlocBuilder<AcademicBloc, AcademicState>(
              builder: (context, state) {
                final selectedSubject = state.selectedSubject;
                return CustomHomeWorkField(
                  title: AppStrings.chooseSubject,
                  name: selectedSubject.isEmpty
                      ? AppStrings.chooseSubject
                      : selectedSubject,
                  onTap: () => _showBottomSheet(context),
                );
              },
            ),
            spacer10,
            BlocBuilder<AcademicBloc, AcademicState>(
              builder: (context, state) {
                final fromDate = state.selectedRange?.fromDate;
                final toDate = state.selectedRange?.toDate;
                return Row(
                  children: [
                    Expanded(
                      child: CustomHomeWorkField(
                        title: AppStrings.fromDate,
                        name: fromDate ?? AppStrings.fromDate,
                        onTap: () => _selectDate(context, AppStrings.fromDate),
                      ),
                    ),
                    spacerWidth10,
                    Expanded(
                      child: CustomHomeWorkField(
                        title: AppStrings.toDate,
                        name: toDate ?? AppStrings.toDate,
                        onTap: () => _selectDate(context, AppStrings.toDate),
                      ),
                    ),
                  ],
                );
              },
            ),
            spacer20,
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                ),
                onPressed: () {
                  context.pushNamed(
                    AppPages.homeWorksAndNoteViewScreen,
                    extra: widget.screenType,
                  );
                },
                child: const Text('View'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectDate(BuildContext context, String dateType) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now().subtract(const Duration(days: 2000)),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (selectedDate != null) {
      BlocProvider.of<AcademicBloc>(context).add(
        AcademicEvent.selectDateRangeEvent(
          date: selectedDate,
          dateType: dateType,
        ),
      );
    }
  }

  void _showBottomSheet(BuildContext context) {
    commonBottomSheet(
      context,
      title: AppStrings.chooseSubject,
      child: BlocBuilder<AcademicBloc, AcademicState>(
        builder: (context, state) {
          final data = state.academicSubjects.data;
          if (data == null || state.academicSubjects.status == Status.LOADING) {
            return const Loader();
          } else {
            List<String> subNames = [AppStrings.allSubjects];
            subNames.addAll(data.map((e) => e?.subName ?? ""));

            if (data.isEmpty) {
              return HelperClasses.emptyDataWidget();
            } else {
              return ListView.builder(
                itemCount: subNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      BlocProvider.of<AcademicBloc>(context).add(
                        AcademicEvent.selectSubjectEvent(
                          subNames[index],
                          index > 0 ? data[index - 1]?.subjectId ?? "" : "0",
                        ),
                      );
                      context.pop();
                    },
                    title: Text(
                      subNames[index],
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(16),
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: AppColors.blackOverlay,
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}

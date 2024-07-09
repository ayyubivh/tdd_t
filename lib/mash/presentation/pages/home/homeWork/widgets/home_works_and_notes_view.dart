import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/notes/notes_report_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';
import '../../../../../../core/response_classify.dart';
import '../../../../utils/app_colors.dart';
import 'home_work_view_card_widget.dart';

class HomeworksAndNoteView extends StatefulWidget {
  final HomeWorkAndNoteScreenType screenType;

  const HomeworksAndNoteView({super.key, required this.screenType});

  @override
  State<HomeworksAndNoteView> createState() => _HomeworksAndNoteViewState();
}

class _HomeworksAndNoteViewState extends State<HomeworksAndNoteView> {
  @override
  void initState() {
    final academicState = context.read<AcademicBloc>().state;

    final bloc = HomeWorkNotesBloc.get(context);
    final userDetails = context.read<ProfileBloc>().state.getUserDetail?.data;
    final event = widget.screenType == HomeWorkAndNoteScreenType.homeworkScreen
        ? HomeWorkNotesEvent.getHomeWorkReportEvent(
            subId: academicState.selectedSubjectId,
            startDate: academicState.selectedRange?.fromDate ?? "",
            endDate: academicState.selectedRange?.toDate ?? '',
            classId: userDetails?.classId ?? '',
            divId: userDetails?.divisionId ?? '',
          )
        : HomeWorkNotesEvent.getNotesWorkReport(
            startDate: academicState.selectedRange?.fromDate ?? "",
            endDate: academicState.selectedRange?.toDate ?? '',
            subjectId: academicState.selectedSubjectId,
            classId: userDetails?.classId ?? '',
            divId: userDetails?.divisionId ?? "",
          );
    bloc.add(event);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isHomeWork =
        widget.screenType == HomeWorkAndNoteScreenType.homeworkScreen;

    return Scaffold(
      appBar: commonAppbar(
        title: isHomeWork ? AppStrings.homeWorks : AppStrings.notes,
      ),
      endDrawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<HomeWorkNotesBloc, HomeWorkNotesState>(
          builder: (context, state) {
            //home work state
            final homeWorkData = state.homeWorkReportResponse;
            final homeWorkDataStatus = homeWorkData.status;
            final homeWorkDataItems = homeWorkData.data;

            //note state
            final notesData = state.noteWorkReportResponse;
            final notesDataStatus = notesData.status;
            final notesDataItems = notesData.data;

            if (homeWorkDataStatus == Status.initial ||
                homeWorkDataStatus == Status.LOADING ||
                notesDataStatus == Status.initial ||
                notesDataStatus == Status.LOADING) {
              return const Loader();
            } else if (homeWorkDataItems?.isEmpty == true ||
                notesDataItems?.isEmpty == true) {
              return HelperClasses.emptyDataWidget();
            } else {
              return ListView.separated(
                itemCount: isHomeWork
                    ? homeWorkDataItems?.length ?? 0
                    : notesDataItems?.length ?? 0,
                separatorBuilder: (context, index) => spacer10,
                itemBuilder: (context, index) {
                  final item = homeWorkDataItems?[index];
                  return isHomeWork
                      ? HomeworkCard(
                          subject: item?.description ?? "",
                          task: item?.document ?? "",
                          assignedDate: item?.createdDate ?? "",
                          submissionDate: item?.submitDate ?? "",
                          onTap: () {
                            if (widget.screenType ==
                                HomeWorkAndNoteScreenType.homeworkScreen) {
                              context.pushNamed(
                                  AppPages.homeWorksViewDetailsScreen,
                                  extra: item?.workId);
                            } else {
                              context.pushNamed(AppPages.noteViewDetails,
                                  extra: item?.workId);
                            }
                          },
                        )
                      : NotesTile(
                          notesData: notesDataItems!,
                          index: index,
                        );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class NotesTile extends StatelessWidget {
  const NotesTile({
    super.key,
    required this.notesData,
    required this.index,
  });

  final List<NotesReportEntity> notesData;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        GoRouter.of(context).pushNamed(
          AppPages.noteViewDetails,
          extra: notesData[index].topicId,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          // border: Border.all(),
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.4),
              offset: const Offset(1, 2),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            notesData[index].subjectTopic == ""
                ? "No Data"
                : notesData[index].subjectTopic,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          spacer4,
          Text(
            notesData[index].notesOnTopic,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                notesData[index].dateOnNoteAssigned,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    AppStrings.details,
                    style: TextStyle(
                      fontSize: SizeConfig.textSize(15),
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}

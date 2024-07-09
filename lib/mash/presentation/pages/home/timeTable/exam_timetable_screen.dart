import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';

import '../../../../domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import '../../../manager/bloc/time_table_bloc/time_table_bloc.dart';
import '../../../widgets/drawer_widget.dart';

class ExamTimeTableScreen extends StatefulWidget {
  const ExamTimeTableScreen({super.key});

  @override
  State<ExamTimeTableScreen> createState() => _ExamTimeTableScreenState();
}

class _ExamTimeTableScreenState extends State<ExamTimeTableScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.examTimeTable),
      endDrawer: const DrawerWidget(),
      body: const OfflineExamTimeTableBody(),
    );
  }
}

class OfflineExamTimeTableBody extends StatefulWidget {
  const OfflineExamTimeTableBody({super.key});

  @override
  State<OfflineExamTimeTableBody> createState() =>
      _OfflineExamTimeTableBodyState();
}

class _OfflineExamTimeTableBodyState extends State<OfflineExamTimeTableBody> {
  final TextEditingController _termController = TextEditingController();
  int selectedIndex = 0;
   late ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = ProfileBloc.get(context);
    super.initState();

    TimeTableBloc.get(context).add(
        TimeTableEvent.getOfflineExamTerms(selectedUserId: profileBloc.state.getUserDetail?.data?.usrId??""));

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          HelperClasses.getSelectedStudent(context, true,listenFunction: (String selectedUser){
            TimeTableBloc.get(context).add(
                 TimeTableEvent.getOfflineExamTerms(selectedUserId: selectedUser));
          }
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.selectTerm,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              )),
          spacer10,
          BlocConsumer<TimeTableBloc, TimeTableState>(
            listener: (BuildContext context, TimeTableState state) {
              if (state.getOfflineExamTerms?.status == Status.ERROR) {
                handleErrorUi(
                    context: context, error: state.getOfflineExamTerms?.error);
              }
            },
            builder: (context, state) {
              return CommonGestureDetector(
                onTap: () {
                  _openOptionsBottomSheet(context, _termController,
                      state.getOfflineExamTerms?.data ?? []);
                },
                textController: _termController,
                hintText: AppStrings.selectTerm,
                icon: Icons.arrow_drop_down_circle_sharp,
              );
            },
          ),
          spacer10,
          _syllabusList()
        ],
      ),
    );
  }

  void _openOptionsBottomSheet(BuildContext context,
      TextEditingController controller,
      List<OfflineTimeTableTermEntity> optionList) {
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
                  AppStrings.selectTerm,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: optionList.length ?? 0,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(optionList[index].sectionName),
                          onTap: () {
                            var data = context.read<TimeTableBloc>().state;
                            TimeTableBloc.get(context).add(
                                TimeTableEvent.getOfflineExamTimeTable(termId: data.getOfflineExamTerms?.data?[index].termId ?? '', isInit: false, selectedUserId: profileBloc.state.getUserDetail?.data?.usrId??""));
                            controller.text = optionList[index].sectionName;
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

  _syllabusList() {
    return Expanded(
      flex: 1,
      child: BlocConsumer<TimeTableBloc,TimeTableState>(
        listener: (BuildContext context, TimeTableState state) {
          if (state.getOfflineExamTimeTable?.status == Status.ERROR) {
            handleErrorUi(
                context: context, error: state.getOfflineExamTimeTable?.error);
          }
        },
        builder: (context, state) {
          return state.getOfflineExamTimeTable?.data?.length == 0 ?
          Center(child: HelperClasses.emptyDataWidget()) : ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return spacer10;
              },
              itemCount: state.getOfflineExamTimeTable?.data?.length ?? 0,
              itemBuilder: (context, index) {
                return examTableCard(
                    state.getOfflineExamTimeTable?.data?.length ?? 0,
                    state.getOfflineExamTimeTable?.data?[index].subjectName ?? '',
                    state.getOfflineExamTimeTable?.data?[index].portions);
              });
        },
      ),
    );
  }

  examTableCard(int itemCount, String itemName,  items) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: const Offset(0, 0),
                  )
                ]),
            height: itemCount * 40 + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      itemName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(
                    height: 2,
                    color: AppColors.primaryColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: Row(
                    children: [
                      const Text(
                        'Exam Date - ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'hjgvgf',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Exam Portions - ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: itemCount * 40,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                    padding: const EdgeInsets.only(left: 15),
                                    height: 40,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(items[index]),
                                    ));
                              },
                              itemCount: items.length,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/widgets/calendar_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

class DailyTimeTableScreen extends StatefulWidget {
  const DailyTimeTableScreen({super.key});

  @override
  State<DailyTimeTableScreen> createState() => _DailyTimeTableScreenState();
}

class _DailyTimeTableScreenState extends State<DailyTimeTableScreen> {
  String date = DateTime.now().toString();

  @override
  void initState() {
    super.initState();
    dateVariable();
    TimeTableBloc.get(context)
        .add(TimeTableEvent.getDailyTimeTable(date: date));
  }

  String dateVariable() {
    var parsedDate = DateTime.parse(date.toString());
    String convertedDate = DateFormat("dd-MM-yyyy").format(parsedDate);
    setState(() {
      date = convertedDate;
    });
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.dailyTimeTable),
      body: DailyTimeTableBody(date: date),
    );
  }
}

class DailyTimeTableBody extends StatelessWidget {
  final String date;

  const DailyTimeTableBody({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    bool isAttended = true;
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          TimeTableCalendarWidget(
            date: date,
          ),
          spacer10,
          Expanded(
            child: BlocBuilder<TimeTableBloc, TimeTableState>(
              builder: (context, state) {
                return state.getDailyTimeTable?.data?.isNotEmpty == true
                    ? ListView.separated(
                        separatorBuilder: (context, index) {
                          return spacer7;
                        },
                        itemCount: state.getDailyTimeTable?.data?.length ?? 0,
                        itemBuilder: (context, index) {
                          return state.getDailyTimeTable?.status ==
                                  Status.LOADING
                              ? const Center(
                                  child: SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: CircularProgressIndicator(),
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: state.getDailyTimeTable?.data?[index]
                                                .attnStatus ==
                                            '0'
                                        ? Colors.red.shade50
                                        : Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.purple.withOpacity(0.6),
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                  ),
                                  child: Theme(
                                      data: Theme.of(context).copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.getDailyTimeTable!
                                                  .data![index].subName,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            spacer7,
                                            Text(
                                              state
                                                          .getDailyTimeTable
                                                          ?.data?[index]
                                                          .attnStatus ==
                                                      '0'
                                                  ? 'Class not attended'
                                                  : 'Class attended',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: AppColors.barRed),
                                            ),
                                            spacer7,
                                            Text(
                                              state.getDailyTimeTable!
                                                  .data![index].fullName,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: AppColors.greyText),
                                            ),
                                            spacer7,
                                            Text(
                                              "${state.getDailyTimeTable?.data?[index].startTime} - ${state.getDailyTimeTable!.data![index].endTime}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        children: <Widget>[
                                          ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 6,
                                                  backgroundColor:
                                                      AppColors.white),
                                              icon: Icon(
                                                Icons.file_copy_outlined,
                                                color: AppColors.black,
                                              ),
                                              onPressed: () {
                                                GoRouter.of(context).pushNamed(
                                                    AppPages
                                                        .homeWorksAndNoteViewScreen,extra: HomeWorkAndNoteScreenType.homeworkScreen);
                                              },
                                              label: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                child: Text(
                                                  AppStrings.homeWorksCapital,
                                                  style: TextStyle(
                                                      color: AppColors.black),
                                                ),
                                              )),
                                          spacer10,
                                          const Divider(),
                                          spacer10,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    '${AppStrings.teacher} - ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    state.getDailyTimeTable!
                                                        .data![index].fullName,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CommonIconButton(
                                                      icon: Icons.call_outlined,
                                                      // onTap: () => _launchCaller(state.getDailyTimeTable!.data![index].primaryMobile),
                                                      onTap: () => HelperClasses
                                                              .showDialogWithButton(
                                                            context: context,
                                                          )),
                                                  CommonIconButton(
                                                      icon: Icons
                                                          .message_outlined,
                                                      onTap: () {
                                                        GoRouter.of(context)
                                                            .pushNamed(AppPages
                                                                .chatsListScreen);
                                                      }),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )));
                        })
                    : noData();
              },
            ),
          )
        ],
      ),
    );
  }

  noData() {
    return Center(
      child: SvgPicture.asset(
        'assets/images/app_no_data.svg',
        height: SizeConfig.height(250),
      ),
    );
  }

  _launchCaller(number) async {
    var url = "tel:$number";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

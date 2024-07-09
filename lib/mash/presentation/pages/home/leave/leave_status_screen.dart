import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/default_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/enums.dart';
import '../../../widgets/buttons/icon_button.dart';

class LeaveStatusScreen extends StatefulWidget {
  const LeaveStatusScreen({super.key});

  @override
  LeaveStatusScreenState createState() => LeaveStatusScreenState();
}

class LeaveStatusScreenState extends State<LeaveStatusScreen> {
  int selectedIndex = 0;
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<String> _leaveStatus = ['All'];

  @override
  void initState() {
    super.initState();
    context.read<LeaveBloc>().add(
          LeaveEvent.getLeaveStatus(
            studentId: context
                    .read<ProfileBloc>()
                    .state
                    .getUserDetail
                    ?.data
                    ?.studentId ??
                "",
            studentLeaveStatus: 5,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.leaveStatus),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            selectClassTitle(),
            dropDown(),
            detailList(),
          ],
        ),
      ),
      endDrawer: const DrawerWidget(),
    );
  }

  Widget selectClassTitle() => const Padding(
        padding: EdgeInsets.only(left: 15.0, bottom: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Class',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      );

  Widget dropDown() {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 8.0, top: 8),
        child: BlocBuilder<LeaveBloc, LeaveState>(
          builder: (context, state) {
            int totalCount = 0;
            state.leaveStatusResponse.data?.leaveStatusCounts.forEach((e) {
              totalCount += int.parse(e.count ?? '0');
            });

            List<String> count = [totalCount.toString()];

            _leaveStatus.clear();
            _leaveStatus = ['All'];
            _leaveStatus.addAll(state
                    .leaveStatusResponse.data?.leaveStatusCounts
                    .map((e) => e.leaveStatus ?? "") ??
                []);

            count.addAll(state.leaveStatusResponse.data?.leaveStatusCounts
                    .map((e) => e.count ?? "") ??
                []);

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _leaveStatus.length,
              itemBuilder: (context, index) {
                return state.leaveStatusResponse.data?.leaveStatusCounts == null
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomShimmerWidget(
                          height: 40,
                          width: 90,
                          borderRadius: 30,
                        ),
                      )
                    : buttons(index, _leaveStatus[index], count[index]);
              },
            );
          },
        ),
      ),
    );
  }

  Widget buttons(int index, String title, String count) {
    return Padding(
      padding: const EdgeInsets.all(2.0).copyWith(right: 10),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = (selectedIndex == index) ? -1 : index;
          });

          context.read<LeaveBloc>().add(
                LeaveEvent.getLeaveStatus(
                  studentId: context
                          .read<ProfileBloc>()
                          .state
                          .getUserDetail
                          ?.data
                          ?.studentId ??
                      "",
                  studentLeaveStatus: title == LeaveStatusType.Requested.name
                      ? 0
                      : title == LeaveStatusType.Cancel.name
                          ? 1
                          : title == LeaveStatusType.Sanctioned.name
                              ? 2
                              : title == LeaveStatusType.Rejected.name
                                  ? 3
                                  : 5,
                ),
              );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              index == selectedIndex ? AppColors.primaryColor : AppColors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Row(
          children: [
            if (index == selectedIndex)
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  count,
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: index == selectedIndex
                    ? AppColors.white
                    : AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailList() {
    return Expanded(
      child: BlocBuilder<LeaveBloc, LeaveState>(
        builder: (context, state) {
          final data = state.leaveStatusResponse.data?.leaveDetails;

          return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => spacer20,
            itemCount: data?.length ?? 0,
            padding: const EdgeInsets.only(top: 20),
            itemBuilder: (context, index) {
              final value = data?[index];

              final leaveStatus =
                  getLeaveStatusType(value?.studentLeaveStt ?? "");
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushNamed(
                    AppPages.leaveDetailsScreen,
                    extra: {
                      'leaveStatusId': value?.leaveDetailsId,
                      'leaveStatus': value?.studentLeaveStatus,
                    },
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.greyClr100,
                    border: Border.all(color: AppColors.white),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryColor.withOpacity(0.4),
                        offset: const Offset(1, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              value?.leaveReason ?? '',
                              style: TextStyle(
                                fontSize: SizeConfig.textSize(15),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          _statusWidget(leaveStatus),
                        ],
                      ),
                      const SizedBox(height: 10),
                      if (leaveStatus == LeaveStatusType.Requested)
                        SizedBox(
                          height: 30,
                          child: DefaultButton(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        right: -30,
                                        top: -30,
                                        child: InkResponse(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: AppColors.redColor,
                                            child: Icon(
                                              Icons.close,
                                              size: 20,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Form(
                                        key: _formKey,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              'Cancelling Leave',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Divider(),
                                            const SizedBox(height: 10),
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: TextFormField(
                                                controller: _controller,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: AppColors
                                                            .primaryColor),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: AppColors
                                                            .primaryColor),
                                                  ),
                                                  border:
                                                      const OutlineInputBorder(),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: AppColors
                                                            .cancelRed),
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Please enter reason';
                                                  }
                                                  return null;
                                                },
                                                maxLines: 6,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: CustomIconButton(
                                                icon: '',
                                                color: AppColors.primaryColor
                                                    .withOpacity(0.2),
                                                elevation: 0,
                                                onTap: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    Navigator.of(context).pop();
                                                    final title =
                                                        _leaveStatus[index];
                                                    BlocProvider.of<LeaveBloc>(
                                                            context)
                                                        .add(
                                                      LeaveEvent.cancelLeave(
                                                        reason:
                                                            _controller.text,
                                                        leaveDetailsId: data?[
                                                                    index]
                                                                .leaveDetailsId ??
                                                            '',
                                                        studentId: context
                                                                .read<
                                                                    ProfileBloc>()
                                                                .state
                                                                .getUserDetail
                                                                ?.data
                                                                ?.studentId ??
                                                            "",
                                                        leaveStatus: title ==
                                                                LeaveStatusType
                                                                    .Requested
                                                                    .name
                                                            ? 0
                                                            : title ==
                                                                    LeaveStatusType
                                                                        .Cancel
                                                                        .name
                                                                ? 1
                                                                : title ==
                                                                        LeaveStatusType
                                                                            .Sanctioned
                                                                            .name
                                                                    ? 2
                                                                    : title ==
                                                                            LeaveStatusType.Rejected.name
                                                                        ? 3
                                                                        : 5,
                                                      ),
                                                    );
                                                  }
                                                },
                                                name: 'Submit',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            title: 'Cancel',
                            color: AppColors.redColor.withOpacity(0.2),
                            textColor: AppColors.redColor.withOpacity(0.7),
                            isBorder: true,
                          ),
                        ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'View Details',
                              style: TextStyle(
                                color: AppColors.purple700,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.purple700,
                              size: 12,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _statusWidget(LeaveStatusType status) {
    IconData icon;
    Color color;

    switch (status) {
      case LeaveStatusType.Sanctioned:
        icon = Icons.check_circle;
        color = AppColors.darkGreen;
        break;
      case LeaveStatusType.Requested:
        icon = Icons.hourglass_empty;
        color = Colors.green.withOpacity(0.5);
        break;
      case LeaveStatusType.Cancel:
        icon = Icons.cancel;
        color = Colors.redAccent.withOpacity(0.4);
        break;
      case LeaveStatusType.Rejected:
        icon = Icons.close;
        color = Colors.red.withOpacity(0.7);
        break;
      default:
        icon = Icons.help;
        color = Colors.grey;
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 16, color: AppColors.white),
          const SizedBox(width: 5),
          Text(
            status.name,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/home/widgets/progress_indicator_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

import '../../../../../../core/response_classify.dart';

class SubjectPerformanceWidget extends StatelessWidget {
  const SubjectPerformanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
      listenWhen: (previous, current) =>
          previous.selectedTermIndex != current.selectedTermIndex ||
          previous.termDetailsResponse?.status !=
                  current.termDetailsResponse?.status &&
              current.termDetailsResponse?.data != null,
      listener: (context, state) {
        _updateScoreboard(context, state);
      },
      builder: (context, state) {
        return BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              current.getUserDetail?.status != previous.getUserDetail?.status,
          listener: (context, profileState) {
            if (profileState.getUserDetail?.status == Status.COMPLETED) {
              _updateScoreboard(context, state, profileState: profileState);
            }
          },
          child: Column(
            children: [
              _buildTitle(),
              spacer20,
              _buildScoreList(context, state),
            ],
          ),
        );
      },
    );
  }

  void _updateScoreboard(BuildContext context, DashboardState state,
      {ProfileState? profileState}) {
    final studentId = profileState?.getUserDetail?.data?.usrId ??
        context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ??
        "";
    if (studentId.isNotEmpty) {
      BlocProvider.of<DashboardBloc>(context).add(
        DashboardEvent.getScoreboardDetailsEvent(
          termId: state
                  .termDetailsResponse?.data?[state.selectedTermIndex].termId ??
              "",
          studentId: studentId,
        ),
      );
    }
  }

  Widget _buildTitle() {
    return const Row(
      children: [
        Text(
          'Subject',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Marks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildScoreList(BuildContext context, DashboardState state) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: state.scoreBoardResponse.data?.resTable.length ?? 0,
      itemBuilder: (context, index) {
        final data = state.scoreBoardResponse.data?.resTable[index];
        final progressInfo = _calculateProgress(data);
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                data?.subjectName ?? '',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ProgressIndicatorWidget(
                    initialValue: progressInfo['progressValue'],
                    progressIndicatorType: ProgressIndicatorType.linear,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 2),
                      child: Text(
                        progressInfo['value'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => spacer10,
    );
  }

  Map<String, dynamic> _calculateProgress(data) {
    if (data?.obtainedMarks == "AB") {
      return {'progressValue': 0.0, 'value': 'Absent'};
    }
    final totalMark = double.parse(data?.totalMarks ?? '0');
    final obtdMark = double.parse(data?.obtainedMarks ?? '0');
    final progressValue = (obtdMark / totalMark);
    final value = '${obtdMark.toInt()}/${totalMark.toInt()}';
    return {'progressValue': progressValue, 'value': value};
  }
}

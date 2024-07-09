import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/manager/cubit/pdf_download/pdf_download_cubit.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../../core/response_classify.dart';
import '../../../router/app_pages.dart';
import '../../../utils/helper_classes.dart';

class LeaveStatusDetailsScreen extends StatefulWidget {
  final String leaveStatusId;
  final String leaveStatus;

  const LeaveStatusDetailsScreen({
    super.key,
    required this.leaveStatusId,
    required this.leaveStatus,
  });

  @override
  State<LeaveStatusDetailsScreen> createState() =>
      _LeaveStatusDetailsScreenState();
}

class _LeaveStatusDetailsScreenState extends State<LeaveStatusDetailsScreen> {
  @override
  void initState() {
    super.initState();
    final studentId = BlocProvider.of<ProfileBloc>(context)
        .state
        .getUserDetail
        ?.data
        ?.studentId;
    if (studentId != null) {
      BlocProvider.of<LeaveBloc>(context).add(LeaveEvent.getLeaveStatusDetails(
        leaveStatus: widget.leaveStatus,
        leaveStatusId: widget.leaveStatusId,
        studentId: studentId,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Details'),
      body: SingleChildScrollView(
        child: BlocListener<PdfDownloadCubit, PdfDownloadState>(
            listenWhen: (previous, current) =>
                previous.pdfDownloadResponse.status !=
                current.pdfDownloadResponse.status,
            listener: (context, state) {
              if (state.pdfDownloadResponse.status == Status.COMPLETED) {
                GoRouter.of(context).pushNamed(AppPages.pdfViewScreen,
                    extra: state.pdfDownloadResponse.data);
              } else if (state.pdfDownloadResponse.status == Status.ERROR) {
                HelperClasses.showSnackBar(
                    msg: state.pdfDownloadResponse.error);
              }
            },
            child: BlocBuilder<LeaveBloc, LeaveState>(
              builder: (context, state) {
                final data = state.leaveDetailsResponse.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.primaryColor,
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: Text(
                        data?.studentName ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailRow(
                                  title: 'Leave Reason',
                                  value: data?.leaveReason ?? ""),
                              const Divider(),
                              DateRow(
                                titleFrom: 'From Date',
                                valueFrom: data?.leaveFromDate ?? "",
                                titleTo: 'To Date',
                                valueTo: data?.leaveToDate ?? "",
                              ),
                              const Divider(),
                              DateRow(
                                titleFrom: 'Requested Date',
                                valueFrom: data?.studRequestDate ?? "",
                                titleTo: 'Total No. Days',
                                valueTo: data?.leaveDaysCount ?? "",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          const Text(
                            'Attachments',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          spacer10,
                          const Divider(),
                          spacer10,
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text(
                                  data?.extension ?? "",
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 0,
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      BlocProvider.of<PdfDownloadCubit>(context)
                                          .downloadPdf(
                                              filePath:
                                                  data?.documentName ?? "",
                                              document: data?.extension ?? "");
                                    },
                                    child: Text(
                                      'view',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.purple500,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailRow({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class DateRow extends StatelessWidget {
  final String titleFrom;
  final String valueFrom;
  final String titleTo;
  final String valueTo;

  const DateRow({
    required this.titleFrom,
    required this.valueFrom,
    required this.titleTo,
    required this.valueTo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleFrom,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  valueFrom,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleTo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  valueTo,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../../domain/entities/notes/notes_details_entity.dart';
import '../../../../../domain/entities/profile/student_detail_entity.dart';
import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';
import '../../../../manager/cubit/pdf_download/pdf_download_cubit.dart';
import '../../../../router/app_pages.dart';

class HomeWorkViewDetailsScreen extends StatefulWidget {
  final String id;

  const HomeWorkViewDetailsScreen({super.key, required this.id});

  @override
  HomeWorkViewDetailsScreenState createState() =>
      HomeWorkViewDetailsScreenState();
}

class HomeWorkViewDetailsScreenState extends State<HomeWorkViewDetailsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeWorkNotesBloc>(context)
        .add(HomeWorkNotesEvent.getHomeWorkDetails(workId: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<ProfileBloc>().state.getUserDetail?.data;

    return Scaffold(
      appBar: commonAppbar(title: AppStrings.details),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: BlocListener<PdfDownloadCubit, PdfDownloadState>(
          listenWhen: (previous, current) =>
              previous.pdfDownloadResponse.status !=
              current.pdfDownloadResponse.status,
          listener: (context, state) {
            if (state.pdfDownloadResponse.status == Status.COMPLETED) {
              HelperClasses.showSnackBar(msg: 'Downloaded!');
              GoRouter.of(context).pushNamed(AppPages.pdfViewScreen,
                  extra: state.pdfDownloadResponse.data);
            } else if (state.pdfDownloadResponse.status == Status.ERROR) {
              HelperClasses.showSnackBar(msg: state.pdfDownloadResponse.error);
            }
          },
          child: BlocBuilder<HomeWorkNotesBloc, HomeWorkNotesState>(
            builder: (context, state) {
              final data = state.homeWorkReportDetailResponse;

              if (data.status == Status.LOADING ||
                  data.data == null && data.status != Status.ERROR) {
                return const Loader();
              } else if (data.data?.restable1?.isEmpty == true ||
                  data.data?.restable1 == null &&
                      data.data?.resTable2 == null) {
                return HelperClasses.emptyDataWidget();
              } else {
                final entity = data.data?.restable1?.first;
                return _buildDetails(entity, data.data?.resTable2?.first, user);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildDetails(
    NotesDetailsResTable1Entity? entity,
    NotesDetailsResTable2Entity? table2,
    StudentDetailEntity? user,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRow(
          context,
          label: 'Subject',
          value: entity?.subName ?? "",
          isEnd: false,
        ),
        spacer20,
        _buildRow(
          context,
          label: 'Submission Date',
          value: entity?.submitDate ?? '',
          isEnd: true,
        ),
        spacer20,
        _buildRow(
          context,
          label: 'Class',
          value: '${user?.className} ${user?.divisionName}',
          isEnd: false,
        ),
        spacer20,
        _buildRow(
          context,
          label: 'Type',
          value: entity?.classId ?? "",
          isEnd: true,
        ),
        spacer30,
        Text(
          AppStrings.homeWorkDetails,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        spacer20,
        Container(
          width: double.infinity,
          height: SizeUtility(context).height / 3,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Text(
            entity?.wrkDesc ?? "",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        spacer20,
        ListTile(
          onTap: () {
            if (table2?.ext == DoucumentType.PDF.name) {
              context.read<PdfDownloadCubit>().downloadPdf(
                  document: table2?.document ?? "",
                  filePath: table2?.wrkDoc ?? "");
            } else {
              context.pushNamed(AppPages.imageFullView, extra: table2?.wrkDoc);
            }
          },
          title: Text(
            table2?.document ?? "",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
          ),
          leading: table2?.ext == DoucumentType.PDF.name
              ? Icon(
                  Icons.picture_as_pdf,
                  color: AppColors.redColor,
                )
              : HelperClasses.cachedNetworkImage(
                  imageUrl: table2?.wrkDoc ?? "",
                  height: 30,
                  width: 30,
                ),
          subtitle: Text(
            'Attaced File',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey600),
          ),
        )
      ],
    );
  }

  Widget _buildRow(
    BuildContext context, {
    required String label,
    required String value,
    required bool isEnd,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDetail(
          context,
          label: label,
          isEnd: isEnd,
        ),
        spacer20,
        _buildDetailValue(value),
      ],
    );
  }

  Widget _buildDetail(
    BuildContext context, {
    required String label,
    required bool isEnd,
  }) {
    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: AppColors.grey600,
        height: 1.5,
      ),
    );
  }

  Widget _buildDetailValue(String value) {
    return Text(
      value,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

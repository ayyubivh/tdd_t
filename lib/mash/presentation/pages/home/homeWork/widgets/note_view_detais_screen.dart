import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/manager/cubit/pdf_download/pdf_download_cubit.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../../domain/entities/notes/notes_details_entity.dart';

class NoteViewDetailsScreen extends StatefulWidget {
  final String id;
  const NoteViewDetailsScreen({super.key, required this.id});

  @override
  NoteViewDetailsScreenState createState() => NoteViewDetailsScreenState();
}

class NoteViewDetailsScreenState extends State<NoteViewDetailsScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchNoteDetails();
  }

  void _fetchNoteDetails() {
    context
        .read<HomeWorkNotesBloc>()
        .add(HomeWorkNotesEvent.getNoteReportDetails(noteId: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: "Note Details"),
      body: MultiBlocListener(
        listeners: [
          BlocListener<PdfDownloadCubit, PdfDownloadState>(
            listenWhen: (previous, current) =>
                previous.pdfDownloadResponse.status != Status.COMPLETED &&
                current.pdfDownloadResponse.status == Status.COMPLETED,
            listener: (context, state) {
              GoRouter.of(context).pushNamed(AppPages.pdfViewScreen,
                  extra: state.pdfDownloadResponse.data);
            },
          ),
        ],
        child: BlocBuilder<HomeWorkNotesBloc, HomeWorkNotesState>(
          builder: (context, state) {
            final data = state.noteReportDetailResponse.data;
            if (state.noteReportDetailResponse.status == Status.LOADING ||
                data == null) {
              return const Loader();
            } else if (data.restable1?.isEmpty == true) {
              return HelperClasses.emptyDataWidget();
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle(context, 'Note Details'),
                    spacer20,
                    _buildNoteDescription(context, data),
                    spacer20,
                    _buildSectionTitle(context, 'Attachments'),
                    spacer20,
                    _buildAttachmentList(context, data),
                    const Spacer(),
                    _buildDownloadProgress(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(title, style: Theme.of(context).textTheme.labelLarge);
  }

  Widget _buildNoteDescription(BuildContext context, var data) {
    return Container(
      height: SizeUtility(context).height * 0.3,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: AppColors.primaryColor),
        color: AppColors.white,
      ),
      child: Text(data.restable1.first.wrkDesc ?? ""),
    );
  }

  Widget _buildAttachmentList(
      BuildContext context, NotesReportDetailsEntity data) {
    final attachment = data.resTable2?.first;
    prettyPrint(attachment?.ext);
    if (attachment?.ext == 'JPG') {
      return CachedNetworkImage(imageUrl: attachment?.wrkDoc ?? "");
    } else if (attachment?.ext == 'PDF') {
      return Expanded(
        child: ListView.builder(
          itemCount: data.resTable2?.length ?? 0,
          itemBuilder: (context, index) {
            final attachment = data.resTable2?[index];
            prettyPrint(attachment?.ext);

            if (attachment?.ext == 'JPG') {
              return CachedNetworkImage(
                imageUrl: attachment?.wrkDoc ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              );
            } else if (attachment?.ext == 'PDF') {
              return ListTile(
                onTap: () => context.read<PdfDownloadCubit>().downloadPdf(
                    filePath: attachment?.wrkDoc ?? "",
                    document: attachment?.document ?? ""),
                title: Text(
                  attachment?.document ?? "",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                ),
                subtitle: Text(
                  'Attached File',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyText,
                  ),
                ),
                leading: Icon(Icons.picture_as_pdf, color: AppColors.redColor),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildDownloadProgress() {
    return BlocBuilder<PdfDownloadCubit, PdfDownloadState>(
      builder: (context, state) {
        final progress = state.pdfDownloadProgressState;
        if (progress == 0) {
          return spacer4;
        } else {
          return Align(
            alignment: Alignment.center,
            child: Text(
              'Downloading... $progress%',
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400, height: 2),
              textAlign: TextAlign.center,
            ),
          );
        }
      },
    );
  }
}

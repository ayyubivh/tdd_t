import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/manager/cubit/pdf_download/pdf_download_cubit.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/oultined_container_widget.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';

import '../../../router/app_pages.dart';

class ProgressReport extends StatefulWidget {
  const ProgressReport({super.key});

  @override
  State<ProgressReport> createState() => _ProgressReportState();
}

class _ProgressReportState extends State<ProgressReport> {
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    BlocProvider.of<DrawerBloc>(context)
        .add(const DrawerEvent.getProgressTerms());
    super.initState();
  }

  @override
  void dispose() {
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Progress Report'),
      body: BlocListener<DrawerBloc, DrawerState>(
        listenWhen: (previous, current) =>
            previous.progressCardPdf.status != Status.COMPLETED &&
            current.progressCardPdf.status == Status.COMPLETED,
        listener: (context, state) {
          BlocProvider.of<PdfDownloadCubit>(context).downloadPdf(
              filePath: state.progressCardPdf.data ?? "",
              document: 'progress_pdf');
        },
        child: BlocListener<PdfDownloadCubit, PdfDownloadState>(
          listenWhen: (previous, current) =>
              previous.pdfDownloadResponse.status !=
              current.pdfDownloadResponse.status,
          listener: (context, state) {
            if (state.pdfDownloadResponse.status == Status.COMPLETED) {
              GoRouter.of(context).pushNamed(AppPages.pdfViewScreen,
                  extra: state.pdfDownloadResponse.data);
            } else if (state.pdfDownloadResponse.status == Status.ERROR) {
              HelperClasses.showSnackBar(msg: state.pdfDownloadResponse.error);
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(SizeConfig.width(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Select Term'),
                  _buildTermSelector(),
                  SizedBox(height: SizeConfig.height(24)),
                  _buildDownloadButton(),
                  SizedBox(height: SizeConfig.height(24)),
                  _buildReportList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.height(12)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: SizeConfig.textSize(20),
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  Widget _buildTermSelector() {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        final data = state.progressTermsResponse.data;
        return ValueListenableBuilder<int>(
          valueListenable: selectedIndexNotifier,
          builder: (context, selectedIndex, child) {
            return Wrap(
              spacing: SizeConfig.width(8),
              runSpacing: SizeConfig.height(8),
              children: List.generate(data?.length ?? 4, (index) {
                return data == null
                    ? CustomShimmerWidget(
                        height: SizeConfig.height(40),
                        width: SizeConfig.width(100),
                        borderRadius: 20)
                    : ChoiceChip(
                        label: Text(data[index].sectionName),
                        selected: selectedIndex == index,
                        onSelected: (selected) {
                          if (selected) {
                            selectedIndexNotifier.value = index;
                            BlocProvider.of<DrawerBloc>(context).add(
                                DrawerEvent.getProgressCard(
                                    termId: data[index].termId));
                          }
                        },
                        selectedColor: AppColors.primaryColor,
                        labelStyle: TextStyle(
                          color: selectedIndex == index
                              ? Colors.white
                              : AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      );
              }),
            );
          },
        );
      },
    );
  }

  Widget _buildDownloadButton() {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        return state.progressCardResponse.data?.isEmpty ?? true
            ? const SizedBox()
            : SizedBox(
                height: 50,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.download),
                  label: const Text('DOWNLOAD REPORT'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.width(24),
                        vertical: SizeConfig.height(16)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    final termId = BlocProvider.of<DrawerBloc>(context)
                        .state
                        .progressTermsResponse
                        .data?[selectedIndexNotifier.value]
                        .termId;

                    if (termId != null) {
                      BlocProvider.of<DrawerBloc>(context)
                          .add(DrawerEvent.getProgressCardPdf(termId: termId));
                    }
                  },
                ),
              );
      },
    );
  }

  Widget _buildReportList() {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        final compId =
            context.read<ProfileBloc>().state.getUserDetail?.data?.compId;
        return state.progressCardResponse.data?.isEmpty ?? true
            ? Center(child: HelperClasses.emptyDataWidget())
            : ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.progressCardResponse.data?.length ?? 0,
                separatorBuilder: (context, index) =>
                    SizedBox(height: SizeConfig.height(16)),
                itemBuilder: (context, index) {
                  final data = state.progressCardResponse.data;
                  return data == null
                      ? CustomShimmerWidget(
                          height: SizeConfig.height(200),
                          width: double.infinity,
                          borderRadius: 16)
                      : compId == '200002'
                          ? _mpsReportCard(data[index])
                          : _buildReportCard(data[index]);
                },
              );
      },
    );
  }

  Widget _mpsReportCard(ProgressCardEntity entity) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.width(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entity.subName ?? "",
              style: TextStyle(
                  fontSize: SizeConfig.textSize(18),
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            Divider(height: SizeConfig.height(24), thickness: 1),
            _buildInfoRow('Grade', entity.grade ?? ''),
            SizedBox(height: SizeConfig.height(8)),
            _buildInfoRow('Percentage', entity.percentage ?? ""),
            SizedBox(height: SizeConfig.height(16)),
            _buildTotalScore(entity.totalMarks ?? "0",
                obTainedMark: entity.obtainedMarks ?? "0"),
          ],
        ),
      ),
    );
  }

  Widget _buildReportCard(ProgressCardEntity entity) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.width(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entity.subName ?? "",
              style: TextStyle(
                  fontSize: SizeConfig.textSize(18),
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            Divider(height: SizeConfig.height(24), thickness: 1),
            ..._buildScoreRows(entity),
            SizedBox(height: SizeConfig.height(16)),
            _buildTotalScore(entity.totalSum ?? "0"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: SizeConfig.textSize(16))),
        Text(value,
            style: TextStyle(
                fontSize: SizeConfig.textSize(16),
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  List<Widget> _buildScoreRows(ProgressCardEntity entity) {
    String parseScore(String? score, int maxScore) {
      if (score == null || score.isEmpty) return "0/$maxScore";
      String parsedScore = score.replaceAll(RegExp(r'[^0-9.]'), '');
      double scoreValue = double.tryParse(parsedScore) ?? 0.0;
      bool isAb = score.toUpperCase().contains('AB');
      return "${scoreValue.toInt()}/$maxScore${isAb ? ' AB' : ''}";
    }

    Map<String, String> texts = {
      'Test Paper': parseScore(entity.testPaper, 10),
      'Notebook': parseScore(entity.notebook, 5),
      'Subject Enrichment': parseScore(entity.subjectEnrAct, 5),
      'Term': parseScore(entity.termMark, 80),
    };

    return texts.entries
        .map((entry) => _buildInfoRow(entry.key, entry.value))
        .toList();
  }

  Widget _buildTotalScore(String totalSum, {String? obTainedMark}) {
    final compId =
        context.read<ProfileBloc>().state.getUserDetail?.data?.compId;
    return Container(
      padding: EdgeInsets.all(SizeConfig.width(10)),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          compId == '200002'
              ? Text('Marks out of $totalSum',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(18),
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ))
              : Text('Marks out of 100',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(18),
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  )),
          OutlinedContainerWidget(
            height: SizeConfig.height(50),
            width: SizeConfig.width(50),
            child: Center(
              child: compId == '200002'
                  ? Text(
                      obTainedMark ?? "0",
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(20),
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      totalSum,
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(20),
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

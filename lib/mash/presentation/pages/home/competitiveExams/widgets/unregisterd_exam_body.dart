import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/comp_exam/competetive_exam_bloc.dart';
import 'package:mash/mash/presentation/manager/cubit/pdf_download/pdf_download_cubit.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/response_classify.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/helper_classes.dart';

class ExamDetailBody extends StatefulWidget {
  const ExamDetailBody({super.key});

  @override
  _ExamDetailBodyState createState() => _ExamDetailBodyState();
}

class _ExamDetailBodyState extends State<ExamDetailBody> {
  int _selectedOption = 1;
  String? rating = '1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<CompetetiveExamBloc, CompetetiveExamState>(
          builder: (context, state) {
        final data = state.compExamTobeRegisteredDetailsResponse.data;
        return BlocListener<PdfDownloadCubit, PdfDownloadState>(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: CachedNetworkImage(
                  imageUrl: data?.imgPro ?? "",
                  height: SizeUtility(context).height / 3.4,
                  width: SizeUtility(context).width,
                  fit: BoxFit.cover,
                ),
              ),
              spacer10,
              Align(
                  alignment: Alignment.center,
                  child: CommonSmallButton(
                    color: AppColors.primaryColor,
                    onPress: () {
                      BlocProvider.of<PdfDownloadCubit>(context).downloadPdf(
                          filePath: data?.referenceLink ?? "",
                          document: data?.documentName ?? "");
                    },
                    title: AppStrings.viewPdf,
                    prefixIcon: Icons.document_scanner_sharp,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text(
                  data?.examName ?? '',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  data?.descriptions ?? "",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    const Text(
                      "${AppStrings.appliedDate} : ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      data?.regEndDate ?? "",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    const Text(
                      '${AppStrings.compExamDate} : ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      data?.examDate ?? "",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: CommonSmallButton(
                      color: AppColors.barRed,
                      onPress: () async {
                        Uri url = Uri.parse(data?.examRegLink ?? "");
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      title: AppStrings.registerHere,
                      prefixIcon: Icons.app_registration)),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20, bottom: 0.0),
                child: Text(
                  AppStrings.rateNow,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              spacer10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: EmojiFeedback(
                  elementSize: 50,
                  animDuration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                  inactiveElementScale: .5,
                  onChanged: (value) {
                    setState(() {
                      rating = value.toString();
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text(
                  AppStrings.attendingExam,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                        print(_selectedOption.toString());
                      },
                    ),
                    const Text(
                      'Yes',
                      style: TextStyle(fontSize: 18),
                    ),
                    spacerWidth20,
                    Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    const Text(
                      'No',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              spacer30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: AnimatedSharedButton(
                    onTap: () {
                      BlocProvider.of<CompetetiveExamBloc>(context).add(
                          CompetetiveExamEvent
                              .submitCompetetiveExamTobeRegistered(
                                  examId: data?.examId ?? "",
                                  regStatus: _selectedOption == 2 ? '0' : '1',
                                  selfRate: rating ?? "1"));
                      context.pop();
                    },
                    title: Text(
                      AppStrings.submitCapital,
                      style: TextStyle(color: AppColors.white),
                    ),
                    isLoading: false),
              ),
              spacer30,
            ],
          ),
        );
      }),
    );
  }
}

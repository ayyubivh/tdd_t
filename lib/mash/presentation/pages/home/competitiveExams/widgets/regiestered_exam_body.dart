import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/comp_exam/competetive_exam_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import '../../../../../../core/response_classify.dart';
import '../../../../manager/cubit/pdf_download/pdf_download_cubit.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/helper_classes.dart';
import '../../../../utils/size_utility.dart';

class RegisteredExamDetailBody extends StatefulWidget {
  const RegisteredExamDetailBody({super.key});

  @override
  State<RegisteredExamDetailBody> createState() =>
      _RegisteredExamDetailBodyState();
}

class _RegisteredExamDetailBodyState extends State<RegisteredExamDetailBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<CompetetiveExamBloc, CompetetiveExamState>(
          builder: (context, state) {
        final data = state.compExamTobeRegisteredDetailsResponse.data;

        return data == null
            ? const SizedBox()
            : BlocListener<PdfDownloadCubit, PdfDownloadState>(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl: data.imgPro ?? "",
                      height: SizeUtility(context).height / 3.4,
                      width: SizeUtility(context).width,
                      fit: BoxFit.cover,
                    ),
                    spacer10,
                    Align(
                        alignment: Alignment.center,
                        child: CommonSmallButton(
                            color: AppColors.primaryColor,
                            onPress: () {
                              BlocProvider.of<PdfDownloadCubit>(context)
                                  .downloadPdf(
                                      filePath: data.referenceLink ?? "",
                                      document: data.documentName ?? "");
                            },
                            title: AppStrings.viewPdf,
                            prefixIcon: Icons.document_scanner_sharp)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Text(
                        data.examName ?? '',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
                      child: Text(
                        data.descriptions ?? "",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
                      child: Row(
                        children: [
                          const Text(
                            "${AppStrings.appliedDate} : ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            data.regEndDate ?? "",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
                      child: Row(
                        children: [
                          const Text(
                            '${AppStrings.compExamDate} : ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            data.examDate ?? "",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, top: 20, bottom: 0.0),
                      child: Text(
                        AppStrings.rating,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    spacer10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: EmojiFeedback(
                        elementSize: 50,
                        initialRating: data.selfAsmnt1 ?? 1,
                        animDuration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        inactiveElementScale: .5,
                      ),
                    ),
                    spacer30,
                  ],
                ),
              );
      }),
    );
  }
}

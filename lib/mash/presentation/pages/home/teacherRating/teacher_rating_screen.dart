import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/question_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../manager/bloc/teacher_bloc/teacher_bloc.dart';
import '../../../widgets/drawer_widget.dart';

class TeacherRatingScreen extends StatelessWidget {
  final TeacherRatingEntity entity;
  const TeacherRatingScreen({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.teacherRating),
      endDrawer: const DrawerWidget(),
      body: TeacherRatingBody(entity: entity),
    );
  }
}

class TeacherRatingBody extends StatefulWidget {
  final TeacherRatingEntity entity;
  const TeacherRatingBody({super.key, required this.entity});

  @override
  State<TeacherRatingBody> createState() => _TeacherRatingBodyState();
}

class _TeacherRatingBodyState extends State<TeacherRatingBody> {
  final ScrollController _scrollController = ScrollController();

  final TextEditingController _remarksController = TextEditingController();
  late TeacherBloc _teacherBloc;
  @override
  void initState() {
    _teacherBloc = TeacherBloc.get(context)
      ..add(const TeacherEvent.clearTeacherRatingList())
      ..add(const TeacherEvent.getRatingQuestions());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.height(160),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    /*child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              widget.entity.docName.toString(),
                            ),
                          )),
                    ),*/
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                          imageUrl: widget.entity.docName.toString(),
                          imageBuilder: (context, imageProvider) => Container(
                            height: 150.0,
                            decoration:
                            BoxDecoration(
                                image:
                                DecorationImage(
                                  fit: BoxFit.cover,
                                  alignment:  FractionalOffset.center,
                                  image: imageProvider,
                                )),
                          ),
                          placeholder: (context, url) => HelperClasses.personPlaceHolderImage(height: 140, width: 100),
                          errorWidget: (context, url, error) => HelperClasses.personPlaceHolderImage(height: 140, width: 100)                    ),
                    ),
                  ),
                  spacerWidth10,
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.entity.fullName.toString(),
                            style: TextStyle(
                                fontSize: SizeConfig.textSize(18),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            widget.entity.subjectName.toString(),
                            style: TextStyle(
                                fontSize: SizeConfig.textSize(15),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            widget.entity.primaryMobile.toString(),
                            style: TextStyle(
                                fontSize: SizeConfig.textSize(15),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            widget.entity.primaryEmail.toString(),
                            style: TextStyle(
                                fontSize: SizeConfig.textSize(15),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spacer10,
            Wrap(
              children: [
                Container(
                  // height: .length * SizeConfig.height(120),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 9,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: BlocConsumer<TeacherBloc, TeacherState>(
                    listener: (context, state) {
                      if (state.getTeacherRatingQuestions?.status ==
                          Status.ERROR) {
                        handleErrorUi(
                            context: context,
                            error: state.getTeacherRatingQuestions?.error);
                      } else if (state.postTeacherRating?.status ==
                          Status.ERROR) {
                        handleErrorUi(
                            context: context,
                            error: state.getTeacherRatingQuestions?.error);
                      } else if (state.postTeacherRating?.status ==
                          Status.COMPLETED) {
                        context.goNamed(AppPages.teacherRatingListScreen);
                      }
                    },
                    builder: (context, state) {
                      return state.getTeacherRatingQuestions?.status ==
                              Status.LOADING
                          ? const Center(
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : state.getTeacherRatingQuestions?.status !=
                                  Status.ERROR
                              ? ListView.builder(
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: state.getTeacherRatingQuestions
                                          ?.data?.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    return QuestionWidget(
                                      index: index + 1,
                                      rating: state.getTeacherRatingQuestions!
                                          .data![index],
                                    );
                                  })
                              : const SizedBox();
                    },
                  ),
                ),
              ],
            ),
            spacer20,
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.enterRemarkTitle,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            spacer10,
            CommonTextField(
              title: AppStrings.enterRemarks,
              lines: 3,
              controller: _remarksController,
            ),
            spacer30,
            BlocBuilder<TeacherBloc, TeacherState>(
              buildWhen: (previous, current) =>
                  previous.postTeacherRating?.status !=
                  current.postTeacherRating?.status,
              builder: (context, state) {
                return AnimatedSharedButton(
                    onTap: () {
                      var ratings = _teacherBloc
                          .state.getTeacherRatingQuestions!.data
                          ?.map((e) => RatedQuestion(
                              question: e.qnsId, rating: e.rating))
                          .toList();
                      _teacherBloc.add(TeacherEvent.postTeacherRating(
                          teacherId: widget.entity.teacherId.toString(),
                          subId: widget.entity.subjectId.toString(),
                          ratedQuestions: ratings ?? []));
                      // prettyPrint(ratingList.map((e) => e.toJson()).toString());
                    },
                    title: Text(
                      AppStrings.submitCapital,
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.w600),
                    ),
                    isLoading:
                        state.postTeacherRating?.status == Status.LOADING);
              },
            ),
            spacer40
          ],
        ),
      ),
    );
  }
}

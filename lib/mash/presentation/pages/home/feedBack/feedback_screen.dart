import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/home_bloc/home_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';

import '../../../../../core/response_classify.dart';

final ValueNotifier<int> rating = ValueNotifier(0);

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _moduleController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.feedbackForm),
      endDrawer: const DrawerWidget(),
      body: feedbackBody(context),
    );
  }

  feedbackBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spacer20,
            Align(
              alignment: Alignment.center,
              child: titleText(AppStrings.howSatisfied),
            ),
            spacer20,
            EmojiFeedback(
              animDuration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              inactiveElementScale: .5,
              onChanged: (value) {
                rating.value = value;
              },
            ),
            spacer30,
            titleText(AppStrings.howToImprove),
            CommonTextField(
              lines: 4,
              title: AppStrings.suggestFeedback,
              controller: _feedbackController,
            ),
            spacer30,
            BlocListener<HomeBloc, HomeState>(
              listener: (context, state) {
                if (state.postFeedback.status == Status.COMPLETED) {
                  HelperClasses.showSnackBar(
                      msg: 'feedback successfully submited');
                  context.pop();
                }
              },
              child: ValueListenableBuilder(
                  valueListenable: rating,
                  builder: (context, value, child) {
                    return AnimatedSharedButton(
                        onTap: () {
                          BlocProvider.of<HomeBloc>(context)
                              .add(HomeEvent.postFeedback(
                            module: _moduleController.text,
                            description: _feedbackController.text,
                            rating: value.toString(),
                          ));
                        },
                        title: Text(
                          AppStrings.submitCapital,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.white),
                        ),
                        isLoading: false);
                  }),
            )
          ],
        ),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void _openOptionsBottomSheet(BuildContext context,
      TextEditingController controller, List optionList, String sheetTitle) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16))),
          height: SizeConfig.height(optionList.length * 90).toDouble(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  sheetTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: optionList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(optionList[index]),
                          onTap: () {
                            controller.text = optionList[index];
                            Navigator.of(context).pop();
                          },
                        );
                      }))
            ],
          ),
        );
      },
    );
  }
}

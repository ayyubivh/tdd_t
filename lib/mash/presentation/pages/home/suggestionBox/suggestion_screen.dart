import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../widgets/drawer_widget.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  final ValueNotifier<bool> firstButtonState = ValueNotifier<bool>(false);
  final ValueNotifier<bool> secondButtonState = ValueNotifier<bool>(false);

  TextEditingController enquiryController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void selectButton(int buttonIndex) {
    if (buttonIndex == 1) {
      firstButtonState.value = true;
      secondButtonState.value = false;
    } else if (buttonIndex == 2) {
      firstButtonState.value = false;
      secondButtonState.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'SUGGESTION BOX'),
      endDrawer: const DrawerWidget(),
      body: suggestionBody(context),
    );
  }

  suggestionBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText('Enquiry Type'),
            buttons(),
            titleText('Enquiry To'),
            enquiryField(),
            titleText('Subject'),
            subjectField(),
            titleText('Description'),
            descriptionField(),
            spacer20,
            uploadFileButton(),
            spacer50,
            submitButton()
          ],
        ),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  buttons() {
    return SizedBox(
      height: SizeConfig.height(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: firstButtonState,
              builder: (context, isFirstButtonSelected, _) {
                return GestureDetector(
                  onTap: () {
                    selectButton(1);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: isFirstButtonSelected
                              ? AppColors.primaryColor
                              : Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      child: Center(
                          child: Text(
                        'COMPLAINT',
                        style: TextStyle(
                            color: isFirstButtonSelected
                                ? AppColors.white
                                : AppColors.black),
                      ))),
                );
              },
            ),
          ),
          const VerticalDivider(
            width: 2,
          ),
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: secondButtonState,
              builder: (context, isSecondButtonSelected, _) {
                return GestureDetector(
                  onTap: () {
                    selectButton(2);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: isSecondButtonSelected
                              ? AppColors.primaryColor
                              : Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: Center(
                          child: Text('SUGGESTION',
                              style: TextStyle(
                                  color: isSecondButtonSelected
                                      ? AppColors.white
                                      : AppColors.black)))),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  enquiryField() {
    return SizedBox(
      height: SizeConfig.height(60),
      child: CommonTextField(
        controller: enquiryController,
        title: 'To',
      ),
    );
  }

  subjectField() {
    return SizedBox(
      height: SizeConfig.height(60),
      child: CommonTextField(
        controller: subjectController,
        title: 'Enter Subject',
        lines: 3,
      ),
    );
  }

  descriptionField() {
    return SizedBox(
      height: SizeConfig.height(60),
      child: CommonTextField(
        controller: descriptionController,
        title: 'Enter Description',
        lines: 3,
      ),
    );
  }

  uploadFileButton() {
    return Container(
      height: SizeConfig.height(50),
      width: SizeConfig.width(150),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(36),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload),
            spacerWidth10,
            Text('Upload File')
          ],
        ),
      ),
    );
  }

  submitButton() {
    return AnimatedSharedButton(
        onTap: () {},
        title: Text(
          'SUBMIT',
          style: TextStyle(color: AppColors.white),
        ),
        isLoading: false);
  }
}

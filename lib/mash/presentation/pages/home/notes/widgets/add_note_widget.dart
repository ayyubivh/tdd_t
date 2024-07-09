import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../utils/size_utility.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: AppStrings.createNote,
      ),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.note,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              spacer10,
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Note Here',
                  hintStyle: TextStyle(color: AppColors.greyText),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: AppColors.grey200,
                  )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                maxLines: 12,
              ),
              spacer20,
              Text(
                AppStrings.documentUploadText,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w400,
                ),
              ),
              spacer20,
              CustomIconButton(
                width: SizeUtility(context).width / 2.5,
                icon: AppAssets.uploadIcon,
                name: AppStrings.uploadFile,
                onTap: () {},
              ),
              SizedBox(height: SizeUtility(context).height / 5),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: AppColors.purple200,
                  ),
                  onPressed: () {},
                  child: const Text('Add Note'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

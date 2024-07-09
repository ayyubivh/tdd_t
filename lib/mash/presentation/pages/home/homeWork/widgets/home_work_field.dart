import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/size_config.dart';

class CustomHomeWorkField extends StatelessWidget {
  final String title;
  final String name;
  final VoidCallback onTap;
  const CustomHomeWorkField(
      {super.key,
      required this.name,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: SizeConfig.textSize(16),
            fontWeight: FontWeight.bold,
          ),
        ),
        spacer10,
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerRight,
            height: SizeConfig.height(45),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey200,
              ),
              borderRadius: BorderRadius.circular(9),
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.grey200,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.blackOverlay,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

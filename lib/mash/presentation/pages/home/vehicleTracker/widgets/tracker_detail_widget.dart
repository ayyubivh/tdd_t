

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class TrackerDetailWidget extends StatelessWidget {
  const TrackerDetailWidget({super.key,required this.detail,required this.descTitle});

  final String detail;
  final String descTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.purpleLight.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(detail,style: TextStyle(color: AppColors.primaryColor,fontSize: 22,fontWeight: FontWeight.w600),),
          Text(descTitle,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

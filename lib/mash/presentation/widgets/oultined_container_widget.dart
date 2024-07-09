import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import '../utils/app_colors.dart';

class OutlinedContainerWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double? padding;
  const OutlinedContainerWidget(
      {super.key,
      required this.child,
      required this.height,
      required this.width,
      this.padding = (12)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(SizeConfig.height(padding!)),
      decoration: BoxDecoration(
        color: AppColors.greyClr200,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: AppColors.greyClr200,
// border: Border.all(
// color: AppColors.white,
// width: 2,
// ),
// ),

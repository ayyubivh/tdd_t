import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? marginVertical;
  const CustomShimmerWidget({
    super.key,
    required this.height,
    this.width,
    this.borderRadius,
    this.marginVertical,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.greyClr300,
      highlightColor: AppColors.greyClr100,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        margin: EdgeInsets.symmetric(
            vertical: 4, horizontal: marginVertical ?? 0.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
      ),
    );
  }
}

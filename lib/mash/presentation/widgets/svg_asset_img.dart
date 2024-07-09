import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

assetFromSvg(String assetName, {Color? color, double? height, double? width}) {
  final Widget svg = SvgPicture.asset(
    assetName,
    colorFilter:
        ColorFilter.mode(color ?? AppColors.primaryColor, BlendMode.srcIn),
    width: width,
    height: height,
  );
  return svg;
}

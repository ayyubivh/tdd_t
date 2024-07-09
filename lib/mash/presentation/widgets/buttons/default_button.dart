import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color,
    this.textColor,
    this.elevation = 0,
    this.isBorder = false,
  });

  final String title;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  final double? elevation;
  final bool? isBorder;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shape: StadiumBorder(
            side: isBorder == false
                ? BorderSide.none
                : BorderSide(
                    color: textColor ?? AppColors.white,
                    width: 0.2,
                  )),
        backgroundColor: color ?? AppColors.white,
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

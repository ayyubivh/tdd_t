import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.color,
      required this.isLoading,
      required this.textColor,
      required this.isOutlined, required this.progressColor});

  final VoidCallback onPress;
  final String title;
  final Color color;
  final Color textColor;
  final Color progressColor;
  final bool isLoading;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: isOutlined
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 2, color: AppColors.greyClr100))
                : null,
            elevation: 5,
            backgroundColor: color),
        onPressed: onPress,
        child: isLoading
            ? SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: progressColor,
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  title,
                  style: TextStyle(color: textColor),
                ),
              ));
  }
}

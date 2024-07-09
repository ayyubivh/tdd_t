import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: AppColors.greyClr100,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.6),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: CircularProgressIndicator(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
